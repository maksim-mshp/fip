library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std;
use ieee.std_logic_arith.all;

entity data2 is
port(
clk: in std_logic;
d_out: out std_logic
);
end data2;

architecture archi of data2 is
------------------------------------------------		  
signal example : std_logic_vector(7 downto 0):= "01111101"; 
signal tmp1 : std_logic;
signal tmp : std_logic_vector(3 downto 0):= "0000";
------------------------------------------------
		  
 begin
 process (clk)
      begin
        if (clk'event and clk='1') then
               tmp <= tmp + 1;			
		end if;
 end process;
 ------------------------------------------------
--tmp1 <= CONV_INTEGER(tmp);
--d_out <= tmp1;
d_out <= example(CONV_INTEGER(tmp));
 ------------------------------------------------
 end archi;