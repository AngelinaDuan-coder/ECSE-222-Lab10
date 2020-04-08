-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "04/08/2020 13:31:48"
                                                            
-- Vhdl Test Bench template for design  :  Linpei_Duan_wrapper
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Linpei_Duan_wrapper_vhd_tst IS
END Linpei_Duan_wrapper_vhd_tst;
ARCHITECTURE Linpei_Duan_wrapper_arch OF Linpei_Duan_wrapper_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL HEXO : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
COMPONENT Linpei_Duan_wrapper
	PORT (
	clk : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	HEXO : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Linpei_Duan_wrapper
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	enable => enable,
	HEXO => HEXO,
	reset => reset
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
      clk<='1';
			wait for 50 ms;
			clk<='0';
			wait for 50 ms;  -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        reset<='0';
		enable<='0';
		wait for 100 ms;-- code executes for every event on sensitivity list  
		
		reset<='0';
		enable<='0';
		wait for 100 ms;
		
		reset<='1';
		enable<='1';
		wait for 100 ms;
		
		wait; -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END Linpei_Duan_wrapper_arch;
