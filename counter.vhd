library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity up_counter is
    port (
        cout   : out std_logic_vector(7 downto 0); -- Output of the counter
        enable : in std_logic;                      -- Enable counting
        clk    : in std_logic;                      -- Input clock
        reset  : in std_logic                       -- Input reset
    );
end entity;

architecture rtl of up_counter is
    signal count : std_logic_vector(7 downto 0);
begin
    process(clk, reset) 
    begin
        if (reset = '1') then
            count <= (others => '0');             -- Reset count to 0
        elsif (rising_edge(clk)) then
            if (enable = '1') then
                count <= count + 1;                -- Increment count when enabled
            end if;
        end if;
    end process;

    cout <= count;                                 -- Assign count to output
end architecture;
