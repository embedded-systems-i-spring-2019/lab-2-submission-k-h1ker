


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;


entity my_alu is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           OP : in STD_LOGIC_VECTOR (3 downto 0);
           res : out STD_LOGIC_VECTOR (3 downto 0));
end my_alu;

architecture Behavioral of my_alu is

begin
process (OP)
begin
    case OP is
    when "0000" => res <= A+B;
    when "0001" => res <= A-B;
    when "0010" => res <= A+1;
    when "0011" => res <= A-1;
    when "0100" => res <= 0-A;
    when "0101" => 
    if unsigned(A)>unsigned(B) then
    res <= "0001";
    else
    res <= "0000";
    end if;
    
    when "0110" => res<= A(2 downto 0)&'0';
    when "0111" => res<= '0'&A(3 downto 1);
    when "1000" => res<= '1'&A(3 downto 1);
    when "1001" => res<= not A;
    when "1010" => res<= A AND B;
    when "1011" => res<= A OR B;
    when "1100" => res<= A XOR B;
    when "1101" => res<= A XNOR B;
    when "1110" => res<= A NAND B;
    when "1111" => res<= A NOR B;
    when others => res<= "0000";
    
    end case;
    
 end process;
end Behavioral;
