libeary IEEE;
use IEEE.STD_LOGIC_1164.ALL:
use IEEE.NUMERIC_STD.ALL;
entity Linpei_Duan_wrapper is
Port (enable : in std_logic;
		reset  : in std_logic;
		clk    : in std_logic;
		HEXO   : out std_logic_vector (6 downto 0));
end Linpei_Duan_wrapper;

Architecture behave of Linpei_Duan_wrapper is 
Component Linpei_Duan_clock_divider
Port (enable : in std_logic;
		reset  : in std_logic;
		clk    : in std_logic;
		en_out : out std_logic);
end component;
Component Linpei_Duan_counter
Port	(enable		: in std_logic;
		reset			: in std_logic;
		clk			: in std_logic;
		count			:out std_logic_vector(2 downto 0));
end component;
Component Linpei_Duan_decoder
Port	(	code 			: in std_logic_vector(3 downto 0);
				segments_out	: out std_logic_vector(6 downto 0));
		end component;
signal enable1 : std_logic;
signal counterout : std_logic_vector(2 downto 0);
signal codein :std_logic_vector(3 downto 0);
begin
m1: Linpei_Duan_clock_divider PORT MAP (enable, reset, clk, enable1);
m2: Linpei_Duan_counter PORT MAP (enable1, reset, clk, counterout);
codein<='0'&counterout;
m3: Linpei_Duan_decoder PORT MAP(codein, HEXO);
end behave;