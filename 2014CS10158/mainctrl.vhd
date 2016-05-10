----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:05:19 03/16/2016 
-- Design Name: 
-- Module Name:    mainctrl - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mainctrl is
port(
	clk : in std_logic;
	bit27,bit26,bit25,bit20,bit5,p : in unsigned (0 downto 0);
	bit11_5: in unsigned (6 downto 0);
	ct_mr,ct_mw,ct_m2r,ct_asrc,ct_rsrc,ct_fset,ct_rw,ct_mulordpsel,ct_mulordpresult,ct_extn: out unsigned (0 downto 0);
	ct_bs : out unsigned (6 downto 0)
	);
end mainctrl;

architecture Behavioral of mainctrl is

begin
process (clk)
begin
if bit27 = "0" and bit26 = "0" and bit25 = "1" and bit20 = "0"
then
	ct_mr<="0";
	ct_mw<="0";
	ct_m2r<="0";
	ct_asrc<="1";
	ct_rsrc<="0";
	ct_fset<="0";
	ct_rw<=p;
	ct_mulordpsel<="1";
	ct_mulordpresult<="1";
	ct_extn<="0";
	ct_bs<="0000000";
elsif bit27 = "0" and bit26 = "0" and bit25 = "0" and bit20 = "0" and bit5 = "0"
then
	ct_mr<="0";
	ct_mw<="0";
	ct_m2r<="0";
	ct_asrc<="0";
	ct_rsrc<="0";
	ct_fset<="0";
	ct_rw<=p;
	ct_mulordpsel<="1";
	ct_mulordpresult<="1";
	ct_extn<="0";
	ct_bs<=bit11_5;
elsif bit27 = "0" and bit26 = "0" and bit25 = "1" and bit20 = "1" 
then
	ct_mr<="0";
	ct_mw<="0";
	ct_m2r<="0";
	ct_asrc<="1";
	ct_rsrc<="0";
	ct_fset<="1";
	ct_rw<=p;
	ct_mulordpsel<="1";
	ct_mulordpresult<="1";
	ct_extn<="0";
	ct_bs<="0000000";
elsif bit27 = "0" and bit26 = "0" and bit25 = "0" and bit20 = "1" and bit5 = "0"
then
	ct_mr<="0";
	ct_mw<="0";
	ct_m2r<="0";
	ct_asrc<="0";
	ct_rsrc<="0";
	ct_fset<="1";
	ct_rw<=p;
	ct_mulordpsel<="1";
	ct_mulordpresult<="1";
	ct_extn<="0";
	ct_bs<=bit11_5;
elsif bit27 = "0" and bit26 = "1" and bit25 = "1" and bit20 = "0"--5
then
	ct_mr<="0";
	ct_mw<=p;
	ct_m2r<="0";
	ct_asrc<="1";
	ct_rsrc<="0";
	ct_fset<="0";
	ct_rw<="0";
	ct_mulordpsel<="1";
	ct_mulordpresult<="1";
	ct_extn<="1";
	ct_bs<="0000000";
elsif bit27 = "0" and bit26 = "1" and bit25 = "1" and bit20 = "1" --6
then
	ct_mr<="1";
	ct_mw<="0";
	ct_m2r<="1";
	ct_asrc<="1";
	ct_rsrc<="1";
	ct_fset<="0";
	ct_rw<=p;
	ct_mulordpsel<="1";
	ct_mulordpresult<="1";
	ct_extn<="1";
	ct_bs<="0000000";
elsif bit27 = "1" and bit26 = "0"  --7
then
	ct_mr<="0";
	ct_mw<="0";
	ct_m2r<="0";
	ct_asrc<="1";
	ct_rsrc<="0";
	ct_fset<="0";
	ct_rw<="0";
	ct_mulordpsel<="1";
	ct_mulordpresult<="1";
	ct_extn<="0";
	ct_bs<="0000000";
elsif bit27 = "0" and bit26 = "0" and bit25 = "0" and bit20 = "0" and bit5 = "1"--8
then
	ct_mr<="0";
	ct_mw<="0";
	ct_m2r<="0";
	ct_asrc<="1";
	ct_rsrc<="0";
	ct_fset<="0";
	ct_rw<=p;
	ct_mulordpsel<="0";
	ct_mulordpresult<="0";
	ct_extn<="0";
	ct_bs<="0000000";
elsif bit27 = "0" and bit26 = "0" and bit25 = "0" and bit20 = "1" and bit5 = "1"--9
then
	ct_mr<="0";
	ct_mw<="0";
	ct_m2r<="0";
	ct_asrc<="1";
	ct_rsrc<="0";
	ct_fset<="1";
	ct_rw<=p;
	ct_mulordpsel<="0";
	ct_mulordpresult<="0";
	ct_extn<="0";
	ct_bs<="0000000";
end if;
end process;


end Behavioral;

