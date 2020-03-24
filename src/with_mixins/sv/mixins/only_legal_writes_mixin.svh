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


class only_legal_writes_mixin #(type T = sequence_item) extends T;

  constraint only_writes_to_aligned_addresses {
    direction == WRITE;
    address[1:0] == 0;
  }


  function new(string name = get_type_name());
    super.new(name);
  endfunction


  `uvm_object_param_utils(only_legal_writes_mixin #(T))


  virtual function string get_name();
    return $sformatf("only_legal_writes_mixin #(%s)", super.get_type_name());
  endfunction

endclass
