library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity switch is
port(
D1 : in  std_logic;
D2 : in  std_logic;
D3 : in  std_logic;
D4 : in  std_logic;
clk : in  std_logic;
DOUT: out std_logic
);          
end switch;

architecture archi of switch is
------------------------------------------------		  
-- signal tmp : std_logic;
signal tmp : std_logic_vector(8 downto 0):="000000000";
signal DR1 : std_logic;
signal DR2 : std_logic;
signal DR3 : std_logic;
signal DR4 : std_logic;
------------------------------------------------
		  
 begin
 process (clk)
      begin
      if (clk'event and clk='1') then
        case tmp is
			when "000000000" =>
				DR1 <= '1';
				DR2 <= '0';
				DR3 <= '0';
				DR4 <= '0';
			when "001110000" =>
				DR1 <= '0';
				DR2 <= '1';
				DR3 <= '0';
				DR4 <= '0';
			when "011100000" =>
				DR1 <= '0';
				DR2 <= '0';
				DR3 <= '1';
				DR4 <= '0';
			when "101010000" =>
				DR1 <= '0';
				DR2 <= '0';
				DR3 <= '0';
				DR4 <= '1';
			when others => null;
		end case;
	end if;
end process;
process(clk)
	begin
		if (clk'event and clk='1') then
			if (tmp < "111000001") then
				if (DR1 = '1') then
					DOUT <= D1;
				elsif (DR2 = '1') then
					DOUT <= D2;
				elsif (DR3 = '1') then
					DOUT <= D3;
				elsif (DR4 = '1') then
					DOUT <= D4;
				end if;
			else tmp <= "000000000";
			end if;
		end if;
end process;
 ------------------------------------------------
 -- d_out <= tmp;
 ------------------------------------------------
 end archi;