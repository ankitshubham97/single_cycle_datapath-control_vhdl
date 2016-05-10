----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:40:40 03/16/2016 
-- Design Name: 
-- Module Name:    b_ctrl - Behavioral 
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

entity b_ctrl is
port(
	clk : in std_logic;
	condfrominst: in unsigned (3 downto 0); -- 31,30,29,28
	brn : in unsigned(0 downto 0); -- 1 if branch hai else 0
	flagfromflagreg : in unsigned (3 downto 0); -- vczn
	p : out unsigned(0 downto 0);
	psrc : out unsigned(0 downto 0)
	);
end b_ctrl;

architecture Behavioral of b_ctrl is
signal v,c,z,n,pdummy,p1 : unsigned(0 downto 0);
begin
v <= flagfromflagreg(3 downto 3);
c <= flagfromflagreg(2 downto 2);
z <= flagfromflagreg(1 downto 1);
n <= flagfromflagreg(0 downto 0);
p <=p1;
process(clk)
begin
	if condfrominst = "0000"
	then p1 <=z ;
	elsif condfrominst = "0001"
	then p1 <=not z;
	elsif condfrominst = "0010"
	then p1 <=c;
	elsif condfrominst = "0011"
	then p1 <=not c;
	elsif condfrominst = "0100"
	then p1 <=n;
	elsif condfrominst = "0101"
	then p1 <=not n;
	elsif condfrominst = "0110"
	then p1 <=v;
	elsif condfrominst = "0111"
	then p1 <=not v;
	elsif condfrominst = "1000"
	then p1 <=c and (not z);
	elsif condfrominst = "1001"
	then p1 <=(not c) or z;
	elsif condfrominst = "1010"
	then p1 <= not(n xor v);
	elsif condfrominst = "1011"
	then p1 <= n xor v;
	elsif condfrominst = "1100"
	then p1 <= (not z) and (not(n xor v));
	elsif condfrominst = "1101"
	then p1 <= z and ((n xor v));
	elsif condfrominst = "1110"
	then p1 <= z or (not z);
	end if;
	
end process;
psrc <= p1 and brn;
end Behavioral;

