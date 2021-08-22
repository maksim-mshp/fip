library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity signal1 is
port(
DIN : in  std_logic;
CE : in  std_logic;
DOUT: out std_logic
);          
end signal1;

architecture archi of signal1 is
------------------------------------------------		  
-- signal tmp : std_logic;
------------------------------------------------
		  
 begin
 process (DIN, CE)
      begin
        if (CE = '1') then
			DOUT <= DIN;
		end if;
end process;
 ------------------------------------------------
 -- d_out <= tmp;
 ------------------------------------------------
 end archi;