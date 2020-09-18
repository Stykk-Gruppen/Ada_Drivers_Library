--  This package was generated by the Ada_Drivers_Library project wizard script
package ADL_Config is
   Board                          : constant String  := "Arduino_Nano_33_BLE_Sense"; -- From command line
   Architecture                   : constant String  := "ARM";               -- From board definition
   Vendor                         : constant String  := "Nordic";            -- From board definition
   Device_Family                  : constant String  := "nRF52";             -- From board definition
   Device_Name                    : constant String  := "nRF52840xxAA";      -- From board definition
   CPU_Core                       : constant String  := "ARM Cortex-M4F";    -- From mcu definition
   Number_Of_Interrupts           : constant         := 14;                  -- From MCU definition
   Has_ZFP_Runtime                : constant String  := "True";              -- From board definition
   Has_Ravenscar_SFP_Runtime      : constant String  := "False";             -- From board definition
   Has_Ravenscar_Full_Runtime     : constant String  := "True";              -- From board definition
   Runtime_Profile                : constant String  := "ravenscar-full";    -- From command line
   Runtime_Name_Suffix            : constant String  := "nrf52840";          -- From board definition
   Runtime_Name                   : constant String  := "ravenscar-full-nrf52840"; -- From default value
   Use_Startup_Gen                : constant Boolean := False;               -- From command line
   Boot_Memory                    : constant String  := "flash";             -- From default value
   Max_Path_Length                : constant         := 1024;                -- From default value
   Max_Mount_Points               : constant         := 2;                   -- From default value
   Max_Mount_Name_Length          : constant         := 128;                 -- From default value
end ADL_Config;
