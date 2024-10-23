identification division.
program-id.	primes.

data division.
working-storage section.
01	st	pic 9(20) value 1.
01	en	pic 9(20) value 100.
01	mm	pic 9(20).
01	args	pic x(100).
01	arg-1	pic 9(20).
01	arg-2	pic 9(20).
01	id-a	pic 9(20).
01	id-b	pic 9(20).
01	prime	pic A	value 'Y'.


procedure division.
process-args.
	accept args from command-line
	unstring args delimited by ' ' into arg-1 arg-2	
	if arg-1 > 0
		move arg-1 to st
	if arg-2 > 0
		move arg-2 to en
	if st > en
		move en to mm
		move st to en
		move mm to st
	end-if
	if st <=2
		move 2 to st
	
exit.

prime-circuit.
	perform varying id-a from st by 1 until id-a > en
		perform prime-test
		if prime = 'Y'
			display id-a
		end-if
		move 'Y' to prime	
	end-perform
	stop run
exit.

prime-test.
	perform varying id-b from 2 by 1 until id-b > function integer ( id-a / 2 )
		if function mod ( id-a  id-b ) = 0
			move 'N' to prime
		exit perform
	end-perform
exit.
