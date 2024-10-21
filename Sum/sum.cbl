identification division.
program-id. 'sum from pipe'.

data division.
working-storage section.
01	num	pic	9(18) value 1 	usage comp.
01	amount	pic	9(18) 		usage comp.

procedure division.

perform until num = 0
	accept num
	add num to amount
	display num
end-perform.
display amount.
