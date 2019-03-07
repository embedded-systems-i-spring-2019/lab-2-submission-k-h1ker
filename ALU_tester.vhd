

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;



entity ALU_tester is
    Port (btn, sw : in std_logic_vector(3 downto 0);
          led     : out std_logic_vector(3 downto 0);
          clk     : in std_logic);
end ALU_tester;

architecture alu_test of ALU_tester is
signal dbnc0, dbnc1, dbnc2, dbnc3 : std_logic;
signal result, tempA, tempB, tempOP : std_logic_vector(3 downto 0); 

component debouncer
     port ( btn, clk : in std_logic;
           dbnc     : out std_logic);
    end component;
component my_alu
    port( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           OP : in STD_LOGIC_VECTOR (3 downto 0);
           res : out STD_LOGIC_VECTOR (3 downto 0));
end component;

begin

 d0 : debouncer
    port map( btn => btn(0),
               clk => clk,
               dbnc => dbnc0);
 d1 : debouncer
    port map (btn => btn(1),
              clk => clk,
              dbnc => dbnc1);
 d2 : debouncer 
    port map ( btn => btn(2),
                clk=> clk,
                dbnc => dbnc2);
  d3 : debouncer 
    port map (btn => btn(3),
              clk => clk,
              dbnc => dbnc3);
              
   alu : my_alu
        port map ( A => tempA,
                   B => tempB,
                   OP => tempOP,
                   res => result);           
               
process (clk)
    begin
        if clk='1' and clk'event then
            if dbnc3 ='1' then
                tempA<="0000";
                tempB<="0000";
                tempOP<="0000";
             elsif dbnc2 = '1' then
                tempOP<=sw;
             elsif dbnc1 = '1' then
                tempA<=sw;
             elsif dbnc0 = '1' then
                tempB<=sw;
             end if;
           led<=result;
         end if;
       end process;      

end alu_test;
