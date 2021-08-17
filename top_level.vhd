

LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.Std_Logic_Arith.all;
ENTITY top_level IS
	GENERIC (FRQ:INTEGER:=50000000);
  PORT(
        clkin           : IN    STD_LOGIC;  --system clock
        rw, rs, e       : OUT   STD_LOGIC;  --read/write, setup/data, and enable for lcd
        lcd_data        : OUT   STD_LOGIC_VECTOR(7 DOWNTO 0);
        constrastup     :in     std_logic;
        s_min   :in     std_logic;
		  s_hour	   :in     std_logic;
		  s_month:in std_logic;
		  s_year:in std_logic;
	    led             :out    std_logic	;
        leddbkey        :out    std_logic
			); --data signals for lcd
END top_level;

ARCHITECTURE behavior OF top_level IS
  SIGNAL   lcd_enable : STD_LOGIC;
  SIGNAL   lcd_bus    : STD_LOGIC_VECTOR(9 DOWNTO 0);
  SIGNAL   lcd_busy   : STD_LOGIC;
signal led_duty_cycle:std_logic_vector (3 downto 0 ):="1001";
signal dbkey,a:std_logic:='0';
 

  COMPONENT lcd_controller IS
  GENERIC(
    clk_freq       :  INTEGER    := 50;    --system clock frequency in MHz
    display_lines  :  STD_LOGIC  := '1';   --number of display lines (0 = 1-line mode, 1 = 2-line mode)
    character_font :  STD_LOGIC  := '0';   --font (0 = 5x8 dots, 1 = 5x10 dots)
    display_on_off :  STD_LOGIC  := '1';   --display on/off (0 = off, 1 = on)
    cursor         :  STD_LOGIC  := '0';   --cursor on/off (0 = off, 1 = on)
    blink          :  STD_LOGIC  := '0';   --blink on/off (0 = off, 1 = on)
    inc_dec        :  STD_LOGIC  := '1';   --increment/decrement (0 = decrement, 1 = increment)
    shift          :  STD_LOGIC  := '0');  --shift on/off (0 = off, 1 = on)
    PORT(
       clk        : IN  STD_LOGIC; --system clock
       reset_n    : IN  STD_LOGIC; --active low reinitializes lcd
       lcd_enable : IN  STD_LOGIC; --latches data into lcd controller
       lcd_bus    : IN  STD_LOGIC_VECTOR(9 DOWNTO 0); --data and control signals
       busy       : OUT STD_LOGIC; --lcd controller busy/idle feedback
       rw, rs, e  : OUT STD_LOGIC; --read/write, setup/data, and enable for lcd
       lcd_data   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)); --data signals for lcd
  END COMPONENT;

-------------
	component pll is
		port (
			refclk   : in  std_logic := 'X'; -- clk
			rst      : in  std_logic := 'X'; -- reset
			outclk_0 : out std_logic         -- clk
		);
	end component pll;

-------------------------------------------------------------------
COMPONENT PWM  
Generic (
	BIT_DEPTH	: integer := 8;
	INPUT_CLK	: integer := 50000000; -- 50MHz
	FREQ		: integer := 50); -- 50Hz
Port (
	Pwm_Out 	: out std_logic;
	Duty_Cycle	: in std_logic_vector(BIT_DEPTH - 1 downto 0);
	Clk			: in std_logic;
	Enable		: in std_logic);
end COMPONENT;


signal sec		:	integer range 0 to 59 :=0;
signal min		:	integer range 0 to 59 :=0;
signal hour		:	integer range 1 to 12:=1;
signal day		:	integer range 1 to 31 :=1;
signal month	:	integer range 1 to 12 :=1;
signal year		:	integer range 20 to 50 :=20;
signal clk		:	std_logic;
signal pm,am	:	std_logic_vector(19 downto 0):=(others=>'0');
signal apm		:	std_logic_vector(19 downto 0):="10011000011001101101";
signal months	:	std_logic_vector(23 downto 0):="010010100110000101101110";
signal set		:	std_logic_vector(3 downto 0):=(others=>'0');
signal endday:integer range 28 to 31:=31;
-------------------------------------------------------------------
BEGIN

clk<=clkin;

gcontraxt: PWM  Generic map(
	                        BIT_DEPTH	=>4,        --: integer := 8;
	                        INPUT_CLK	=>FRQ, --: integer := 100000000; -- 50MHz
	                        FREQ		=>300        --: integer := 50
                            ) -- 50Hz
                Port map   (
	                        Pwm_Out 	=>led,  --: out std_logic;
	                        Duty_Cycle	=>led_duty_cycle  ,--: in std_logic_vector(BIT_DEPTH - 1 downto 0);
	                        Clk			=> clk  ,  --: in std_logic;
	                        Enable		=> '0'    --: in std_logic
                                );

---------------------------------------------------

  dut: lcd_controller
 

    PORT MAP(
             clk        => clk,
             reset_n    => '1',
             lcd_enable => lcd_enable,
             lcd_bus    => lcd_bus,
			 busy       => lcd_busy,
             rw         => rw,
             rs         => rs,
             e          => e,
             lcd_data   => lcd_data
            );
  leddbkey<=constrastup;
  PROCESS(clk)
    VARIABLE char  :  INTEGER RANGE 0 TO FRQ := 0;
  BEGIN
 
    IF(clk'EVENT AND clk = '1') THEN
      IF(lcd_busy = '0' AND lcd_enable = '0') THEN
	  
        IF(char < FRQ) THEN
		  if char<27 then 
		   lcd_enable<='1';
			end if;
          char := char + 1;
        END IF;
        CASE char IS
	       WHEN 1 => lcd_bus <= "100011"&conv_std_logic_vector(hour/10,4);--conv_std_logic_vector(input_1, output_1'length)
          WHEN 2 => lcd_bus <= "100011"&conv_std_logic_vector(hour mod 10,4);
          WHEN 3 => lcd_bus <= "100011"&"1010";	  
          WHEN 4 => lcd_bus <= "100011"&conv_std_logic_vector(min/10,4);
          WHEN 5 => lcd_bus <= "100011"&conv_std_logic_vector(min mod 10,4);
          WHEN 6 => lcd_bus <= "100011"&"1010";
          WHEN 7 => lcd_bus <= "100011"&conv_std_logic_vector(sec/10,4);
          WHEN 8 => lcd_bus <= "100011"&conv_std_logic_vector(sec mod 10,4) ;
          WHEN 9 => lcd_bus <= "101010"&"0000";
          WHEN 10 => lcd_bus <= apm(19 downto 10);			 
          WHEN 11 => lcd_bus <= apm(9 downto 0);
			 when 12 => lcd_bus<=  "0011000000";
			 when 13 =>lcd_bus<="10"&months(23 downto 16);
			 when 14 =>lcd_bus<="10"&months(15 downto 8);
			 when 15 =>lcd_bus<="10"&months(7 downto 0);
			 WHEN 16 => lcd_bus <= "1010100000";
			 WHEN 17 => lcd_bus <= "1010100000";
			 when 18 =>lcd_bus<="100011"&conv_std_logic_vector(day/10,4);
			 when 19=>lcd_bus<="100011"&conv_std_logic_vector(day mod 10,4) ;
			 when 20 =>lcd_bus<="1010100000";
			 when 21 =>lcd_bus<="1000110010";
			 when 22 =>lcd_bus<="1000110000";
			 when 23 =>lcd_bus<="100011"&conv_std_logic_vector(year/10,4);
			 when 24 =>lcd_bus<="100011"&conv_std_logic_vector(year mod 10,4) ;
			 when 25 => lcd_bus<=  "0000000010";
			 when FRQ=>char:=0;
          WHEN OTHERS => lcd_enable <= '0'; 
        END CASE;
      ELSE
        lcd_enable <= '0';
      END IF;
    END IF;
	 
  END PROCESS;
  
  set<=s_year&s_month&s_hour&s_min;
process(clk,set)
variable char: integer range 0 to FRQ :=0;
begin 
	
		if rising_edge(clk) then ---1
			if char<FRQ then ---2
				char:=char+1;
			else
			char:=0;
				CASE set IS 
					WHEN "0000" =>
							
							if sec<59  then 
								sec<=sec+1;
							else
								sec<=0;
								if min<59 then 
									min<=min+1;
								else 
									min<=0;
									if hour<11 then 
										hour<=hour+1;
									else 
										hour<=1;
										if apm=am then 
											apm<=pm;
										else 
											apm <=am;
											if day <endday then
												day<=day+1;
											else
												day<=1;
												if month<12  then
													month<=month+1;
												else 
													month<=1;
													if year<50 then
														year<=year+1;
													else 
														year<=20;
													end if;
												end if;
											end if;
										end if;
									end if;
								end if;
							end if;
											
												
					WHEN "0001" => 
							if min<59 then 
								min <=min+1;
							else 
								min<=0;
							end if;
							
					WHEN "0010"=> --set 	
							if hour<11 	then 
								hour<=hour+1;
							else 
								hour<=1;
								if apm=am then 
									apm<=pm;
								else 
									apm <=am;
								end if;
							end if;
								
					WHEN "0100" => --set day
							if day <endday then
								day<=day+1;
							else
								day<=1;
							end if;
								
					WHEN "1000"=>-- set month
							if month<12 then 
								month<=month+1;
							else 
								month <=1;
							end if ;
					WHEN OTHERS=>-- set year
								if year<50 then
									year<=year+1;
								else 
									year<=20;
								end if;
								

				END CASE ;
				
			end if;
		END IF;
end process;


am<="1001100001"&"1001101101";
pm<="1001110000"&"1001101101";

process (month)

begin 
case month is 
		when 1 =>months<="01001010"&--J January
							  "01100001"&--a
							  "01101110";
		when 2 =>months<="01000110"&--F February
							  "01100101"&--e
							  "01100010";							  
		when 3 =>months<="01001101"&--M
							  "01100001"&--a
							  "01110010";--
		when 4  =>months<="01000001"&--A April
							  "01110000"&--p
							  "01110010";--r
		when 5  =>months<="01001101"&-- May
							  "01100001"&-- a
							  "01111001";--y
		when 6  =>months<="01001010"&--June
							  "01110101"&--u
							  "01101110";
		when 7  =>months<="01001010"&--July
							  "01110101"&--u
							  "01101100";
		when 8  =>months<="01000001"&--August
							  "01110101"&--u
							  "01100111";
		when 9  =>months<="01010011"&-- September
							  "01100101"&--e
							  "01110000";	
		when 10  =>months<="01001111"&--October
							  "01100011"&--c
							  "01110100";
		when 11 =>months<="01001110"&--November
							  "01101111"&--o
							  "01110110";
		when 12  =>months<="01000100"&--December
							  "01100101"&--e
							  "01100011";
		when others =>months<=(others=>'0');
end case;

case month is 
      when 1      =>  endday<=31; ---31
		when 3	=>	endday<=31; ---31
		when 5	=>	endday<=31; ---31
		when 7	=>	endday<=31; ---31
		when 8	=>	endday<=31; ---31
		when 10	=>	endday<=31; ---31
		when 12	=>	endday<=31; ---31
		when 4	=>	endday<=30;
		when 6	=>	endday<=30;
		when 9	=>	endday<=30;
		when 11	=>	endday<=30;
      when others	=>endday<=28;
end case;
end process;

END behavior;
