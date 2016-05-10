----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:43:20 03/16/2016 
-- Design Name: 
-- Module Name:    mux2_1_7bit - Behavioral 
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

entity mux2_1_7bit is
port(
a, b : IN unsigned(6 DOWNTO 0) ;
	s : IN unsigned(0 DOWNTO 0) ;
	f : OUT unsigned(6 DOWNTO 0) 
	);

end mux2_1_7bit;

architecture Behavioral of mux2_1_7bit is
signal result,a1,b1 : unsigned (6 downto 0):= (others => '0');
BEGIN
f<=result(6 downto 0);
a1 <=a(6 downto 0);
b1<=b(6 downto 0);
--process (clk) 
--begin
--if (rising_edge(Clk)) and s = "0" then result<=a1 ;end if;
--if (rising_edge(Clk)) and s = "1" then result<=b1 ;end if;
--end process;
WITH s SELECT
	result <= a1 WHEN "0",
			b1 WHEN OTHERS ;


end Behavioral;

