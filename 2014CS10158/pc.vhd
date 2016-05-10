----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:31:33 03/16/2016 
-- Design Name: 
-- Module Name:    pc - Behavioral 
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

entity pc is
port(
	clk :in std_logic;
	pc_in : in unsigned(6 downto 0);
	pc_out : out unsigned(6 downto 0):= "0000001"
	);
end pc;

architecture Behavioral of pc is

begin
process (clk) 
begin
if Clk'event and Clk ='1' then pc_out <= pc_in ;
end if;
end process;

end Behavioral;

