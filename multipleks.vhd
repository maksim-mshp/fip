library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity multipleks is
port(
D0 : in  std_logic;
D1 : in  std_logic;
S0 : in  std_logic;
DOUT: out std_logic
);          
end multipleks;

architecture archi of multipleks is
------------------------------------------------		  
-- signal tmp : std_logic;
------------------------------------------------
		  
 begin
 process (D0, D1, S0)
      begin
        case S0 is
			when '0' => DOUT <= D0;
			when '1' => DOUT <= D1;
			when others => null;
		end case;
end process;
 ------------------------------------------------
 -- d_out <= tmp;
 ------------------------------------------------
 end archi;