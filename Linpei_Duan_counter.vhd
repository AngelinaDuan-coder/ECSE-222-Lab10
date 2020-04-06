library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity Linpei_Duan_counter is
Port	(enable		: in std_logic;
		reset			: in std_logic;
		clk			: in std_logic;
		count			:out std_logic_vector(2 downto 0));
end Linpei_Duan_counter;

Architecture behavioral of Linpei_Duan_counter is
signal sigcount : std_logic_vector(2 downto 0);
begin
	Process(reset,clk)
	begin
		if reset = '0' then
			sigcount <= "000";
		elsif (clk'EVENT AND clk='1') then
			if enable = '1' then
				sigcount<=sigcount+1;
			else
				sigcount<=sigcount;
			end if;
		end if;
	end Process;
count<=sigcount;
end behavioral;
