library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity simulation is
--  Port ( );
end simulation;

architecture Behavioral of simulation is
    component StateMachine is
        Port ( clk : in STD_LOGIC;
               Btn0 : in STD_LOGIC;
               Btn1 : in STD_LOGIC;
               LED1 : out STD_LOGIC);
    end component;

    signal clk      : STD_LOGIC :='0';
    signal zeroBtn  : STD_LOGIC :='0';
    signal oneBtn   : STD_LOGIC :='0';
    signal outLED   : STD_LOGIC:= '0';

begin
    Test_instance: StateMachine port map(clk,zeroBtn,oneBtn,outLED);
    
    clk <= not clk after 5 ns;

    zeroBtn <= 
                '1' after 10 ns,
                '0' after 20 ns,--z1 keine Zustandsänderung

                '1' after 70 ns,
                '0' after 80 ns,--z2 -> z3 

                '1' after 90 ns,
                '0' after 100 ns,--z3 -->z4

                '1' after 130 ns,
                '0' after 140 ns,
                
                '1' after 150 ns,
                '0' after 160 ns,
                
                '1' after 170 ns,
                '0' after 180 ns;


    
    oneBtn  <= 
                '1' after 30 ns,
                '0' after 40 ns,--z1 -> z2  Zustandsänderung
                
                '1' after 50 ns,
                '0' after 60 ns,--z2 keine Zustandsänderung
                
                '1' after 110 ns,
                '0' after 120 ns;--z4 -> z2
                

end Behavioral;
