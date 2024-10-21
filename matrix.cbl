identification division.
program-id. 'matrix'.

data division.
working-storage section.
01	num1	pic	9(18)V99.
01	num2	pic	9(18)V99.
01	num3	pic	9(18)	value 500000000.

procedure division.
perform until 1 = 2
	compute num1 = function random * num3
	compute num2 = function random * num3
	display num1 " " num2 with no advancing
end-perform.
