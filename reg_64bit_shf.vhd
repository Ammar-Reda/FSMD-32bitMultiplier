library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity reg_64bit_shf is

	port (clk, rst, wr, shift_left: in std_logic;
		reg_in: in std_logic_vector(31 downto 0);
		reg_out: out std_logic_vector(63 downto 0));

end entity reg_64bit_shf;

architecture rtl of reg_64bit_shf is

	signal reg_temp: std_logic_vector(63 downto 0);
begin

process (rst, clk)
begin

	if (rst = '1') then
		reg_temp <= (others => '0');
	elsif (rising_edge(clk)) then
		case shift_left is
			when '0'=>
					if (wr = '1') then
					 	reg_temp <= "00000000000000000000000000000000" & reg_in;
					end if;
			when '1' => reg_temp <= reg_temp(62 downto 0) &'0';
			when others => reg_temp <= reg_temp; --can be omitted
		end case;
	end if;

end process;
	reg_out <= reg_temp;
end architecture rtl;
