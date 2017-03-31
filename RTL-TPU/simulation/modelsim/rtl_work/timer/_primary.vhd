library verilog;
use verilog.vl_types.all;
entity timer is
    port(
        sys_clock       : in     vl_logic;
        reset           : in     vl_logic;
        rsttpu          : in     vl_logic;
        tpu_control     : in     vl_logic_vector(7 downto 0);
        tpuint_byte0    : in     vl_logic_vector(7 downto 0);
        tpuint_byte1    : in     vl_logic_vector(7 downto 0);
        tpu_int         : out    vl_logic;
        counter         : out    vl_logic_vector(15 downto 0);
        intflag         : out    vl_logic
    );
end timer;
