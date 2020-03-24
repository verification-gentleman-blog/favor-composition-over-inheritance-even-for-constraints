// Copyright 2020 Tudor Timisescu (verificationgentleman.com)
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


<'
extend global {

  const !CODE_START_ADDR: uint(bits: 32) = 0x0000_0000;
  const !CODE_END_ADDR: uint(bits: 32) = 0x0fff_ffff;

  const !SRAM_START_ADDR: uint(bits: 32) = 0x2000_0000;
  const !SRAM_END_ADDR: uint(bits: 32) = 0x2fff_ffff;

  const !PERIPHERAL_START_ADDR: uint(bits: 32) = 0x4000_0000;
  const !PERIPHERAL_END_ADDR: uint(bits: 32) = 0x5fff_ffff;

};
'>
