----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:52:55 03/16/2016 
-- Design Name: 
-- Module Name:    main_ctrl - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main_ctrl is
port(
	clk : in std_logic;
	bit27,bit26,bit25,bit20,bit5,p : in unsigned (0 downto 0);
	bit11_5: in unsigned (6 downto 0);
	ct_mr,ct_mw,ct_m2r,ct_asrc,ct_rsrc,ct_fset,ct_rw,ct_mulordpsel,ct_mulordpresult,ct_extn: out unsigned (0 downto 0);
	ct_bs : out unsigned (6 downto 0)
	);
end main_ctrl;

architecture Behavioral of main_ctrl is

begin


end Behavioral;

