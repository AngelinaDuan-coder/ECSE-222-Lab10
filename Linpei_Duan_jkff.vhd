library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity Linpei_Duan_jkff is
	Port (clk		:in std_logic;
			J			:in std_logic;
			K			:in std_logic;
			Q			:out std_logic);
end Linpei_Duan_jkff; 
ARCHITECTURE behavioral of Linpei_Duan_jkff is
signal sig: std_logic;
begin
Process(clk, J, K)
Begin
	if (J = '1' && K = '0') then
		sig <= 1;
	elsif (J = '0' && K = '1') then
		sig <= 0;
	elsif (RISING_EDGE(clk)) then
		if J = '0' then
			sig <= sig;
		elsif J = '1' then
			sig <= not(sig);
		end if;
	end if;
end PROCESS;
Q <= sig;
end behavioral;
	
	