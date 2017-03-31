library verilog;
use verilog.vl_types.all;
entity register_file is
    port(
        sys_clock       : in     vl_logic;
        reset           : in     vl_logic;
        data_in         : in     vl_logic_vector(7 downto 0);
        we              : in     vl_logic;
        addr            : in     vl_logic_vector(7 downto 0);
        data_out        : out    vl_logic_vector(7 downto 0);
        tpu_control     : out    vl_logic_vector(7 downto 0);
        tpuint_byte0    : out    vl_logic_vector(7 downto 0);
        tpuint_byte1    : out    vl_logic_vector(7 downto 0);
        tx_slot         : out    vl_logic_vector(7 downto 0);
        rx_slot         : out    vl_logic_vector(7 downto 0);
        rsttpu          : out    vl_logic;
        intflag         : in     vl_logic
    );
end register_file;
