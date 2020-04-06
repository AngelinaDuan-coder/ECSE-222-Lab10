library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity Linpei_Duan_clock_divider is
Port (enable : in std_logic;
		reset  : in std_logic;
		clk    : in std_logic;
		en_out : out std_logic);
end Linpei_Duan_clock_divider;

Architecture behavioral of Linpei_Duan_clock_divider is
signal count : integer:= 250000000;--10Hz,large count value
signal tmp :std_logic;
begin
Process(clk,reset)
begin
	if(reset='1') then
		count<=250000000;
		tmp<='0';
	elsif(RISING_EDGE(clk)) then
		if enable = '1' then
			count <=count-1;
		else
			count <=count;
		end if;
	end if;
	if (count = 0) then
		tmp<='1';
		count <= 250000000;
	end if;
	end Process;
	en_out <= tmp;
end behavioral;

