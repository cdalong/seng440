
-- Cameron Long V00748439
-- U-Law VHDL
-- July 28th, 2014

-- This is a basic look-up table implemenrtation of the u-law compression in VHDL


library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all; 
entity ulaw_16_8 is 
		PORT( 
			data			:in			std_logic_vector(15 downto 0);	--pcm linear signal 
			clock			:in			std_logic;								--frame synchronous signal 
			dataq			:out			std_logic_vector(7 downto 0));	--output noliear signal 
end ulaw_16_8; 
 
architecture rtl of ulaw_16_8 is 
	constant		c1 : std_logic_vector(15 downto 0) := "0000000010000100"; -- Bias constant
	signal		data_in		:std_logic_vector(15 downto 0);  -- Input Signal
	signal		data_q		:std_logic_vector(7 downto 0); -- Output signal
begin 
	data_in <= data(15 downto 0) +  c1; -- Add Bias
	process(data_in) 
	begin 
		-- On each change of incoming data, process the sample
			if data_in(14) = '1' then 
				data_q(6 downto 4) <= "111" ;
				data_q(3 downto 0) <= data_in(11 downto 8);
			
			elsif data_in(13) = '1' then 
				data_q(6 downto 4) <= "110" ;
				data_q(3 downto 0) <= data_in(10 downto 7);
				
			elsif data_in(12) = '1' then 
				data_q(6 downto 4) <= "101" ;
				data_q(3 downto 0) <= data_in(9 downto 6);
				
			elsif data_in(11) = '1' then 
				data_q(6 downto 4) <= "100" ;
				data_q(3 downto 0) <= data_in(8 downto 5);
				
			elsif data_in(10) = '1' then 
				data_q(6 downto 4) <= "011" ;
				data_q(3 downto 0) <= data_in(7 downto 4);
			
			elsif data_in(9) = '1' then 
				data_q(6 downto 4) <= "010"; 
				data_q(3 downto 0) <= data_in(6 downto 3);
				
			elsif data_in(8) = '1' then 
				data_q(6 downto 4) <= "001" ;
				data_q(3 downto 0) <= data_in(5 downto 2);
				
			else 
				data_q(6 downto 4) <= "000" ;
				data_q(3 downto 0) <= data_in(4 downto 1);
			
			end if; 
			
			
			
	end process; 
		 
	process(clock) 
	-- At each clock, save the results
	begin 
		if clock'event and clock = '1' then 
			dataq(7)<= data_in(15);
			dataq(6 downto 0) <= data_q(6 downto 0); 
		end if; 
	end process; 
end rtl; 