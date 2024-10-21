IDENTIFICATION DIVISION.
PROGRAM-ID.	SEQUENZ.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 	ST	PIC 	9(10) value 1.
01	EN	PIC	9(10) value 10.
01	args	pic	x(30).
01	argc pic	99.
01	COUNTER PIC	9(10).


PROCEDURE DIVISION.

ACCEPT args from command-line.
move function length( function trim( args ) ) to argc.

if argc <> 0
	unstring args delimited by space into st en
end-if.

PERFORM VARYING COUNTER FROM ST BY 1 UNTIL COUNTER > EN
	DISPLAY COUNTER
END-PERFORM.
