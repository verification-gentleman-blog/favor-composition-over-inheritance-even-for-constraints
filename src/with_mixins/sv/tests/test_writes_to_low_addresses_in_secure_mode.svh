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


class test_writes_to_low_addresses_in_secure_mode extends test_all_random;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction


  protected virtual function void set_factory_overrides();
    sequence_item::type_id::set_type_override(
        only_writes_mixin #(only_low_addresses_mixin #(only_secure_accesses_mixin #(sequence_item)))
            ::get_type());
  endfunction


  `uvm_component_utils(test_writes_to_low_addresses_in_secure_mode)

endclass
