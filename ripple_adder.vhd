--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Wed Mar  6 19:23:58 2019
--Host        : Laptop1 running 64-bit major release  (build 9200)
--Command     : generate_target ripple_adder.bd
--Design      : ripple_adder
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ripple_adder is
  port (
    A0 : in STD_LOGIC;
    A1 : in STD_LOGIC;
    A2 : in STD_LOGIC;
    A3 : in STD_LOGIC;
    B0 : in STD_LOGIC;
    B1 : in STD_LOGIC;
    B2 : in STD_LOGIC;
    B3 : in STD_LOGIC;
    C0 : in STD_LOGIC;
    C4 : out STD_LOGIC;
    S0 : out STD_LOGIC;
    S1 : out STD_LOGIC;
    S2 : out STD_LOGIC;
    S3 : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ripple_adder : entity is "ripple_adder,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ripple_adder,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of ripple_adder : entity is "ripple_adder.hwdef";
end ripple_adder;

architecture STRUCTURE of ripple_adder is
  component ripple_adder_adder_0_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    Cout : out STD_LOGIC;
    S : out STD_LOGIC
  );
  end component ripple_adder_adder_0_0;
  component ripple_adder_adder_1_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    Cout : out STD_LOGIC;
    S : out STD_LOGIC
  );
  end component ripple_adder_adder_1_0;
  component ripple_adder_adder_2_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    Cout : out STD_LOGIC;
    S : out STD_LOGIC
  );
  end component ripple_adder_adder_2_0;
  component ripple_adder_adder_3_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    Cout : out STD_LOGIC;
    S : out STD_LOGIC
  );
  end component ripple_adder_adder_3_0;
  signal A0_1 : STD_LOGIC;
  signal A1_1 : STD_LOGIC;
  signal A2_1 : STD_LOGIC;
  signal A3_1 : STD_LOGIC;
  signal B0_1 : STD_LOGIC;
  signal B1_1 : STD_LOGIC;
  signal B2_1 : STD_LOGIC;
  signal B3_1 : STD_LOGIC;
  signal C0_1 : STD_LOGIC;
  signal adder_0_Cout : STD_LOGIC;
  signal adder_0_S : STD_LOGIC;
  signal adder_1_Cout : STD_LOGIC;
  signal adder_1_S : STD_LOGIC;
  signal adder_2_Cout : STD_LOGIC;
  signal adder_2_S : STD_LOGIC;
  signal adder_3_Cout : STD_LOGIC;
  signal adder_3_S : STD_LOGIC;
begin
  A0_1 <= A0;
  A1_1 <= A1;
  A2_1 <= A2;
  A3_1 <= A3;
  B0_1 <= B0;
  B1_1 <= B1;
  B2_1 <= B2;
  B3_1 <= B3;
  C0_1 <= C0;
  C4 <= adder_3_Cout;
  S0 <= adder_0_S;
  S1 <= adder_1_S;
  S2 <= adder_2_S;
  S3 <= adder_3_S;
adder_0: component ripple_adder_adder_0_0
     port map (
      A => A0_1,
      B => B0_1,
      Cin => C0_1,
      Cout => adder_0_Cout,
      S => adder_0_S
    );
adder_1: component ripple_adder_adder_1_0
     port map (
      A => A1_1,
      B => B1_1,
      Cin => adder_0_Cout,
      Cout => adder_1_Cout,
      S => adder_1_S
    );
adder_2: component ripple_adder_adder_2_0
     port map (
      A => A2_1,
      B => B2_1,
      Cin => adder_1_Cout,
      Cout => adder_2_Cout,
      S => adder_2_S
    );
adder_3: component ripple_adder_adder_3_0
     port map (
      A => A3_1,
      B => B3_1,
      Cin => adder_2_Cout,
      Cout => adder_3_Cout,
      S => adder_3_S
    );
end STRUCTURE;
