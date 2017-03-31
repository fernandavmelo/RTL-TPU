library verilog;
use verilog.vl_types.all;
entity gerador_clock is
    port(
        sys_clock       : in     vl_logic;
        reset           : in     vl_logic;
        tpu_control     : in     vl_logic_vector(7 downto 0);
        tx_slot         : in     vl_logic_vector(7 downto 0);
        rx_slot         : in     vl_logic_vector(7 downto 0);
        g_clk_tx        : out    vl_logic;
        g_clk_rx        : out    vl_logic;
        counter         : in     vl_logic_vector(15 downto 0)
    );
end gerador_clock;
