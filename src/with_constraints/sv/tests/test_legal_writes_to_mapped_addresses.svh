// Copyright 2018-2020 Tudor Timisescu (verificationgentleman.com)
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


class test_legal_writes_to_mapped_addresses extends test_legal_writes;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction


  // Could be moved to the base class in a real project
  protected virtual function void set_factory_overrides();
    sequence_item::type_id::set_type_override(constrained_sequence_item::get_type());
  endfunction


  protected virtual function void add_constraints();
    only_mapped_addresses_constraint c = new();
    super.add_constraints();
    constrained_sequence_item::add_global_constraint(c);
  endfunction


  `uvm_component_utils(test_legal_writes_to_mapped_addresses)

endclass
