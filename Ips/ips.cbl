identification division.
program-id.	ip-calculator.


data division.
working-storage section.
01	idx 		pic 9(3).
01	ct-ip-1 	pic 9(3) value 1.
01	ct-ip-2 	pic 9(3) value 1.

01 2-nets.
	05 items occurs 128 times.
		10 ip-1 pic x(20).
	05 items occurs 128 times.
		10 ip-2 pic x(20).


procedure division.

move-ips.
	perform varying idx from 0 by 1 until idx > 256
		if idx < 128
			string "200.200.200." idx into ip-1( ct-ip-1 )
			add 1 to ct-ip-1
		else
			string "200.200.200." idx into ip-2( ct-ip-2 )
			add 1 to ct-ip-2
		end-if
	end-perform
exit.

show-ips.
	perform varying idx from 1 by 1 until idx > 128
		display ip-1( idx ) space ip-2( idx )
	end-perform
exit.


