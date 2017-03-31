library verilog;
use verilog.vl_types.all;
entity tpu is
    port(
        sys_clock       : in     vl_logic;
        reset           : in     vl_logic;
        valid           : in     vl_logic;
        addr            : in     vl_logic_vector(7 downto 0);
        data_in         : in     vl_logic_vector(7 downto 0);
        data_out        : out    vl_logic_vector(7 downto 0);
        g_clk_tx        : out    vl_logic;
        g_clk_rx        : out    vl_logic;
        tpu_int         : out    vl_logic
    );
end tpu;
