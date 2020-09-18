library verilog;
use verilog.vl_types.all;
entity intelcoreiBOSS is
    port(
        led2            : out    vl_logic_vector(6 downto 0);
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        leds            : out    vl_logic_vector(6 downto 0);
        NEGATORY        : out    vl_logic_vector(6 downto 0);
        RTest           : out    vl_logic_vector(8 downto 0);
        Stest           : out    vl_logic_vector(0 to 7)
    );
end intelcoreiBOSS;
