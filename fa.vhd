library ieee;
use ieee.std_logic_1164.all;

entity fa is
port( a , b , cin : in std_logic;
        s,cout : out std_logic);
end entity fa;

architecture arch_fa of fa is
    signal temp_b : std_logic;
begin
    temp_b <= b xor cin;
    s<= a xor temp_b;
    cout <= (temp_b and a) or (b and cin);

end architecture arch_fa;

