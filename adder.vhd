library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity adder is
    port (A, B, Cin : in  std_logic;
          Cout, S   : out std_logic);
end adder;

architecture add of adder is
begin

S <= (A XOR B) XOR Cin;
Cout <= ((A XOR B) AND Cin) OR (A AND B);
end add;
