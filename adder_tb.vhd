library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity adder_tb is
    end entity adder_tb;

architecture arch_adder_tb of adder_tb is
    signal a_s,b_s,s_s : std_logic_vector(15 downto 0);
    signal cout_s : std_logic;

    component adder is
        port(a,b:in std_logic_vector(15 downto 0);
        s : out std_logic_vector(15 downto 0);
        cout : out std_logic);
    end component adder;

begin
    map0 : adder port map(a_s,b_s,s_s,cout_s);
    calc1 : process
    begin
        a_s <= "1011001101001010";
        b_s <= "1010100101110111";
        wait for 40 ns;
    end process;
    
    calc2 : process
    begin
        a_s <= "0001111011001101";
        b_s <= "1110101100011110";
        wait for 40 ns;
    end process;

    calc3 : process
    begin
        a_s <= "0010110011111000";
        b_s <= "0110101011101011";
        wait for 40 ns;
    end process;
    
end architecture arch_adder_tb;