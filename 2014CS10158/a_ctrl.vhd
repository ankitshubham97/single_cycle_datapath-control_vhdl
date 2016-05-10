----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:25:14 03/16/2016 
-- Design Name: 
-- Module Name:    a_ctrl - Behavioral 
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

entity a_ctrl is
port(
	clk : in std_logic;
	in_a_ctrl : in unsigned(4 downto 0);--26,24,23,22,21
	out_a_ctrl : out unsigned(3 downto 0)
	);
end a_ctrl;

architecture Behavioral of a_ctrl is

begin
process(clk)
begin
	if in_a_ctrl(4 downto 4) = "0"
	then out_a_ctrl <= in_a_ctrl(3 downto 0);
	elsif in_a_ctrl(4 downto 4) = "1" and in_a_ctrl(2 downto 2) = "1"
	then out_a_ctrl <= "0100";
	elsif in_a_ctrl(4 downto 4) = "1" and in_a_ctrl(2 downto 2) = "0"
	then out_a_ctrl <= "0010";
	end if;
	 
end process;

end Behavioral;

