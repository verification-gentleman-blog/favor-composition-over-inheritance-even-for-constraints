// Copyright 2018 Tudor Timisescu (verificationgentleman.com)
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.


class sequence_item_stream extends uvm_sequence #(sequence_item);

  function new(string name = get_type_name());
    super.new(name);
  endfunction


  virtual task pre_body();
    uvm_phase phase = get_starting_phase();
    if (phase != null)
      phase.raise_objection(this);
  endtask


  virtual task body();
    repeat (10)
      do_item();
  endtask


  local task do_item();
    sequence_item item;
    `uvm_create(item)
    if (!item.randomize())
      `uvm_fatal("RNDERR", "Randomization error")
    item.print();
    #1;
  endtask


  virtual task post_body();
    uvm_phase phase = get_starting_phase();
    if (phase != null)
      phase.drop_objection(this);
  endtask


  `uvm_object_utils(sequence_item_stream)

endclass
