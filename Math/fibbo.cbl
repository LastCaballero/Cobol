identification division.
program-id.	fibbos.


data division.
working-storage section.
01	a	pic	9(38)	value	1.
01	b	pic	9(38)	value	2.
01	c	pic	9(38).
01	target	pic	9(38).
01	idx	pic	9(38).


procedure division.

process-args.
	accept target from command-line
	if target = 0
		move 100 to target
exit.

show-fibbos.
	perform varying idx from 1 by 1 until c > target
		compute c = a + b
		display c
		move b to a
		move c to b
	end-perform
exit.
