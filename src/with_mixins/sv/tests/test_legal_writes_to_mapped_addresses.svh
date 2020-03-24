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


class test_legal_writes_to_mapped_addresses extends test_all_random;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction


  protected virtual function void set_factory_overrides();
    sequence_item::type_id::set_type_override(
        only_legal_writes_mixin #(only_mapped_addresses_mixin #(sequence_item))::get_type());
  endfunction


  `uvm_component_utils(test_legal_writes_to_mapped_addresses)

endclass
