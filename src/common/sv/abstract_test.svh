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


virtual class abstract_test extends uvm_test;

  uvm_sequencer #(sequence_item) seqr;


  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction


  virtual function void build_phase(uvm_phase phase);
    seqr = new("seqr", this);
  endfunction


  virtual function void start_of_simulation_phase(uvm_phase phase);
    set_default_sequences();
    set_factory_overrides();
    add_constraints();
  endfunction


  protected pure virtual function void set_default_sequences();

  protected virtual function void set_factory_overrides();
  endfunction

  protected virtual function void add_constraints();
  endfunction

endclass
