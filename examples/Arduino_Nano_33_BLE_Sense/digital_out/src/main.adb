
with Arduino_Nano_33_Ble_Sense.IOs;
with Arduino_Nano_33_Ble_Sense.Time;

procedure Main is
begin
   --  Loop forever
   loop
      --  Turn on the LED connected to pin 13
      Arduino_Nano_33_Ble_Sense.IOs.DigitalWrite (13, True);

      --  Wait 500 milliseconds
      Arduino_Nano_33_Ble_Sense.Time.Delay_Ms (500);

      --  Turn off the LED connected to pin 13
      Arduino_Nano_33_Ble_Sense.IOs.DigitalWrite (13, False);

      --  Wait 500 milliseconds
      Arduino_Nano_33_Ble_Sense.Time.Delay_Ms (500);
   end loop;
end Main;
