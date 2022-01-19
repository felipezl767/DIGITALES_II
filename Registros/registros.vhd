library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity registros is 
		
	port(IR_Load, MAR_Load, PC_Load, PC_Inc, A_Load , B_Load 	: in std_logic;
			ALU_Sel	: in std_logic_vector(2 downto 0);
			CCR_Load	: in std_logic;
			Bus1_Sel, Bus2_Sel	: in std_logic_vector(1 downto 0);
			Clock, Reset 			: in std_logic;
			from_memory				: in std_logic_vector(7 downto 0);
			CCR_Result				: out std_logic_vector(3 downto 0);
			IR, to_memory,address: out std_logic_vector(7 downto 0));
			
end entity;

architecture registros_arch of registros is

	signal Bus1,Bus2,PC,A,B,ALU_Result,MAR	:std_logic_vector(7 downto 0);
	signal NZVC	: std_logic_vector(3 downto 0);
	signal PC_uns	: unsigned(7 downto 0);
	
	-- COMPONENTE ALU
	
	component alu
		port(B,Bus1 : in std_logic_vector(7 downto 0);
				ALU_Sel	: in std_logic_vector(2 downto 0);
				NZVC		: out std_logic_vector(3 downto 0);
				ALU_Result	: out std_logic_vector(7 downto 0));
	end component;
	
	begin 
	
	--COMPONENTE ALU
	
	--u0	: alu port map(B=>B , Bus1 => Bus1, Alu_Sel => Alu_Sel, NZVC => NZVC, Alu_Result => Alu_result);
	
	-- IMP BUS 1
	
	MUX_BUS1 : process (Bus1_Sel, PC, A, B)
	begin
		case (Bus1_Sel) is
			when "00" => Bus1 <= PC;
			when "01" => Bus1 <= A;
			when "10" => Bus1 <= B;
			when others => Bus1 <= x"00";
		end case;
	end process;
	
	MUX_BUS2 : process (Bus2_Sel, ALU_Result, Bus1, from_memory)
	
	begin
		case (Bus2_Sel) is
			when "00" => Bus2 <= ALU_Result;
			when "01" => Bus2 <= Bus1;
			when "10" => Bus2 <= from_memory;
			when others => Bus2 <= x"00";
		end case;
	end process;
	
	address <= MAR;
	to_memory <= Bus1;
	
	--Resgistro IR 
	
	INSTRUCTION_REGISTER : process (Clock, Reset)
	begin
		if (Reset = '0') then
			IR <= x"00";
		elsif (Clock'event and Clock = '1') then
			if (IR_Load = '1') then
				IR <= Bus2;
			end if;
		end if;
	end process;
	
	--MEMORIA ADDRESS 
	
	MEMORY_ADDRESS_REGISTER : process (Clock, Reset)
	
	begin
		if (Reset = '0') then
			MAR <= x"00";
		elsif (Clock'event and Clock = '1') then
			if (MAR_Load = '1') then
			MAR <= Bus2;
			end if;
		end if;
	end process;
		
	--Contador de programas PC
	
	PROGRAM_COUNTER : process (Clock, Reset)
	begin
		if (Reset = '0') then
			PC_uns <= x"00";
		elsif (Clock'event and Clock = '1') then
			if (PC_Load = '1') then
				PC_uns <= unsigned(Bus2);
			elsif (PC_Inc = '1') then
				PC_uns <= PC_uns + 1;
			end if;
		end if;
	end process;
	
	PC <= std_logic_vector(PC_uns);
	
	--Registro A
	
	A_REGISTER : process (Clock, Reset)
	begin
		if (Reset = '0') then
			A <= x"00";
		elsif (Clock'event and Clock = '1') then
			if (A_Load = '1') then
				A <= Bus2;
			end if;
		end if;
	end process;

	--Registro B

	B_REGISTER : process (Clock, Reset)
	begin
		if (Reset = '0') then
			B <= x"00";
		elsif (Clock'event and Clock = '1') then
			if (B_Load = '1') then
				B <= Bus2;
			end if;
		end if;
	end process;
	
	--Registro CCR
	
	CONDITION_CODE_REGISTER : process (Clock, Reset)
	begin
		if (Reset = '0') then
		CCR_Result <= x"0";
		elsif (Clock'event and Clock = '1') then
			if (CCR_Load = '1') then
				CCR_Result <= NZVC;
			end if;
		end if;
	end process;
	
end architecture;