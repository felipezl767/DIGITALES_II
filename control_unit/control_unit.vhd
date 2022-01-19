library IEEE;
use ieee.std_logic_1164.all;

entity control_unit is
	port(	clock			: in std_logic;
			reset			: in std_logic;
			writen		: out std_logic;
			IR_Load		: out std_logic;
			IR				: in std_logic_vector(7 downto 0);
			MAR_Load		: out std_logic;
			PC_Load		: out std_logic;
			PC_Inc		: out std_logic;
			A_load		: out std_logic;
			B_load		: out std_logic;
			ALU_Sel		: out std_logic_vector(2 downto 0);
			CCR_Result	: in std_logic_vector(3 downto 0);
			CCR_Load		: out std_logic;
			Bus1_Sel		: out std_logic_vector(1 downto 0);
			Bus2_Sel		: out std_logic_vector(1 downto 0));
end entity;

architecture control_unit_arch of control_unit is 

	-- Constantes para instrucción Pneronics
	
	constant LDA_IMM	: std_logic_vector(7 downto 0) := x"86"; -- cargar el registro A con direccionamiento inmediato
	constant LDA_DIR	: std_logic_vector(7 downto 0) := x"87"; -- cargar el registro A con direccionamiento directo
	constant STA_DIR	: std_logic_vector(7 downto 0) := x"96"; -- almacenar el registro A en la memoria (RAM o IO)
	constant LDB_IMM	: std_logic_vector(7 downto 0) := x"88"; -- cargar el registro B con direccionamiento inmediato
	constant LDB_DIR	: std_logic_vector(7 downto 0) := x"89"; -- cargar el registro B con direccionamiento directo
	constant STB_DIR	: std_logic_vector(7 downto 0) := x"97"; -- almacenar el registro B en la memoria (RAM o IO)
	constant BRA		: std_logic_vector(7 downto 0) := x"20"; -- rama siempre
	constant BEQ		: std_logic_vector(7 downto 0) := x"21"; -- rama si es igual a cero
	constant ADD_AB	: std_logic_vector(7 downto 0) := x"42"; -- A <= A + B
	constant SUB_AB	: std_logic_vector(7 downto 0) := x"43"; -- A <= A - B 
	constant AND_AB	: std_logic_vector(7 downto 0) := x"44"; -- A <= A and B
	constant OR_AB		: std_logic_vector(7 downto 0) := x"45"; -- A <= A or B
	constant INCA		: std_logic_vector(7 downto 0) := x"46"; -- A <= A + 1
	constant INCB		: std_logic_vector(7 downto 0) := x"47"; -- B <= B + 1
	constant DECA		: std_logic_vector(7 downto 0) := x"48"; -- A <= A - 1 
	constant DECB		: std_logic_vector(7 downto 0) := x"49"; -- B <= B - 1
	
	type state_type is (	S_FETCH_0,
								S_FETCH_1,
								S_FETCH_2,
								
								S_DECODE_3,
								
								S_LDA_IMM_4,
								S_LDA_IMM_5,
								S_LDA_IMM_6,
								
								S_LDA_DIR_4,
								S_LDA_DIR_5,
								S_LDA_DIR_6,
								S_LDA_DIR_7,
								
								S_STA_DIR_4,
								S_STA_DIR_5,
								S_STA_DIR_6,
								S_STA_DIR_7,
								
								S_LDB_IMM_4,
								S_LDB_IMM_5,
								S_LDB_IMM_6,
								
								S_LDB_DIR_4,
								S_LDB_DIR_5,
								S_LDB_DIR_6,
								S_LDB_DIR_7,
								
								S_STB_DIR_4,
								S_STB_DIR_5,
								S_STB_DIR_6,
								S_STB_DIR_7,
								
								
								S_ADD_AB_4,
								
								S_BRA_4,
								S_BRA_5,
								S_BRA_6);						
								
	signal current_state, next_state : state_type;
	
	begin
	
	-- MEMORIA DE ESTADO
	
	STATE_MEMORY : process (Clock, Reset)
	begin
		if (Reset = '0') then
			current_state <= S_FETCH_0;
		elsif (clock'event and clock = '1') then
			current_state <= next_state;
		end if;
	end process;
	
	-- SIGUIENTE ESTADO LOGICO
	
	NEXT_STATE_LOGIC : process (current_state, IR, CCR_Result)
	
	begin
	
		if (current_state = S_FETCH_0) then
			next_state <= S_FETCH_1;
		elsif (current_state = S_FETCH_1) then
			next_state <= S_FETCH_2;
		elsif (current_state = S_FETCH_2) then
			next_state <= S_DECODE_3;
		elsif (current_state = S_DECODE_3) then
		
		-- seleccione la ruta de ejecución
		
		-- Registro A
		
			if (IR = LDA_IMM) then -- Carga A Inmediato
				next_state <= S_LDA_IMM_4;
			elsif (IR = LDA_DIR) then -- Carga A Directo
				next_state <= S_LDA_DIR_4;
			elsif (IR = STA_DIR) then -- Guarda A Directo
				next_state <= S_STA_DIR_4;
		
		-- Registro B
		
			elsif (IR = LDB_IMM) then -- Carga B Imediato
				next_state <= S_LDB_IMM_4;
			elsif (IR = LDB_DIR) then -- Carga B Directo
				next_state <= S_LDB_DIR_4;
			elsif (IR = STB_DIR) then -- Guarda B Directo
				next_state <= S_STB_DIR_4;
 			
			elsif (IR = ADD_AB) then -- Add A and B
				next_state <= S_ADD_AB_4;
				
			elsif (IR = BRA) then -- Rama siempre
				next_state <= S_BRA_4;
			
			else 	next_state <= S_FETCH_0;
			
			end if;
			
		elsif	(current_state = S_LDA_IMM_4) then 		-- ruta para la instrucción LDA_IMM
			next_state <= S_LDA_IMM_5;
		elsif	(current_state = S_LDA_IMM_5) then 		
			next_state <= S_LDA_IMM_6;
		elsif	(current_state = S_LDA_IMM_6) then 
			next_state <= S_FETCH_0;
		
		elsif	(current_state = S_LDA_DIR_4) then 		-- ruta para la instrucción LDA_DIR
			next_state <= S_LDA_DIR_5;
		elsif	(current_state = S_LDA_DIR_5) then 
			next_state <= S_LDA_DIR_6;
		elsif	(current_state = S_LDA_DIR_6) then 
			next_state <= S_LDA_DIR_7;
		elsif	(current_state = S_LDA_DIR_7) then 
			next_state <= S_FETCH_0;
		
		elsif	(current_state = S_STA_DIR_4) then 		-- ruta para la instrucción STA_DIR
			next_state <= S_STA_DIR_5;
		elsif	(current_state = S_STA_DIR_5) then 
			next_state <= S_STA_DIR_6;
		elsif	(current_state = S_STA_DIR_6) then 
			next_state <= S_STA_DIR_7;
		elsif	(current_state = S_STA_DIR_7) then 
			next_state <= S_FETCH_0;
		
		elsif	(current_state = S_LDB_IMM_4) then 		-- ruta para la instrucción LDB_IMM
			next_state <= S_LDB_IMM_5;
		elsif	(current_state = S_LDB_IMM_5) then 		
			next_state <= S_LDB_IMM_6;
		elsif	(current_state = S_LDB_IMM_6) then 
			next_state <= S_FETCH_0;
		
		elsif	(current_state = S_LDB_DIR_4) then 		-- ruta para la instrucción LDB_DIR
			next_state <= S_LDB_DIR_5;
		elsif	(current_state = S_LDB_DIR_5) then 
			next_state <= S_LDB_DIR_6;
		elsif	(current_state = S_LDB_DIR_6) then 
			next_state <= S_LDB_DIR_7;
		elsif	(current_state = S_LDB_DIR_7) then 
			next_state <= S_FETCH_0;
			
		elsif	(current_state = S_STB_DIR_4) then 		-- ruta para la instrucción STB_DIR
			next_state <= S_STB_DIR_5;
		elsif	(current_state = S_STB_DIR_5) then 
			next_state <= S_STB_DIR_6;
		elsif	(current_state = S_STB_DIR_6) then 
			next_state <= S_STB_DIR_7;
		elsif	(current_state = S_STB_DIR_7) then 
			next_state <= S_FETCH_0;
			
		
		elsif	(current_state = S_BRA_4) then 		-- ruta para la instruccion BRA
			next_state <= S_BRA_5;
		elsif	(current_state = S_BRA_5) then 		
			next_state <= S_BRA_6;
		elsif	(current_state = S_BRA_6) then 
			next_state <= S_FETCH_0;
			
		elsif (current_state = S_ADD_AB_4) then  	-- ruta de la instrucción ADD_AB
			next_state <= S_FETCH_0;
			
		else next_state <= S_FETCH_0;
		
		end if;
		
	end process;
	
	-- LÓGICA DE SALIDA
	
	OUTPUT_LOGIC : process (current_state)
	
	begin
	
		case current_state is
		
			when S_FETCH_0 => -- expresa PC en MAR para leer codigo
				IR_Load 	<= '0';
				MAR_Load <= '1';
				PC_Load 	<= '0';
				PC_Inc 	<= '0';
				A_Load 	<= '0';
				B_Load 	<= '0';
				ALU_Sel 	<= "000";
				CCR_Load <= '0';
				Bus1_Sel <= "00"; -- "00"=PC, "01"=A, "10"=B
				Bus2_Sel <= "01"; -- "00"=ALU_Result, "01"=Bus1, "10"=from_memory
				writen 	<= '0';
				
			when S_FETCH_1 => -- Incremento de PC
				IR_Load 	<= '0';
				MAR_Load <= '0';
				PC_Load 	<= '0';
				PC_Inc 	<= '1';
				A_Load 	<= '0';
				B_Load 	<= '0';
				ALU_Sel 	<= "000";
				CCR_Load <= '0';
				Bus1_Sel <= "00"; -- "00"=PC, "01"=A, "10"=B
				Bus2_Sel <= "00"; -- "00"=ALU, "01"=Bus1, "10"=from_memory
				writen 	<= '0'; 
				
			when S_FETCH_2 => -- poner código de operación en IR
				IR_Load 	<= '1';
				MAR_Load <= '0';
				PC_Load 	<= '0';
				PC_Inc 	<= '0';
				A_Load 	<= '0';
				B_Load 	<= '0';
				ALU_Sel 	<= "000";
				CCR_Load <= '0';
				Bus1_Sel <= "00"; -- "00"=PC, "01"=A, "10"=B
				Bus2_Sel <= "10"; -- "00"=ALU, "01"=Bus1, "10"=from_memory
				writen 	<= '0'; 
					
			when S_DECODE_3 => -- no hay salidas, la máquina está decodificando IR para decidir a qué estado ir a continuación
				IR_Load 	<= '0';
				MAR_Load <= '0';
				PC_Load 	<= '0';
				PC_Inc 	<= '0';
				A_Load 	<= '0';
				B_Load 	<= '0';
				ALU_Sel 	<= "000";
				CCR_Load <= '0';
				Bus1_Sel <= "00"; -- "00"=PC, "01"=A, "10"=B
				Bus2_Sel <= "00"; -- "00"=ALU, "01"=Bus1, "10"=from_memory
				writen 	<= '0'; 
					
			-- LDA_IMM
			
			when S_LDA_IMM_4 => -- poner la PC en MAR para proporcionar la dirección del Operando
				IR_Load 	<= '0';
				MAR_Load <= '1';
				PC_Load 	<= '0';
				PC_Inc 	<= '0';
				A_Load 	<= '0';
				B_Load 	<= '0';
				ALU_Sel 	<= "000";
				CCR_Load <= '0';
				Bus1_Sel <= "00"; -- "00"=PC, "01"=A, "10"=B
				Bus2_Sel <= "01"; -- "00"=ALU, "01"=Bus1, "10"=from_memory
				writen 	<= '0'; 
			
			when S_LDA_IMM_5 => -- incrementar PC, el operando estará disponible en el siguiente estado
				IR_Load 	<= '0';
				MAR_Load <= '0';
				PC_Load 	<= '0';
				PC_Inc 	<= '1';
				A_Load 	<= '0';
				B_Load 	<= '0';
				ALU_Sel 	<= "000";
				CCR_Load <= '0';
				Bus1_Sel <= "00"; -- "00"=PC, "01"=A, "10"=B
				Bus2_Sel <= "00"; -- "00"=ALU, "01"=Bus1, "10"=from_memory
				writen 	<= '0'; 
				
			when S_LDA_IMM_6 => -- El operando está disponible, enganche en A
				IR_Load 	<= '0';
				MAR_Load <= '0';
				PC_Load 	<= '0';
				PC_Inc 	<= '0';
				A_Load 	<= '1';
				B_Load 	<= '0';
				ALU_Sel 	<= "000";
				CCR_Load <= '0';
				Bus1_Sel <= "00"; -- "00"=PC, "01"=A, "10"=B
				Bus2_Sel <= "10"; -- "00"=ALU, "01"=Bus1, "10"=from_memory
				writen 	<= '0'; 
				
			-- LDA_DIR
			
			when S_LDA_DIR_4 => -- poner la PC en MAR para proporcionar la dirección del operando
				IR_Load 	<= '0';
				MAR_Load <= '1';
				PC_Load 	<= '0';
				PC_Inc 	<= '0';
				A_Load 	<= '0';
				B_Load 	<= '0';
				ALU_Sel 	<= "000";
				CCR_Load <= '0';
				Bus1_Sel <= "00"; -- "00"=PC, "01"=A, "10"=B
				Bus2_Sel <= "01"; -- "00"=ALU, "01"=Bus1, "10"=from_memory
				writen 	<= '0'; 
				
			when S_LDA_DIR_5 => -- Prepárese para recibir el Operando de la memoria, incremente la PC
				IR_Load 	<= '0';
				MAR_Load <= '0';
				PC_Load 	<= '0';
				PC_Inc 	<= '1';
				A_Load 	<= '0';
				B_Load 	<= '0';
				ALU_Sel 	<= "000";
				CCR_Load <= '0';
				Bus1_Sel <= "00"; -- "00"=PC, "01"=A, "10"=B
				Bus2_Sel <= "00"; -- "00"=ALU, "01"=Bus1, "10"=from_memory
				writen 	<= '0'; 
				
			when S_LDA_DIR_6 => -- Poner operando en MAR (dejar bus2 = from_memory)
				IR_Load 	<= '0';
				MAR_Load <= '1';
				PC_Load 	<= '0';
				PC_Inc 	<= '0';
				A_Load 	<= '0';
				B_Load 	<= '0';
				ALU_Sel 	<= "000";
				CCR_Load <= '0';
				Bus1_Sel <= "00"; -- "00"=PC, "01"=A, "10"=B
				Bus2_Sel <= "10"; -- "00"=ALU, "01"=Bus1, "10"=from_memory
				writen 	<= '0'; 
				
			when S_LDA_DIR_7 => -- poner los datos que llegan en "from_memory" en A
				IR_Load 	<= '0';
				MAR_Load <= '0';
				PC_Load 	<= '0';
				PC_Inc 	<= '0';
				A_Load 	<= '1';
				B_Load 	<= '0';
				ALU_Sel 	<= "000";
				CCR_Load <= '0';
				Bus1_Sel <= "00"; -- "00"=PC, "01"=A, "10"=B
				Bus2_Sel <= "10"; -- "00"=ALU, "01"=Bus1, "00"=from_memory
				writen 	<= '0'; 
			
			-- STA_DIR
		
			when S_STA_DIR_4 => -- poner la PC en MAR para proporcionar la dirección del operando  
				IR_Load 	<= '0';
				MAR_Load <= '1';
				PC_Load 	<= '0';
				PC_Inc 	<= '0';
				A_Load 	<= '0';
				B_Load 	<= '0';
				ALU_Sel 	<= "000";
				CCR_Load <= '0';
				Bus1_Sel <= "00"; -- "00"=PC, "01"=A, "10"=B
				Bus2_Sel <= "01"; -- "00"=ALU, "01"=Bus1, "00"=from_memory
				writen 	<= '0'; 
				
			when S_STA_DIR_5 => -- Prepárese para recibir el Operando de la memoria, incremente la PC
				IR_Load 	<= '0';
				MAR_Load <= '0';
				PC_Load 	<= '0';
				PC_Inc 	<= '1';
				A_Load 	<= '0';
				B_Load 	<= '0';
				ALU_Sel 	<= "000";	
				CCR_Load <= '0';
				Bus1_Sel <= "00"; -- "00"=PC, "01"=A, "10"=B
				Bus2_Sel <= "10"; -- "00"=ALU, "01"=Bus1, "00"=from_memory
				writen 	<= '0'; 
				
			when S_STA_DIR_6 => -- poner operando en MAR (Dejar bus2 = from_memory)
				IR_Load 	<= '0';
				MAR_Load <= '1';
				PC_Load 	<= '0';
				PC_Inc 	<= '0';
				A_Load 	<= '0';
				B_Load 	<= '0';
				ALU_Sel 	<= "000";
				CCR_Load <= '0';
				Bus1_Sel <= "00"; -- "00"=PC, "01"=A, "10"=B
				Bus2_Sel <= "10"; -- "00"=ALU, "01"=Bus1, "00"=from_memory
				writen 	<= '0'; 
				
			when S_STA_DIR_7 => -- poner los datos que llegan en "from_memory" en A
				IR_Load 	<= '0';
				MAR_Load <= '0';
				PC_Load 	<= '0';
				PC_Inc 	<= '0';
				A_Load 	<= '0';
				B_Load 	<= '0';
				ALU_Sel 	<= "000";
				CCR_Load <= '0';
				Bus1_Sel <= "01"; -- "00"=PC, "01"=A, "10"=B
				Bus2_Sel <= "10"; -- "00"=ALU, "01"=Bus1, "00"=from_memory
				writen 	<= '1'; 
				
			-- LDB_IMM	
			
			when S_LDB_IMM_4 => -- Ponga pc en MAR para proporcionar la dirección del operando 
				IR_Load 	<= '0';
				MAR_Load <= '1';
				PC_Load 	<= '0';
				PC_Inc 	<= '0';
				A_Load 	<= '0';
				B_Load 	<= '0';
				ALU_Sel 	<= "000";
				CCR_Load <= '0';
				Bus1_Sel <= "00"; -- "00"=PC, "01"=A, "10"=B
				Bus2_Sel <= "01"; -- "00"=ALU, "01"=Bus1, "00"=from_memory
				writen 	<= '0'; 	
				
			when S_LDB_IMM_5 => -- Incrementar PC, el operando estará disponible en el siguiente estado
				IR_Load 	<= '0';
				MAR_Load <= '0';
				PC_Load 	<= '0';
				PC_Inc 	<= '1';
				A_Load 	<= '0';
				B_Load 	<= '0';
				ALU_Sel 	<= "000";
				CCR_Load <= '0';
				Bus1_Sel <= "00"; -- "00"=PC, "01"=A, "10"=B
				Bus2_Sel <= "00"; -- "00"=ALU, "01"=Bus1, "00"=from_memory
				writen 	<= '0'; 
				
			when S_LDB_IMM_6 => -- El operando está disponible, enganche en B
				IR_Load 	<= '0';
				MAR_Load <= '0';
				PC_Load 	<= '0';
				PC_Inc 	<= '0';
				A_Load 	<= '0';
				B_Load 	<= '1';
				ALU_Sel 	<= "000";
				CCR_Load <= '0';
				Bus1_Sel <= "00"; -- "00"=PC, "01"=A, "10"=B
				Bus2_Sel <= "10"; -- "00"=ALU, "01"=Bus1, "00"=from_memory
				writen 	<= '0';
			
			-- LDB_DIR
		
			when S_LDB_DIR_4 => -- coloque la PC en MAR para proporcionar la dirección del operando 
				IR_Load 	<= '0';
				MAR_Load <= '1';
				PC_Load 	<= '0';
				PC_Inc 	<= '0';
				A_Load 	<= '0';
				B_Load 	<= '0';
				ALU_Sel 	<= "000";
				CCR_Load <= '0';
				Bus1_Sel <= "00"; -- "00"=PC, "01"=A, "10"=B
				Bus2_Sel <= "01"; -- "00"=ALU, "01"=Bus1, "00"=from_memory
				writen 	<= '0'; 
				
		 	when S_LDB_DIR_5 => -- Prepárese para recibir el Operando de la memoria, incremente la PC
				IR_Load 	<= '0';
				MAR_Load <= '0';
				PC_Load 	<= '0';
				PC_Inc 	<= '1';
				A_Load 	<= '0';
				B_Load 	<= '0';
				ALU_Sel 	<= "000";
				CCR_Load <= '0';
				Bus1_Sel <= "00"; -- "00"=PC, "01"=A, "10"=B
				Bus2_Sel <= "00"; -- "00"=ALU, "01"=Bus1, "00"=from_memory
				writen 	<= '0'; 
				
			when S_LDB_DIR_6 => -- Poner operando en MAR (Dejar Bus2 = from_memory)
				IR_Load 	<= '0';
				MAR_Load <= '1';
				PC_Load 	<= '0';
				PC_Inc 	<= '0';
				A_Load 	<= '0';
				B_Load 	<= '0';
				ALU_Sel 	<= "000";
				CCR_Load <= '0';
				Bus1_Sel <= "00"; -- "00"=PC, "01"=A, "10"=B
				Bus2_Sel <= "10"; -- "00"=ALU, "01"=Bus1, "00"=from_memory
				writen 	<= '0'; 
				
			when S_LDB_DIR_7 => -- Coloque los datos que llegan en "from_memory" en B
				IR_Load 	<= '0';
				MAR_Load <= '0';
				PC_Load 	<= '0';
				PC_Inc 	<= '0';
				A_Load 	<= '0';
				B_Load 	<= '1';
				ALU_Sel 	<= "000";
				CCR_Load <= '0';
				Bus1_Sel <= "00"; -- "00"=PC, "01"=A, "10"=B
				Bus2_Sel <= "10"; -- "00"=ALU, "01"=Bus1, "00"=from_memory
				writen 	<= '0'; 
			
			-- STB_DIR 
			
			when S_STB_DIR_4 => -- Coloque la PC en MAR para proporcionar la dirección del operando
				IR_Load 	<= '0';
				MAR_Load <= '1';
				PC_Load 	<= '0';
				PC_Inc 	<= '0';
				A_Load 	<= '0';
				B_Load 	<= '0';
				ALU_Sel 	<= "000";
				CCR_Load <= '0';
				Bus1_Sel <= "00"; -- "00"=PC, "01"=A, "10"=B
				Bus2_Sel <= "01"; -- "00"=ALU, "01"=Bus1, "00"=from_memory
				writen 	<= '0'; 
				
			when S_STB_DIR_5 => -- Prepárese para recibir el Operando de la memoria, incremente la PC
				IR_Load 	<= '0';
				MAR_Load <= '0';
				PC_Load 	<= '0';
				PC_Inc 	<= '1';
				A_Load 	<= '0';
				B_Load 	<= '0';
				ALU_Sel 	<= "000";
				CCR_Load <= '0';
				Bus1_Sel <= "00"; -- "00"=PC, "01"=A, "10"=B
				Bus2_Sel <= "10"; -- "00"=ALU, "01"=Bus1, "00"=from_memory
				writen 	<= '0'; 
				
			when S_STB_DIR_6 => -- Poner operando en MAR (dejar bus2 = from_memory)
				IR_Load 	<= '0';
				MAR_Load <= '1';
				PC_Load 	<= '0';
				PC_Inc 	<= '0';
				A_Load 	<= '0';
				B_Load 	<= '0';
				ALU_Sel 	<= "000";
				CCR_Load <= '0';
				Bus1_Sel <= "00"; -- "00"=PC, "01"=A, "10"=B
				Bus2_Sel <= "10"; -- "00"=ALU, "01"=Bus1, "00"=from_memory
				writen 	<= '0'; 
				
			when S_STB_DIR_7 => -- Coloque B en el bus2, que está conectado a "to_memory", afirme escribir
				IR_Load 	<= '0';
				MAR_Load <= '0';
				PC_Load 	<= '0';
				PC_Inc 	<= '0';
				A_Load 	<= '0';
				B_Load 	<= '0';
				ALU_Sel 	<= "000";
				CCR_Load <= '0';
				Bus1_Sel <= "10"; -- "00"=PC, "01"=A, "10"=B
				Bus2_Sel <= "10"; -- "00"=ALU, "01"=Bus1, "00"=from_memory
				writen 	<= '1'; 
				
			-- BRA
			
			when S_BRA_4 => -- Coloque la PC en MAR para proporcionar la dirección de operación	
				IR_Load 	<= '0';
				MAR_Load <= '1';
				PC_Load 	<= '0';
				PC_Inc 	<= '0';
				A_Load 	<= '0';
				B_Load 	<= '0';
				ALU_Sel 	<= "000";
				CCR_Load <= '0';
				Bus1_Sel <= "00"; -- "00"=PC, "01"=A, "10"=B
				Bus2_Sel <= "01"; -- "00"=ALU, "01"=Bus1, "00"=from_memory
				writen 	<= '0'; 
				
			when S_BRA_5 => -- Prepárese para recibir el Operando de la memoria
				IR_Load 	<= '0';
				MAR_Load <= '0';
				PC_Load 	<= '0';
				PC_Inc 	<= '0';
				A_Load 	<= '0';
				B_Load 	<= '0';
				ALU_Sel 	<= "000";
				CCR_Load <= '0';
				Bus1_Sel <= "00"; -- "00"=PC, "01"=A, "10"=B
				Bus2_Sel <= "10"; -- "00"=ALU, "01"=Bus1, "00"=from_memory
				writen 	<= '0'; 
				
			when S_BRA_6 => -- Prepárese para recibir el Operando de la memoria, incremente la PC
				IR_Load 	<= '0';
				MAR_Load <= '0';
				PC_Load 	<= '1';
				PC_Inc 	<= '0';
				A_Load 	<= '0';
				B_Load 	<= '0';
				ALU_Sel 	<= "000";
				CCR_Load <= '0';
				Bus1_Sel <= "00"; -- "00"=PC, "01"=A, "10"=B
				Bus2_Sel <= "10"; -- "00"=ALU, "01"=Bus1, "00"=from_memory
				writen 	<= '0'; 
				
			-- ADD_AB
			
			when S_ADD_AB_4 => -- Reafirmar señales de control para realizar sumas
				IR_Load 	<= '0';
				MAR_Load <= '0';
				PC_Load 	<= '0';
				PC_Inc 	<= '0';
				A_Load 	<= '1';
				B_Load 	<= '0';
				ALU_Sel 	<= "000";
				CCR_Load <= '1';
				Bus1_Sel <= "01"; -- "00"=PC, "01"=A, "10"=B
				Bus2_Sel <= "00"; -- "00"=ALU, "01"=Bus1, "00"=from_memory
				writen 	<= '0'; 
			
			-- OTHERS
			
			when others => 
				IR_Load 	<= '0';
				MAR_Load <= '0';
				PC_Load 	<= '0';
				PC_Inc 	<= '0';
				A_Load 	<= '0';
				B_Load 	<= '0';
				ALU_Sel 	<= "000";
				CCR_Load <= '0';
				Bus1_Sel <= "00"; -- "00"=PC, "01"=A, "10"=B
				Bus2_Sel <= "00"; -- "00"=ALU, "01"=Bus1, "00"=from_memory
				writen 	<= '0';
				
			end case current_state;
			
		end process;
			
end architecture;