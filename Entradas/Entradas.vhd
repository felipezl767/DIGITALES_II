library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Entradas is 

port(clock, reset, writen 	: in std_logic;
		address, data_in : in std_logic_vector(7 downto 0);
		
		port_out_00, port_out_01,port_out_02,port_out_03,port_out_04,port_out_05,port_out_06,
		port_out_07,port_out_08,port_out_09,port_out_10,port_out_11,port_out_12,port_out_13,
		port_out_14,port_out_15		: out std_logic_vector(7 downto 0));
		
end Entradas;

architecture dataflow of entradas is

begin

--port_out_00 description : ADDRESS x"E0"
	U3: process (clock,reset)
	begin 
		if(reset = '0')then
			port_out_00 <= x"00";
		elsif(clock'event and clock='1') then
			if(address = x"E0" and writen = '1') then
				port_out_00 <= data_in;
			end if;
		end if;
	end process;
	
--port_out_01 description : ADDRESS x"E1"
	U4: process (clock,reset)
	begin 
		if(reset = '0')then
			port_out_01 <= x"00";
		elsif(clock'event and clock='1') then
			if(address = x"E1" and writen = '1') then
				port_out_01 <= data_in;
			end if;
		end if;
	end process;
--port_out_02 description : ADDRESS x"E2"
	U5: process (clock,reset)
	begin 
		if(reset = '0')then
			port_out_02 <= x"00";
		elsif(clock'event and clock='1') then
			if(address = x"E2" and writen = '1') then
				port_out_02 <= data_in;
			end if;
		end if;
	end process;
--port_out_03 description : ADDRESS x"E3"
	U6: process (clock,reset)
	begin 
		if(reset = '0')then
			port_out_03 <= x"00";
		elsif(clock'event and clock='1') then
			if(address = x"E3" and writen = '1') then
				port_out_03 <= data_in;
			end if;
		end if;
	end process;
--port_out_04 description : ADDRESS x"E4"
	U7: process (clock,reset)
	begin 
		if(reset = '0')then
			port_out_04 <= x"00";
		elsif(clock'event and clock='1') then
			if(address = x"E4" and writen = '1') then
				port_out_04 <= data_in;
			end if;
		end if;
	end process;
--port_out_05 description : ADDRESS x"E5"
	U8: process (clock,reset)
	begin 
		if(reset = '0')then
			port_out_05 <= x"00";
		elsif(clock'event and clock='1') then
			if(address = x"E5" and writen = '1') then
				port_out_05 <= data_in;
			end if;
		end if;
	end process;
--port_out_06 description : ADDRESS x"E6"
	U9: process (clock,reset)
	begin 
		if(reset = '0')then
			port_out_06 <= x"00";
		elsif(clock'event and clock='1') then
			if(address = x"E6" and writen = '1') then
				port_out_06 <= data_in;
			end if;
		end if;
	end process;
--port_out_07 description : ADDRESS x"E7"
	U10: process (clock,reset)
	begin 
		if(reset = '0')then
			port_out_07 <= x"00";
		elsif(clock'event and clock='1') then
			if(address = x"E7" and writen = '1') then
				port_out_07 <= data_in;
			end if;
		end if;
	end process;
--port_out_08 description : ADDRESS x"E8"
	U11: process (clock,reset)
	begin 
		if(reset = '0')then
			port_out_08 <= x"00";
		elsif(clock'event and clock='1') then
			if(address = x"E8" and writen = '1') then
				port_out_08 <= data_in;
			end if;
		end if;
	end process;
--port_out_09 description : ADDRESS x"E9"
	U12: process (clock,reset)
	begin 
		if(reset = '0')then
			port_out_09 <= x"00";
		elsif(clock'event and clock='1') then
			if(address = x"E9" and writen = '1') then
				port_out_09 <= data_in;
			end if;
		end if;
	end process;
--port_out_10 description : ADDRESS x"E10"
	U13: process (clock,reset)
	begin 
		if(reset = '0')then
			port_out_10 <= x"00";
		elsif(clock'event and clock='1') then
			if(address = x"E10" and writen = '1') then
				port_out_10 <= data_in;
			end if;
		end if;
	end process;
--port_out_11 description : ADDRESS x"E11"
	U14: process (clock,reset)
	begin 
		if(reset = '0')then
			port_out_11 <= x"00";
		elsif(clock'event and clock='1') then
			if(address = x"E11" and writen = '1') then
				port_out_11 <= data_in;
			end if;
		end if;
	end process;
--port_out_12 description : ADDRESS x"E12"
	U15: process (clock,reset)
	begin 
		if(reset = '0')then
			port_out_12 <= x"00";
		elsif(clock'event and clock='1') then
			if(address = x"E12" and writen = '1') then
				port_out_12 <= data_in;
			end if;
		end if;
	end process;
--port_out_13 description : ADDRESS x"E13"
	U16: process (clock,reset)
	begin 
		if(reset = '0')then
			port_out_13 <= x"00";
		elsif(clock'event and clock='1') then
			if(address = x"E13" and writen = '1') then
				port_out_13 <= data_in;
			end if;
		end if;
	end process;
--port_out_14 description : ADDRESS x"E14"
	U17: process (clock,reset)
	begin 
		if(reset = '0')then
			port_out_14 <= x"00";
		elsif(clock'event and clock='1') then
			if(address = x"E14" and writen = '1') then
				port_out_14 <= data_in;
			end if;
		end if;
	end process;
--port_out_15 description : ADDRESS x"E15"
	U18: process (clock,reset)
	begin 
		if(reset = '0')then
			port_out_15 <= x"00";
		elsif(clock'event and clock='1') then
			if(address = x"E15" and writen = '1') then
				port_out_15 <= data_in;
			end if;
		end if;
	end process;
end dataflow;	


