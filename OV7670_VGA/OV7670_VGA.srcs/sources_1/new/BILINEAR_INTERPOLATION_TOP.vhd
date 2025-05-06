----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/06/2025 12:01:57 PM
-- Design Name: 
-- Module Name: BILINEAR_INTERPOLATION_TOP - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; -- Use this for proper arithmetic operations

entity BILINEAR_INTERPOLATION_TOP is
  Port ( 
        clk_vga             : in  std_logic; -- 25.175MHz
        clk_in1             : in  std_logic; -- 100 MHz
        clk_interpolation   : in  std_logic; -- 25.175/4 MHz
        reset               : in  std_logic; -- 25.175/4 MHz
        pixel_in            : in  std_logic_vector(11 downto 0);
        write_enable        : out std_logic; 
        pixel_out           : out std_logic_vector(11 downto 0); 
        address_out         : out std_logic_vector(18 downto 0) 
  );
end BILINEAR_INTERPOLATION_TOP;

architecture Behavioral of BILINEAR_INTERPOLATION_TOP is

    signal eight_pixel_in       : std_logic_vector (95 downto 0)  := (others => '0'); -- 8 pixels x 12 bits
    signal filtered_pixel_out   : std_logic_vector (191 downto 0) := (others => '0'); -- 16 filtered pixels x 12 bits
    signal A, B, C, D           : std_logic_vector(11 downto 0)   := (others => '0');

    -- signal h_cnt                : std_logic_vector(1 downto 0) := (others => '0');
    -- signal v_cnt                : std_logic_vector(1 downto 0) := (others => '0');
    
    signal address_out_sig      : std_logic_vector(18 downto 0) := (others => '0');
    
    signal wr_en_sig            : std_logic := '0';
    signal wr_en_sig_d          : std_logic := '0';

begin

    -- Enable write operation
    write_enable <= wr_en_sig;

    -- Process to collect 4x2 pixels
    process (clk_vga, reset)
    begin
        if reset = '1' then
            eight_pixel_in <= (others => '0');
            A              <= (others => '0');
            B              <= (others => '0');
            C              <= (others => '0');
            D              <= (others => '0');
        elsif rising_edge(clk_vga) then
            eight_pixel_in <= eight_pixel_in(83 downto 0) & pixel_in; -- Shift and append the incoming pixel
            if clk_interpolation = '1' then
                A              <= eight_pixel_in(11 downto 0);
                B              <= eight_pixel_in(23 downto 12);
                C              <= eight_pixel_in(35 downto 24);
                D              <= eight_pixel_in(47 downto 36);
            end if;
        end if;
    end process;

    -- Process to calculate bilinear interpolation
    process (clk_interpolation, reset)
        variable A_int, B_int, C_int, D_int : unsigned(11 downto 0); -- Internal unsigned representations
        variable P11_int, P12_int, P13_int, P14_int : unsigned(11 downto 0); -- Row 1
        variable P21_int, P22_int, P23_int, P24_int : unsigned(11 downto 0); -- Row 2
        variable P31_int, P32_int, P33_int, P34_int : unsigned(11 downto 0); -- Row 3
        variable P41_int, P42_int, P43_int, P44_int : unsigned(11 downto 0); -- Row 4
    begin
        if reset = '1' then
            wr_en_sig <= '0';
        elsif rising_edge(clk_interpolation) then
            -- Enable write operation only when 4 pixels received
            wr_en_sig <= '1';
            wr_en_sig_d <= wr_en_sig;

            -- Convert inputs from std_logic_vector to unsigned for arithmetic
            A_int := unsigned(A);
            B_int := unsigned(B);
            C_int := unsigned(C);
            D_int := unsigned(D);

            -- Row 1 (Horizontal interpolation)
            P11_int := A_int; -- Top-left corner
            P12_int := resize(A_int + (B_int - A_int) / 4, 12); -- Horizontal interpolation
            P13_int := resize(A_int + (3 * (B_int - A_int)) / 4, 12);
            P14_int := B_int; -- Top-right corner

            -- Row 4 (Horizontal interpolation)
            P41_int := C_int; -- Bottom-left corner
            P42_int := resize(C_int + (D_int - C_int) / 4, 12);
            P43_int := resize(C_int + (3 * (D_int - C_int)) / 4, 12);
            P44_int := D_int; -- Bottom-right corner

            -- Row 2 (Vertical and Bilinear interpolation)
            P21_int := resize(A_int + (C_int - A_int) / 4, 12); -- Vertical interpolation
            P24_int := resize(B_int + (D_int - B_int) / 4, 12);
            P22_int := resize((2 * A_int + B_int + 2 * C_int + D_int) / 8, 12); -- Bilinear interpolation
            P23_int := resize((A_int + 2 * B_int + 2 * C_int + D_int) / 8, 12);

            -- Row 3 (Vertical and Bilinear interpolation)
            P31_int := resize(A_int + (3 * (C_int - A_int)) / 4, 12); -- Vertical interpolation
            P34_int := resize(B_int + (3 * (D_int - B_int)) / 4, 12);
            P32_int := resize((2 * A_int + B_int + C_int + 2 * D_int) / 8, 12); -- Bilinear interpolation
            P33_int := resize((A_int + 2 * B_int + C_int + 2 * D_int) / 8, 12);

            -- Combine filtered pixels into a single output
            filtered_pixel_out <= std_logic_vector(P11_int) & std_logic_vector(P12_int) & std_logic_vector(P13_int) & std_logic_vector(P14_int) &
                                  std_logic_vector(P21_int) & std_logic_vector(P22_int) & std_logic_vector(P23_int) & std_logic_vector(P24_int) &
                                  std_logic_vector(P31_int) & std_logic_vector(P32_int) & std_logic_vector(P33_int) & std_logic_vector(P34_int) &
                                  std_logic_vector(P41_int) & std_logic_vector(P42_int) & std_logic_vector(P43_int) & std_logic_vector(P44_int);
        end if;
    end process;

    -- Process to transmit pixels to BRAM
    process (clk_in1, reset)
        variable i : integer := 0;
    begin
        if reset = '1' then
            pixel_out <= (others => '0');
            i := 0;
        elsif rising_edge(clk_in1) then
            -- Output the filtered pixel
            pixel_out <= filtered_pixel_out((i * 12 + 11) downto (i * 12));
            -- Increment 'i' and reset to zero when it reaches 16
            i := i + 1;
            if i = 16 then
                i := 0;
            end if;
        end if;
    end process;

    -- Process to calculate address for BRAM
-- Process to calculate address for BRAM using 4�4 block-based scan
process (clk_in1, reset)
    -- Local variables for block-based scan
    variable h_block     : integer := 0;  -- Horizontal start of 4�4 block
    variable v_block     : integer := 0;  -- Vertical start of 4�4 block
    variable local_h     : integer := 0;  -- Column offset inside 4�4 block
    variable local_v     : integer := 0;  -- Row offset inside 4�4 block
    variable h_cnt       : integer := 0;  -- Final horizontal pixel index
    variable v_cnt       : integer := 0;  -- Final vertical pixel index
begin
    if reset = '1' then
        address_out_sig <= (others => '0');
        h_block     := 0;
        v_block     := 0;
        local_h     := 0;
        local_v     := 0;
    elsif rising_edge(clk_in1) and wr_en_sig_d = '1' then
        -- Calculate actual horizontal and vertical pixel coordinates
        h_cnt := h_block + local_h;
        v_cnt := v_block + local_v;

        -- Write address = row � 640 + column
        address_out_sig <= std_logic_vector(to_unsigned(v_cnt * 640 + h_cnt, address_out_sig'length));

        -- Update counters
        if local_h = 3 then
            local_h := 0;
            if local_v = 3 then
                local_v := 0;
                if h_block = 636 then
                    h_block := 0;
                    if v_block = 476 then
                        v_block := 0; -- Full scan complete; restart
                    else
                        v_block := v_block + 4; -- Next row of blocks
                    end if;
                else
                    h_block := h_block + 4; -- Next column block
                end if;
            else
                local_v := local_v + 1; -- Next row inside block
            end if;
        else
            local_h := local_h + 1; -- Next column inside block
        end if;
    end if;
end process;


    address_out <= address_out_sig;

end Behavioral;