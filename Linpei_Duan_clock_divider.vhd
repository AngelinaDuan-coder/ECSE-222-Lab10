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
component Linpei_Duan_down_counter is
Port	(enable		: in std_logic;
		reset			: in std_logic;
		clk			: in std_logic;
		count			:out std_logic_vector(3 downto 0));
end component;

signal D : std_logic_vector(3 downto 0);
 begin
 m1: Linpei_Duan_down_counter PORT MAP (enable, reset, clk, D);
 en_out<=NOT(D(0) OR D(1) OR D(2) OR D(3));
 end behavioral;
