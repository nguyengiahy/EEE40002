--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: main_synthesis.vhd
-- /___/   /\     Timestamp: Wed Apr 15 15:34:22 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm main -w -dir netgen/synthesis -ofmt vhdl -sim main.ngc main_synthesis.vhd 
-- Device	: xc3s50-5-pq208
-- Input file	: main.ngc
-- Output file	: D:\Code\Integrated circuit design\lab01\part2\netgen\synthesis\main_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: main
-- Xilinx	: D:\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity main is
  port (
    cout : out STD_LOGIC; 
    M : in STD_LOGIC := 'X'; 
    z : out STD_LOGIC; 
    cin : in STD_LOGIC := 'X'; 
    F : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    A : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    B : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    sel : in STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end main;

architecture Structure of main is
  signal A_0_IBUF_4 : STD_LOGIC; 
  signal A_1_IBUF_5 : STD_LOGIC; 
  signal A_2_IBUF_6 : STD_LOGIC; 
  signal A_3_IBUF_7 : STD_LOGIC; 
  signal B_0_IBUF_12 : STD_LOGIC; 
  signal B_1_IBUF_13 : STD_LOGIC; 
  signal B_2_IBUF_14 : STD_LOGIC; 
  signal B_3_IBUF_15 : STD_LOGIC; 
  signal F_0_OBUF_20 : STD_LOGIC; 
  signal F_1_OBUF_21 : STD_LOGIC; 
  signal F_2_OBUF_22 : STD_LOGIC; 
  signal F_3_OBUF_23 : STD_LOGIC; 
  signal M_IBUF_25 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal cin_IBUF_46 : STD_LOGIC; 
  signal cout_OBUF_48 : STD_LOGIC; 
  signal result_cmp_eq0007 : STD_LOGIC; 
  signal result_mux0004 : STD_LOGIC; 
  signal sel_0_IBUF_66 : STD_LOGIC; 
  signal sel_1_IBUF_67 : STD_LOGIC; 
  signal z_OBUF_69 : STD_LOGIC; 
  signal Madd_result_addsub0000_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Madd_result_addsub0000_lut : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Madd_result_addsub0001_cy : STD_LOGIC_VECTOR ( 2 downto 1 ); 
  signal result_addsub0000 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal result_mux0002 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal result_mux0003 : STD_LOGIC_VECTOR ( 4 downto 1 ); 
begin
  Madd_result_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => result_mux0004,
      DI => result_mux0002(0),
      S => Madd_result_addsub0000_lut(0),
      O => Madd_result_addsub0000_cy(0)
    );
  Madd_result_addsub0000_xor_0_Q : XORCY
    port map (
      CI => result_mux0004,
      LI => Madd_result_addsub0000_lut(0),
      O => result_addsub0000(0)
    );
  Madd_result_addsub0000_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => result_mux0002(1),
      I1 => result_mux0003(1),
      O => Madd_result_addsub0000_lut(1)
    );
  Madd_result_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => Madd_result_addsub0000_cy(0),
      DI => result_mux0002(1),
      S => Madd_result_addsub0000_lut(1),
      O => Madd_result_addsub0000_cy(1)
    );
  Madd_result_addsub0000_xor_1_Q : XORCY
    port map (
      CI => Madd_result_addsub0000_cy(0),
      LI => Madd_result_addsub0000_lut(1),
      O => result_addsub0000(1)
    );
  Madd_result_addsub0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => result_mux0002(2),
      I1 => result_mux0003(2),
      O => Madd_result_addsub0000_lut(2)
    );
  Madd_result_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => Madd_result_addsub0000_cy(1),
      DI => result_mux0002(2),
      S => Madd_result_addsub0000_lut(2),
      O => Madd_result_addsub0000_cy(2)
    );
  Madd_result_addsub0000_xor_2_Q : XORCY
    port map (
      CI => Madd_result_addsub0000_cy(1),
      LI => Madd_result_addsub0000_lut(2),
      O => result_addsub0000(2)
    );
  Madd_result_addsub0000_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => result_mux0002(3),
      I1 => result_mux0003(3),
      O => Madd_result_addsub0000_lut(3)
    );
  Madd_result_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => Madd_result_addsub0000_cy(2),
      DI => result_mux0002(3),
      S => Madd_result_addsub0000_lut(3),
      O => Madd_result_addsub0000_cy(3)
    );
  Madd_result_addsub0000_xor_3_Q : XORCY
    port map (
      CI => Madd_result_addsub0000_cy(2),
      LI => Madd_result_addsub0000_lut(3),
      O => result_addsub0000(3)
    );
  Madd_result_addsub0000_xor_4_Q : XORCY
    port map (
      CI => Madd_result_addsub0000_cy(3),
      LI => result_mux0003(4),
      O => result_addsub0000(4)
    );
  result_mux00041 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => sel_1_IBUF_67,
      I1 => sel_0_IBUF_66,
      I2 => cin_IBUF_46,
      O => result_mux0004
    );
  result_mux0002_3_1 : LUT4
    generic map(
      INIT => X"0818"
    )
    port map (
      I0 => sel_0_IBUF_66,
      I1 => B_3_IBUF_15,
      I2 => sel_1_IBUF_67,
      I3 => cin_IBUF_46,
      O => result_mux0002(3)
    );
  result_mux0002_2_1 : LUT4
    generic map(
      INIT => X"0818"
    )
    port map (
      I0 => sel_0_IBUF_66,
      I1 => B_2_IBUF_14,
      I2 => sel_1_IBUF_67,
      I3 => cin_IBUF_46,
      O => result_mux0002(2)
    );
  result_mux0002_1_1 : LUT4
    generic map(
      INIT => X"0818"
    )
    port map (
      I0 => sel_0_IBUF_66,
      I1 => B_1_IBUF_13,
      I2 => sel_1_IBUF_67,
      I3 => cin_IBUF_46,
      O => result_mux0002(1)
    );
  result_mux0002_0_1 : LUT4
    generic map(
      INIT => X"FBDD"
    )
    port map (
      I0 => sel_0_IBUF_66,
      I1 => sel_1_IBUF_67,
      I2 => cin_IBUF_46,
      I3 => B_0_IBUF_12,
      O => result_mux0002(0)
    );
  result_cmp_eq00071 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => sel_0_IBUF_66,
      I1 => cin_IBUF_46,
      I2 => sel_1_IBUF_67,
      O => result_cmp_eq0007
    );
  result_4_1 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => sel_0_IBUF_66,
      I1 => result_addsub0000(4),
      I2 => M_IBUF_25,
      I3 => sel_1_IBUF_67,
      O => cout_OBUF_48
    );
  z_cmp_eq00001 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => F_0_OBUF_20,
      I1 => F_1_OBUF_21,
      I2 => F_2_OBUF_22,
      I3 => F_3_OBUF_23,
      O => z_OBUF_69
    );
  M_IBUF : IBUF
    port map (
      I => M,
      O => M_IBUF_25
    );
  cin_IBUF : IBUF
    port map (
      I => cin,
      O => cin_IBUF_46
    );
  A_3_IBUF : IBUF
    port map (
      I => A(3),
      O => A_3_IBUF_7
    );
  A_2_IBUF : IBUF
    port map (
      I => A(2),
      O => A_2_IBUF_6
    );
  A_1_IBUF : IBUF
    port map (
      I => A(1),
      O => A_1_IBUF_5
    );
  A_0_IBUF : IBUF
    port map (
      I => A(0),
      O => A_0_IBUF_4
    );
  B_3_IBUF : IBUF
    port map (
      I => B(3),
      O => B_3_IBUF_15
    );
  B_2_IBUF : IBUF
    port map (
      I => B(2),
      O => B_2_IBUF_14
    );
  B_1_IBUF : IBUF
    port map (
      I => B(1),
      O => B_1_IBUF_13
    );
  B_0_IBUF : IBUF
    port map (
      I => B(0),
      O => B_0_IBUF_12
    );
  sel_1_IBUF : IBUF
    port map (
      I => sel(1),
      O => sel_1_IBUF_67
    );
  sel_0_IBUF : IBUF
    port map (
      I => sel(0),
      O => sel_0_IBUF_66
    );
  cout_OBUF : OBUF
    port map (
      I => cout_OBUF_48,
      O => cout
    );
  z_OBUF : OBUF
    port map (
      I => z_OBUF_69,
      O => z
    );
  F_3_OBUF : OBUF
    port map (
      I => F_3_OBUF_23,
      O => F(3)
    );
  F_2_OBUF : OBUF
    port map (
      I => F_2_OBUF_22,
      O => F(2)
    );
  F_1_OBUF : OBUF
    port map (
      I => F_1_OBUF_21,
      O => F(1)
    );
  F_0_OBUF : OBUF
    port map (
      I => F_0_OBUF_20,
      O => F(0)
    );
  Madd_result_addsub0000_lut_0_Q : LUT4
    generic map(
      INIT => X"6696"
    )
    port map (
      I0 => result_mux0002(0),
      I1 => A_0_IBUF_4,
      I2 => result_cmp_eq0007,
      I3 => B_0_IBUF_12,
      O => Madd_result_addsub0000_lut(0)
    );
  result_mux0003_4_1 : LUT4
    generic map(
      INIT => X"A220"
    )
    port map (
      I0 => result_cmp_eq0007,
      I1 => B_3_IBUF_15,
      I2 => A_3_IBUF_7,
      I3 => Madd_result_addsub0001_cy(2),
      O => result_mux0003(4)
    );
  result_mux0003_2_1 : LUT4
    generic map(
      INIT => X"6CC6"
    )
    port map (
      I0 => result_cmp_eq0007,
      I1 => A_2_IBUF_6,
      I2 => B_2_IBUF_14,
      I3 => Madd_result_addsub0001_cy(1),
      O => result_mux0003(2)
    );
  Madd_result_addsub0001_cy_2_11 : LUT3
    generic map(
      INIT => X"D4"
    )
    port map (
      I0 => B_2_IBUF_14,
      I1 => A_2_IBUF_6,
      I2 => Madd_result_addsub0001_cy(1),
      O => Madd_result_addsub0001_cy(2)
    );
  Madd_result_addsub0001_cy_1_11 : LUT4
    generic map(
      INIT => X"5D04"
    )
    port map (
      I0 => B_1_IBUF_13,
      I1 => A_0_IBUF_4,
      I2 => B_0_IBUF_12,
      I3 => A_1_IBUF_5,
      O => Madd_result_addsub0001_cy(1)
    );
  result_mux0003_3_1 : LUT4
    generic map(
      INIT => X"6CC6"
    )
    port map (
      I0 => result_cmp_eq0007,
      I1 => A_3_IBUF_7,
      I2 => B_3_IBUF_15,
      I3 => Madd_result_addsub0001_cy(2),
      O => result_mux0003(3)
    );
  result_mux0003_1_1_SW0 : LUT4
    generic map(
      INIT => X"F75D"
    )
    port map (
      I0 => sel_1_IBUF_67,
      I1 => A_0_IBUF_4,
      I2 => B_0_IBUF_12,
      I3 => B_1_IBUF_13,
      O => N30
    );
  result_mux0003_1_1 : LUT4
    generic map(
      INIT => X"AAA6"
    )
    port map (
      I0 => A_1_IBUF_5,
      I1 => cin_IBUF_46,
      I2 => sel_0_IBUF_66,
      I3 => N30,
      O => result_mux0003(1)
    );
  result_0_Q : MUXF5
    port map (
      I0 => N32,
      I1 => N33,
      S => M_IBUF_25,
      O => F_0_OBUF_20
    );
  result_0_F : LUT4
    generic map(
      INIT => X"C72C"
    )
    port map (
      I0 => sel_1_IBUF_67,
      I1 => A_0_IBUF_4,
      I2 => sel_0_IBUF_66,
      I3 => B_0_IBUF_12,
      O => N32
    );
  result_0_G : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => sel_1_IBUF_67,
      I1 => result_addsub0000(0),
      I2 => sel_0_IBUF_66,
      O => N33
    );
  result_1_Q : MUXF5
    port map (
      I0 => N34,
      I1 => N35,
      S => M_IBUF_25,
      O => F_1_OBUF_21
    );
  result_1_F : LUT4
    generic map(
      INIT => X"C72C"
    )
    port map (
      I0 => sel_1_IBUF_67,
      I1 => A_1_IBUF_5,
      I2 => sel_0_IBUF_66,
      I3 => B_1_IBUF_13,
      O => N34
    );
  result_1_G : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => sel_1_IBUF_67,
      I1 => result_addsub0000(1),
      I2 => sel_0_IBUF_66,
      O => N35
    );
  result_2_Q : MUXF5
    port map (
      I0 => N36,
      I1 => N37,
      S => M_IBUF_25,
      O => F_2_OBUF_22
    );
  result_2_F : LUT4
    generic map(
      INIT => X"C72C"
    )
    port map (
      I0 => sel_1_IBUF_67,
      I1 => A_2_IBUF_6,
      I2 => sel_0_IBUF_66,
      I3 => B_2_IBUF_14,
      O => N36
    );
  result_2_G : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => sel_1_IBUF_67,
      I1 => result_addsub0000(2),
      I2 => sel_0_IBUF_66,
      O => N37
    );
  result_3_Q : MUXF5
    port map (
      I0 => N38,
      I1 => N39,
      S => M_IBUF_25,
      O => F_3_OBUF_23
    );
  result_3_F : LUT4
    generic map(
      INIT => X"C72C"
    )
    port map (
      I0 => sel_1_IBUF_67,
      I1 => A_3_IBUF_7,
      I2 => sel_0_IBUF_66,
      I3 => B_3_IBUF_15,
      O => N38
    );
  result_3_G : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => sel_1_IBUF_67,
      I1 => result_addsub0000(3),
      I2 => sel_0_IBUF_66,
      O => N39
    );

end Structure;

