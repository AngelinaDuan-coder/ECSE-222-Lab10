library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all;
entity Linpei_Duan_down_counter is
Port	(enable		: in std_logic;
		reset			: in std_logic;
		clk			: in std_logic;
		count			:out std_logic_vector(3 downto 0));
end Linpei_Duan_down_counter;

Architecture behavioral of Linpei_Duan_down_counter is
signal sigcount : std_logic_vector(3 downto 0);
begin
	Process(clk,enable,reset)
	begin
		if (reset = '0') then
			sigcount <= "1001";
		elsif (RISING_EDGE(clk)) then
			if (enable = '1') then
				if(sigcount="0000")then
					sigcount<="1001";
				else
					sigcount<= std_logic_vector(unsigned(sigcount)-1);
				end if;
			end if;
		end if;
	end Process;
count<=sigcount;
end behavioral;