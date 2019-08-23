library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;


entity adder_64bit is
	port(a ,b : in std_logic_vector (63 downto 0);
		sum : out std_logic_vector (63 downto 0);
		cout: out std_logic);
end adder_64bit;


architecture rtl of adder_64bit is

component full_adder is
	port (a, b, cin: in std_logic;
		cout, sum: out std_logic);
end component;	

	signal c: std_logic_vector (62 downto 0);
	signal s_int: std_logic_vector (63 downto 0);

begin 

inst_0: full_adder port map (a(0), b(0), '0', c(0), s_int(0));
inst_1: full_adder port map (a(1), b(1), c(0), c(1), s_int(1));
inst_2: full_adder port map (a(2), b(2), c(1), c(2), s_int(2));
inst_3: full_adder port map (a(3), b(3), c(2), c(3), s_int(3));
inst_4: full_adder port map (a(4), b(4), c(3), c(4), s_int(4));
inst_5: full_adder port map (a(5), b(5), c(4), c(5), s_int(5));
inst_6: full_adder port map (a(6), b(6), c(5), c(6), s_int(6));
inst_7: full_adder port map (a(7), b(7), c(6), c(7), s_int(7));
inst_8: full_adder port map (a(8), b(8), c(7), c(8), s_int(8));
inst_9: full_adder port map (a(9), b(9), c(8), c(9), s_int(9));
inst_10: full_adder port map (a(10), b(10), c(9), c(10), s_int(10));
inst_11: full_adder port map (a(11), b(11), c(10), c(11), s_int(11));
inst_12: full_adder port map (a(12), b(12), c(11), c(12), s_int(12));
inst_13: full_adder port map (a(13), b(13), c(12), c(13), s_int(13));
inst_14: full_adder port map (a(14), b(14), c(13), c(14), s_int(14));
inst_15: full_adder port map (a(15), b(15), c(14), c(15), s_int(15));
inst_16: full_adder port map (a(16), b(16), c(15), c(16), s_int(16));
inst_17: full_adder port map (a(17), b(17), c(16), c(17), s_int(17));
inst_18: full_adder port map (a(18), b(18), c(17), c(18), s_int(18));
inst_19: full_adder port map (a(19), b(19), c(18), c(19), s_int(19));
inst_20: full_adder port map (a(20), b(20), c(19), c(20), s_int(20));
inst_21: full_adder port map (a(21), b(21), c(20), c(21), s_int(21));
inst_22: full_adder port map (a(22), b(22), c(21), c(22), s_int(22));
inst_23: full_adder port map (a(23), b(23), c(22), c(23), s_int(23));
inst_24: full_adder port map (a(24), b(24), c(23), c(24), s_int(24));
inst_25: full_adder port map (a(25), b(25), c(24), c(25), s_int(25));
inst_26: full_adder port map (a(26), b(26), c(25), c(26), s_int(26));
inst_27: full_adder port map (a(27), b(27), c(26), c(27), s_int(27));
inst_28: full_adder port map (a(28), b(28), c(27), c(28), s_int(28));

inst_29: full_adder port map (a(29), b(29), c(28), c(29), s_int(29));
inst_30: full_adder port map (a(30), b(30), c(29), c(30), s_int(30));
inst_31: full_adder port map (a(31), b(31), c(30), c(31), s_int(31));
inst_32: full_adder port map (a(32), b(32), c(31), c(32), s_int(32));
inst_33: full_adder port map (a(33), b(33), c(32), c(33), s_int(33));
inst_34: full_adder port map (a(34), b(34), c(33), c(34), s_int(34));
inst_35: full_adder port map (a(35), b(35), c(34), c(35), s_int(35));
inst_36: full_adder port map (a(36), b(36), c(35), c(36), s_int(36));
inst_37: full_adder port map (a(37), b(37), c(36), c(37), s_int(37));
inst_38: full_adder port map (a(38), b(38), c(37), c(38), s_int(38));
inst_39: full_adder port map (a(39), b(39), c(38), c(39), s_int(39));
inst_40: full_adder port map (a(40), b(40), c(39), c(40), s_int(40));
inst_41: full_adder port map (a(41), b(41), c(40), c(41), s_int(41));
inst_42: full_adder port map (a(42), b(42), c(41), c(42), s_int(42));
inst_43: full_adder port map (a(43), b(43), c(42), c(43), s_int(43));
inst_44: full_adder port map (a(44), b(44), c(43), c(44), s_int(44));
inst_45: full_adder port map (a(45), b(45), c(44), c(45), s_int(45));
inst_46: full_adder port map (a(46), b(46), c(45), c(46), s_int(46));
inst_47: full_adder port map (a(47), b(47), c(46), c(47), s_int(47));

inst_48: full_adder port map (a(48), b(48), c(47), c(48), s_int(48));
inst_49: full_adder port map (a(49), b(49), c(48), c(49), s_int(49));
inst_50: full_adder port map (a(50), b(50), c(49), c(50), s_int(50));
inst_51: full_adder port map (a(51), b(51), c(50), c(51), s_int(51));
inst_52: full_adder port map (a(52), b(52), c(51), c(52), s_int(52));
inst_53: full_adder port map (a(53), b(53), c(52), c(53), s_int(53));
inst_54: full_adder port map (a(54), b(54), c(53), c(54), s_int(54));
inst_55: full_adder port map (a(55), b(55), c(54), c(55), s_int(55));
inst_56: full_adder port map (a(56), b(56), c(55), c(56), s_int(56));
inst_57: full_adder port map (a(57), b(57), c(56), c(57), s_int(57));
inst_58: full_adder port map (a(58), b(58), c(57), c(58), s_int(58));
inst_59: full_adder port map (a(59), b(59), c(58), c(59), s_int(59));
inst_60: full_adder port map (a(60), b(60), c(59), c(60), s_int(60));
inst_61: full_adder port map (a(61), b(61), c(60), c(61), s_int(61));
inst_62: full_adder port map (a(62), b(62), c(61), c(62), s_int(62));
inst_63: full_adder port map (a(63), b(63), c(62), cout, s_int(63));

sum <= s_int;
	
end architecture rtl;
