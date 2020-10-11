------------------------------------------------------------------------------
--                                                                          --
--                    Copyright (C) 2017-2020, AdaCore                      --
--                                                                          --
--  Redistribution and use in source and binary forms, with or without      --
--  modification, are permitted provided that the following conditions are  --
--  met:                                                                    --
--     1. Redistributions of source code must retain the above copyright    --
--        notice, this list of conditions and the following disclaimer.     --
--     2. Redistributions in binary form must reproduce the above copyright --
--        notice, this list of conditions and the following disclaimer in   --
--        the documentation and/or other materials provided with the        --
--        distribution.                                                     --
--     3. Neither the name of the copyright holder nor the names of its     --
--        contributors may be used to endorse or promote products derived   --
--        from this software without specific prior written permission.     --
--                                                                          --
--   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS    --
--   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT      --
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR  --
--   A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT   --
--   HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, --
--   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT       --
--   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,  --
--   DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY  --
--   THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT    --
--   (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE  --
--   OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.   --
--                                                                          --
------------------------------------------------------------------------------

with nRF.Device; use nRF.Device;
with nRF.GPIO2; use nRF.GPIO2;

package Arduino_Nano_33_Ble_Sense.IOs2 is

   type Pin_Id is range 0 .. 31;

   type IO_Features is (Digital, Analog);

   function Supports (Pin : Pin_Id; Feature : IO_Features) return Boolean is
     (case Feature is
         when Digital => (case Pin is
                             when 0 .. 31 => True,
                             when others           => False),
         when Analog  => (case Pin is
                             when 3 .. 4 | 28 .. 31 => True,
                             when others            => False));

   procedure DigitalWrite (Pin : Pin_Id; Value : Boolean)
     with Pre => Supports (Pin, Digital);

   function DigitalRead (Pin : Pin_Id) return Boolean
     with Pre => Supports (Pin, Digital);

   type Analog_Value is range 0 .. 4095;

   procedure Set_Analog_Period_Us (Period : Natural);
   --  Set the period (in microseconds) of the PWM signal for all analog output
   --  pins.

   procedure AnalogWrite (Pin : Pin_Id; Value : Analog_Value)
     with Pre => Supports (Pin, Analog);

   function AnalogRead (Pin : Pin_Id) return Analog_Value
     with Pre => Supports (Pin, Analog);
   --  Read the voltagle applied to the pin. 0 means 0V 1023 means 3.3V

private

   --  Mapping between pin id and GPIO_Points

   Points : array (Pin_Id) of GPIO_Point :=
     (0  => P32,
      1  => P33,
      2  => P34,
      3  => P35,
      4  => P36,
      5  => P37,
      6  => P38,
      7  => P39,
      8  => P40,
      9  => P41,
      10 => P42,
      11 => P43,
      12 => P44,
      13 => P45,
      14 => P46,
      15 => P47,
      16 => P48,
      17 => P49,
      18 => P50,
      19 => P51,
      20 => P52,
      21 => P53,
      22 => P54,
      23 => P55,
      24 => P56,
      25 => P57,
      26 => P58,
      27 => P59,
      28 => P60,
      29 => P61,
      30 => P62,
      31 => P63
     );

end Arduino_Nano_33_Ble_Sense.IOs2;
