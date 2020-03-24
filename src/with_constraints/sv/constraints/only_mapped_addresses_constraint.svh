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


class only_mapped_addresses_constraint extends abstract_constraint #(sequence_item);

  // Name is not important
  constraint c {
    object.address inside {
        [CODE_START_ADDR:CODE_END_ADDR],
        [SRAM_START_ADDR:SRAM_END_ADDR],
        [PERIPHERAL_START_ADDR:PERIPHERAL_END_ADDR] };
  }

endclass
