library ieee; 
use ieee.std_logic_1164.ALL; 
use ieee.std_logic_unsigned.ALL; 

ENTITY ALU IS
PORT( A, S ,B		: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		CLK, Rst		: IN STD_LOGIC;
		neg 			: OUT STD_LOGIC;
		R				: OUT STD_LOGIC_VECTOR(8 DOWNTO 0));
END ALU;

ARCHITECTURE Behavior OF ALU IS
SIGNAL RU : STD_LOGIC_VECTOR(8 DOWNTO 0);
BEGIN
	PROCESS(CLK, Rst)
begin
IF Rst = '0' THEN
RU <= "000000000";
ELSIF (CLK'event and CLK = '1') THEN
case S is
 WHEN "10000000" => RU <= '0' & (A XOR B);
 WHEN "01000000" => RU <= '0' & (A OR B);
 WHEN "00100000" => RU <= '0' & (A AND B);
 WHEN "00010000" => RU <= '0' & (A NOR B);
 WHEN "00001000" => RU <= '0' & (A NAND B);
 WHEN "00000100" => RU <= '0' & (NOT A);
 WHEN "00000010" => RU <=('0'&A)-('0'&B);
 WHEN "00000001" => RU <=('0'&A)+('0'&B);
 WHEN OTHERS => RU <= "000000000"; 
END CASE;
END IF;
END PROCESS;
R  <= RU(8 DOWNTO 0);
neg<= RU(8) XOR A(8) XOR B(8) XOR RU(7);
END Behavior; 
