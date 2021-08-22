library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity counter is
     port(      clk : in  std_logic;
	         en : in  std_logic;
	          R : in  std_logic;
	          ce_out: out std_logic;
	       d_out : out std_logic_vector(6 downto 0));
	            
end counter;

architecture archi of counter is
------------------------------------------------		  
signal tmp : std_logic_vector(6 downto 0):="0000000";
signal example : std_logic;
------------------------------------------------
		  
 begin
 process (clk)
      begin
        if (R ='1') then
            tmp <= (others => '0');
        elsif (clk'event and clk='1') then
		    if  (en ='1') then
               tmp <= tmp + 1;
            end if;				
		end if;
	if (tmp > "0001111") then
		example <= '1';
	else example <= '0';
		end if;
		end process;
 ------------------------------------------------
 d_out <= tmp;
 ce_out <= example;
 ------------------------------------------------
 end archi;