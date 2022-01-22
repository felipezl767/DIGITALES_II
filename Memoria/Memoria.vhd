library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;


entity Memoria is
	
	port(clock, reset, writen		: in std_logic	;
			address, data_in 			: in std_logic_vector(7 downto 0);
			sw: in STD_LOGIC_VECTOR(2 downto 0);
			pb: in STD_LOGIC;
			hex0: out STD_LOGIC_VECTOR(0 to 7);
			port_in_00, port_in_01, port_in_02, port_in_03, port_in_04, port_in_05,
			port_in_06, port_in_07, port_in_08, port_in_09, port_in_10, port_in_11,
			port_in_12, port_in_13, port_in_14, port_in_15 	: in std_logic_vector(7 downto 0);
			port_out_00, port_out_01, port_out_02, port_out_03, port_out_04, port_out_05,
			port_out_06, port_out_07, port_out_08, port_out_09, port_out_10, port_out_11,
			port_out_12, port_out_13, port_out_14, port_out_15 	: out std_logic_vector(7 downto 0));
	
end entity;

architecture memoriaarch of Memoria is 

	component rom_128x8_sync
		port(clock 		: in std_logic;
				address 	: in std_logic_vector(7 downto 0);
				data_out	: out std_logic_vector(7 downto 0));
	end component;
	
	component rw_96x8_sync 
		port(clock, writen 	: in std_logic;
				address, data_in 	: in std_logic_vector(7 downto 0);
				data_out		: out std_logic_vector(7 downto 0));
	end component;
	
	component Entradas 
		port(clock, reset, writen 	: in std_logic;
				address, data_in : in std_logic_vector(7 downto 0);
				port_out_00, port_out_01,port_out_02,port_out_03,port_out_04,port_out_05,port_out_06,
				port_out_07,port_out_08,port_out_09,port_out_10,port_out_11,port_out_12,port_out_13,
				port_out_14,port_out_15		: out std_logic_vector(7 downto 0));
	end component;
	
	component sevensegment
		port(sw: IN STD_LOGIC_VECTOR(2 downto 0);
				pb: IN STD_LOGIC;
				hex0: OUT STD_LOGIC_VECTOR(0 to 7));	
	end component;
	
	signal rom_data_out, rw_data_out,data_out 	: std_logic_vector(7 downto 0);
	
	begin 
	
	rom : rom_128x8_sync port map (clock, address, rom_data_out);
	ram : rw_96x8_sync port map (clock, writen, address, data_in, rw_data_out);
	port_out : Entradas port map (clock, reset, writen, address, data_in, port_out_00,port_out_01,
											port_out_02,port_out_03,port_out_04,port_out_05,port_out_06,
											port_out_07,port_out_08,port_out_09,port_out_10,port_out_11,
											port_out_12,port_out_13,port_out_14,port_out_15);
   sevenSeg : sevensegment port map (sw,pb,hex0);												
										
											
	MUX1 : process (address, rom_data_out, rw_data_out, port_in_00, port_in_01, port_in_02,
							port_in_03, port_in_04, port_in_05, port_in_06, port_in_07, port_in_08,
							port_in_09, port_in_10, port_in_11, port_in_12, port_in_13, port_in_14,
							port_in_15)
							
	begin
		if((to_integer(unsigned(address)) >= 0) and (to_integer(unsigned(address)) <= 127)) then
			data_out <= rom_data_out;
			elsif((to_integer(unsigned(address)) >= 128) and (to_integer(unsigned(address)) <= 223)) then
				data_out <= rw_data_out;
			elsif(address = x"F0") then 	data_out <= port_in_00;
			elsif(address = x"F1") then 	data_out <= port_in_01;
			elsif(address = x"F2") then 	data_out <= port_in_02;
			elsif(address = x"F3") then 	data_out <= port_in_03;
			elsif(address = x"F4") then 	data_out <= port_in_04;
			elsif(address = x"F5") then 	data_out <= port_in_05;
			elsif(address = x"F6") then 	data_out <= port_in_06;
			elsif(address = x"F7") then 	data_out <= port_in_07;
			elsif(address = x"F8") then 	data_out <= port_in_08;
			elsif(address = x"F9") then 	data_out <= port_in_09;
			elsif(address = x"F10") then 	data_out <= port_in_10;
			elsif(address = x"F11") then 	data_out <= port_in_11;
			elsif(address = x"F12") then 	data_out <= port_in_12;
			elsif(address = x"F13") then 	data_out <= port_in_13;
			elsif(address = x"F14") then 	data_out <= port_in_14;
			elsif(address = x"F15") then 	data_out <= port_in_15;
			else data_out <= x"00";
		
		end if;
	end process;
end architecture;