library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity pixel_render is
    Port (
        pix_clk      : in  STD_LOGIC;
        h_cnt        : in  std_logic_vector(11 downto 0);
        v_cnt        : in  std_logic_vector(11 downto 0);
        blank        : in  std_logic;
        zoom_x2      : in  STD_LOGIC;
        frame_fix    : in  STD_LOGIC_VECTOR (11 downto 0);
        bili_cntl    : in  STD_LOGIC;
        fr_address   : out std_logic_vector(18 downto 0);
        vga_red      : out std_logic_vector(3 downto 0);
        vga_blue     : out std_logic_vector(3 downto 0);
        vga_green    : out std_logic_vector(3 downto 0);
        cntl         : in std_logic
    );
end pixel_render;

architecture Behavioral of pixel_render is
    signal val_tmp  : std_logic_vector(18 downto 0) := (others => '0'); -- Temporary for zoom calculation
    signal val_zoom : std_logic_vector(18 downto 0) := (others => '0'); -- Zoomed address calculation
    signal fr_addr  : std_logic_vector(18 downto 0) := (others => '0'); -- Frame address
    signal bg_red   : std_logic_vector(3 downto 0);
    signal bg_blue  : std_logic_vector(3 downto 0);
    signal bg_green : std_logic_vector(3 downto 0);
    
    constant CAMERA_WIDTH : integer := 640;  -- Camera width
    constant CAMERA_HEIGHT : integer := 480; -- Camera height
    constant FRAME_WIDTH : integer := 640;   -- Width of the frame
    constant FRAME_HEIGHT : integer := 480;  -- Height of the frame
    
begin
    fr_address <= fr_addr;

    -- Pixel Address and Zoom Calculation
    process(pix_clk)
    begin
        if rising_edge(pix_clk) then
            if v_cnt >= CAMERA_HEIGHT then
                val_tmp <= (others => '0');
                val_zoom <= (others => '0');
            else
                if h_cnt < CAMERA_WIDTH then
                    if h_cnt = CAMERA_WIDTH - 1 then
                        if v_cnt(0) = '0' then
                            val_tmp <= val_tmp + CAMERA_WIDTH / 2;
                        end if;
                    elsif h_cnt(0) = '0' then
                        val_tmp <= val_tmp + 1;
                    end if;
                    val_zoom <= val_zoom + 1;
                end if;
            end if;
        end if;
    end process;

    -- Frame Address Calculation
    process(pix_clk)
    begin
        if rising_edge(pix_clk) then
            if v_cnt >= CAMERA_HEIGHT then
                fr_addr <= (others => '0');
            else
                if h_cnt < CAMERA_WIDTH then
                    if zoom_x2 = '0' then -- without zoom
                        fr_addr <= fr_addr + 1;
                    elsif bili_cntl = '0' then -- with zoom switch + no bili filter switch
                        fr_addr <= val_zoom - val_tmp;
                    end if;
                end if;
            end if;
        end if;
    end process;
    
        process(pix_clk) begin
            if rising_edge(pix_clk) then
                if cntl = '1' then
                    if blank = '1' then
                        bg_red   <= "0000";
                        bg_green <= "0000";
                        bg_blue  <= "0000";
                    else 
                        bg_red   <= frame_fix(11 downto 8);
                        bg_green <= frame_fix(7 downto 4);
                        bg_blue  <= frame_fix(3 downto 0);
                    end if;
                else          
                    if h_cnt < FRAME_WIDTH/8 then
                        -- black
                        bg_red <= "0000";
                        bg_blue <= "0000";
                        bg_green <= "0000";
                    elsif(h_cnt >= FRAME_WIDTH/8 and h_cnt < FRAME_WIDTH/4) then
                        -- blue
                        bg_red <= "0000";
                        bg_blue <= "1111";
                        bg_green <= "0000";
                    elsif(h_cnt >= FRAME_WIDTH/4 and h_cnt < FRAME_WIDTH/8 * 3) then
                        -- green
                        bg_red <= "0000";
                        bg_blue <= "0000";
                        bg_green <= "1111";
                    elsif(h_cnt >= FRAME_WIDTH/8 * 3 and h_cnt < FRAME_WIDTH/2) then
                        -- cyan
                        bg_red <= "0000";
                        bg_blue <= "1111";
                        bg_green <= "1111";
                    elsif(h_cnt >= FRAME_WIDTH/2 and h_cnt < FRAME_WIDTH/8 * 5) then
                        -- red 
                        bg_red <= "1111";
                        bg_blue <= "0000";
                        bg_green <= "0000";
                    elsif(h_cnt >= FRAME_WIDTH/8 * 5 and h_cnt < FRAME_WIDTH/4 * 3) then
                        -- magenta
                        bg_red <= "1111";
                        bg_blue <= "1111";
                        bg_green <="0000";
                    elsif(h_cnt >= FRAME_WIDTH/4 * 3 and h_cnt < FRAME_WIDTH/8 * 7) then
                        -- yellow
                        bg_red <= "1111";
                        bg_blue <= "0000";
                        bg_green <= "1111";
                    elsif(h_cnt >= FRAME_WIDTH/8 * 7 and h_cnt < FRAME_WIDTH) then
                        -- white 
                        bg_red <= "1111";
                        bg_blue <= "1111";
                        bg_green <= "1111";
                     end if;
                 end if;
            end if; 
     end process;

    -- Output Assignment
    vga_red <= bg_red;
    vga_blue <= bg_blue;
    vga_green <= bg_green;
end Behavioral;