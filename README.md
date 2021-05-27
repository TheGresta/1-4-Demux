# 1-4-Demux
-- VHDL code for 1-4 DEMUX
-- Muhammet Dinç

Library IEEE;
USE IEEE.std_logic_1164.all;

Entity demux1_4 IS
-- A veri girişi, S iki bitlik seçme girişi,
-- X0,X1,X2,X3 çıkışları belirtilmiştir.
Port(A: IN std_logic_vector(1 downto 0);
     S: IN std_logic_vector(1 downto 0);
     X0,X1,X2,X3:OUT std_logic_vector(1 downto 0));
End demux1_4;

Architecture Behv3 of demux1_4 IS
Begin
-- Verilen S değerlerine göre a girişini,
-- X0,X1,X2,X3 çıkış değerlerinden birine
-- aktarmış oluruz.
-- Bu formülü oluşturmak için aşşağıdaki
-- işlemler yerine getirilmiştir.
-- X0 = S1'S0'A
-- X1 = S1'S0 A
-- X2 = S1 S0'A
-- X3 = S1 S0 A
-- Bu işlemler sonucunda iki bitlik seçme
-- girişine göre A girişinin hangi çıkışa
-- aktarılması gerektiğini görmüş oluruz.
X0<= A WHEN S="00" ELSE "ZZ";
X1<= A WHEN S="01" ELSE "ZZ";
X2<= A WHEN S="10" ELSE "ZZ";
X3<= A WHEN S="11" ELSE "ZZ";

End Behv3;
