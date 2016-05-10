----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:40:01 03/16/2016 
-- Design Name: 
-- Module Name:    pcadder - Behavioral 
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

entity pcadder is
port(
	clk :in std_logic;
	inp1,inp2 :in unsigned(6 downto 0);
	oup :out unsigned(6 downto 0)
	);
end pcadder;

architecture Behavioral of pcadder is

begin
process (clk)
begin
if Clk'event and Clk ='1' then 
oup <= inp1 + inp2 + "0000001";
end if;
end process;
end Behavioral;

