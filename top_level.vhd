--------------------------------------------------------------------------------
--
--   FileName:         lcd_example.vhd
--   Dependencies:     none
--   Design Software:  Quartus II 32-bit Version 11.1 Build 173 SJ Full Version
--
--   HDL CODE IS PROVIDED "AS IS."  DIGI-KEY EXPRESSLY DISCLAIMS ANY
--   WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
--   PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL DIGI-KEY
--   BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
--   DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
--   PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
--   BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
--   ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
--
--   Version History
--   Version 1.0 6/13/2012 Scott Larson
--     Initial Public Release
--
--   Prints "123456789" on a HD44780 compatible 8-bit interface character LCD 
--   module using the lcd_controller.vhd component.
--
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.Std_Logic_Arith.all;
ENTITY top_level IS
  PORT(
        clkin           : IN    STD_LOGIC;  --system clock
        rw, rs, e       : OUT   STD_LOGIC;  --read/write, setup/data, and enable for lcd
        lcd_data        : OUT   STD_LOGIC_VECTOR(7 DOWNTO 0);
        constrastup     :in     std_logic;
        constrastdown   :in     std_logic;
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


signal s0 :std_logic_vector(3 downto 0):=(others=>'0');
signal s1 :std_logic_vector(3 downto 0):=(others=>'0');
signal m0 :std_logic_vector(3 downto 0):="1001";
signal m1 :std_logic_vector(3 downto 0):="0101";
signal h0 :std_logic_vector(3 downto 0):="0010";
signal h1 :std_logic_vector(3 downto 0):="0001";
signal clk:std_logic;
signal pm,am: std_logic_vector(19 downto 0):=(others=>'0');
signal apm: std_logic_vector(19 downto 0):="10011000011001101101";
signal months:std_logic_vector(71 downto 0):="010010100110000101101110011101010110000101110010011110011010000010100000";
signal month:integer range 1 to 12 :=1;
signal year: std_logic_vector(15 downto 0):="0011001000110001";
-------------------------------------------------------------------
BEGIN

clk<=clkin;

gcontraxt: PWM  Generic map(
	                        BIT_DEPTH	=>4,        --: integer := 8;
	                        INPUT_CLK	=>50000000, --: integer := 100000000; -- 50MHz
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
    VARIABLE char  :  INTEGER RANGE 0 TO 50000000 := 0;
  BEGIN
    IF(clk'EVENT AND clk = '1') THEN
      IF(lcd_busy = '0' AND lcd_enable = '0') THEN
	  
        IF(char < 50000000) THEN
		  if char<27 then 
		   lcd_enable<='1';
			end if;
          char := char + 1;
        END IF;
        CASE char IS
	       WHEN 1 => lcd_bus <= "100011"&h1;
          WHEN 2 => lcd_bus <= "100011"&h0;
          WHEN 3 => lcd_bus <= "100011"&"1010";	  
          WHEN 4 => lcd_bus <= "100011"&m1;
          WHEN 5 => lcd_bus <= "100011"&m0;
          WHEN 6 => lcd_bus <= "100011"&"1010";
          WHEN 7 => lcd_bus <= "100011"&s1;
          WHEN 8 => lcd_bus <= "100011"&s0;
          WHEN 9 => lcd_bus <= "101010"&"0000";
          WHEN 10 => lcd_bus <= apm(19 downto 10);			 
          WHEN 11 => lcd_bus <= apm(9 downto 0);
			 when 12 => lcd_bus<=  "0011000000";
			 when 13 =>lcd_bus<="10"&months(71 downto 64);
			 when 14 =>lcd_bus<="10"&months(63 downto 56);
			 when 15 =>lcd_bus<="10"&months(55 downto 48);
			 when 16 =>lcd_bus<="10"&months(47 downto 40);
			 when 17 =>lcd_bus<="10"&months(39 downto 32);
			 when 18 =>lcd_bus<="10"&months(31 downto 24);
			 when 19 =>lcd_bus<="10"&months(23 downto 16);
			 when 20 =>lcd_bus<="10"&months(15 downto 8);
			 when 21 =>lcd_bus<="10"&months(7 downto 0);
			 when 22 =>lcd_bus<="1010100000";
			 when 23 =>lcd_bus<="1000110010";
			 when 24 =>lcd_bus<="1000110000";
			 when 25 =>lcd_bus<="10"&year(15 downto 8);
			 when 26 =>lcd_bus<="10"&year(7 downto 0);
			 when 27 => lcd_bus<=  "0000000010";
			 when 50000000=>char:=0;
          WHEN OTHERS => lcd_enable <= '0'; 
        END CASE;
      ELSE
        lcd_enable <= '0';
      END IF;
    END IF;
  END PROCESS;
process(clk)
variable char: integer range 0 to 50000000 :=0;
begin 
if rising_edge(clk) then ---1
	if char<50000000 then ---2
		char:=char+1;
	elsif char=50000000 then ---3
			char:=0;
			if s0<9 then 
				s0<=s0+1;
			else
				s0<=(others=>'0');
				if s1<5 then 
					s1<=s1+1;
				else 
					s1<=(others=>'0');
					if m0< 9 then 
						m0<=m0+1;
					else 
						m0<=(others=>'0');
						if m1 <5 then
							m1<=m1+1;
						else
							m1<=(others=>'0');
							if h1=0  then
									if h0<9 then
										h0<=h0+1;
									else 
										h0<=(others=>'0');
										h1<=h1+1;
									end if;
							else
								if h0<2 then 
									h0<=h0+1;
								else
									h0<="0001";
									h1<=(others=>'0');
									if apm=am then
										apm<=pm;
									else
										apm<=pm;
									end if;
								end if;
							end if;
						end if;
					end if;
				end if;
			end if;
			
	end if;
end if;

end process;


am<="1001100001"&"1001101101";
pm<="1001110000"&"1001101101";
--January	- 31 days
--February	- 28 days in a common year and 29 days in leap years
--March		- 31 days
--April		- 30 days
--May 		- 31 days
--June		- 30 days
--July		- 31 days
--August		- 31 days
--September - 30 days
--October	- 31 days
--November	- 30 days
--December	- 31 days

process (constrastup)

begin 
if rising_edge(constrastup) then 
	if month<12 then 
	month<=month+1;
	else 
	month <=1;
	end if ;
	case month is 
		when 1 =>months<="01001010"&--J January
							  "01100001"&--a
							  "01101110"&--n
							  "01110101"&--u
							  "01100001"&--a
							  "01110010"&--r
							  "01111001"&--y
							  "10100000"&
							  "10100000";
		when 2 =>months<="01000110"&--F February
							  "01100101"&--e
							  "01100010"&--b
							  "01110010"&--r
							  "01110101"&--u
							  "01100001"&--a
							  "01110010"&--r
							  "01111001"&--y
							  "10100000";							  
							  
		when 3 =>months<="01001101"&--M
							  "01100001"&--a
							  "01110010"&--r
							  "01100011"&--c
							  "01101000"&--h
							  "10100000"&--
							  "10100000"&--
							  "10100000"&--
							  "10100000";--
		when 4  =>months<="01000001"&--A April
							  "01110000"&--p
							  "01110010"&--r
							  "01101001"&--i
							  "01101100"&--l
							  "10100000"&--
							  "10100000"&--
							  "10100000"&--
							  "10100000";--
		when 5  =>months<="01001101"&-- May
							  "01100001"&-- a
							  "01111001"&-- y
							  "10100000"&
							  "10100000"&
							  "10100000"&
							  "10100000"&
							  "10100000"&
							  "10100000";
		when 6  =>months<="01001010"&--June
							  "01110101"&--u
							  "01101110"&--n
							  "01100101"&--e
							  "10100000"&
							  "10100000"&
							  "10100000"&
							  "10100000"&
							  "10100000";
		when 7  =>months<="01001010"&--July
							  "01110101"&--u
							  "01101100"&--l
							  "01111001"&--y
							  "10100000"&
							  "10100000"&
							  "10100000"&
							  "10100000"&
							  "10100000";
		when 8  =>months<="01000001"&--August
							  "01110101"&--u
							  "01100111"&--g
							  "01110101"&--u
							  "01110011"&--s
							  "01110100"&--t
							  "10100000"&
							  "10100000"&
							  "10100000";
		when 9  =>months<="01010011"&-- September
							  "01100101"&--e
							  "01110000"&--p
							  "01110100"&--t
							  "01100101"&--e
							  "01101101"&--m
							  "01100010"&--b
							  "01100101"&--e
							  "01110010";	
		when 10  =>months<="01001111"&--October
							  "01100011"&--c
							  "01110100"&--t
							  "01101111"&--o
							  "01100010"&--b
							  "01100101"&--e
							  "01110010"&--r
								"10100000"&
								"10100000";
		when 11 =>months<="01001110"&--November
							  "01101111"&--o
							  "01110110"&--v
							  "01100101"&--e
							  "01101101"&--m
							  "01100010"&--b
							  "01100101"&--e
								"01110010"&--r
								"10100000";
		when 12  =>months<="01000100"&--December
							  "01100101"&--e
							  "01100011"&--c
							  "01100101"&--e
							  "01101101"&--m
							  "01100010"&--b
							  "01100101"&--e
								"01110010"&--r
								"10100000";
		when others =>months<=(others=>'0');
end case;
end if;
end process;

END behavior;
