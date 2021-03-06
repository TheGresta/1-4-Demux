
-- VHDL code for 1-4 DEMUX
-- Muhammet Din? 330062

Library IEEE;
USE IEEE.std_logic_1164.all;

Entity demux1_4 IS
-- A veri giri?i, S iki bitlik se?me giri?i,
-- X0,X1,X2,X3 ??k??lar? belirtilmi?tir.
Port(A: IN std_logic_vector(1 downto 0);
     S: IN std_logic_vector(1 downto 0);
     X0,X1,X2,X3:OUT std_logic_vector(1 downto 0));
End demux1_4;

Architecture Behv3 of demux1_4 IS
Begin
-- Verilen S de?erlerine g?re a giri?ini,
-- X0,X1,X2,X3 ??k?? de?erlerinden birine
-- aktarm?? oluruz.
-- Bu form?l? olu?turmak i?in a??a??daki
-- i?lemler yerine getirilmi?tir.
-- X0 = S1'S0'A
-- X1 = S1'S0 A
-- X2 = S1 S0'A
-- X3 = S1 S0 A
-- Bu i?lemler sonucunda iki bitlik se?me
-- giri?ine g?re A giri?inin hangi ??k??a
-- aktar?lmas? gerekti?ini g?rm?? oluruz.
X0<= A WHEN S="00" ELSE "ZZ";
X1<= A WHEN S="01" ELSE "ZZ";
X2<= A WHEN S="10" ELSE "ZZ";
X3<= A WHEN S="11" ELSE "ZZ";

End Behv3;

