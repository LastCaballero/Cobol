identification division.
program-id.    'Brutto zu Netto'.


data division.
working-storage section.
01 brutto              pic     9999V99.
01 netto               pic     9999V99.


01 przt-vers.
       05 przt-rte      pic     9V9         value   9.3.
       05 przt-krk      pic     9V9         value   7.3.
       05 przt-arb      pic     9V9         value   1.2.
       05 przt-pfg      pic     9V999       value   1.525.
01 betr-vers.
       05 betr-rte       pic     99999V99.
       05 betr-krk       pic     99999V99.
       05 betr-arb       pic     99999V99.
       05 betr-pfg       pic     99999V99.
01 przt-steuer.
       05 przt-lohnsteuer        pic     99          value   14.
       05 von_steuer.
           10 przt-solid         pic     9V9         value   5.5.
           10 przt-kirche        pic     9           value   8.
01 steuer.
       05 lohnst   pic 99999v99.
       05 solid    pic 99999v99.
       05 kirche   pic 99999v99.


procedure division.
      
get-info.
       	display "Dein viel aussehendes Brutto: " with no advancing
       	accept brutto
       	exit.

calculate.
       	compute betr-rte    = brutto * przt-rte         / 100
       	compute betr-krk    = brutto * przt-krk         / 100
       	compute betr-arb    = brutto * przt-arb         / 100
       	compute betr-pfg    = brutto * przt-pfg         / 100
       	compute lohnst      = brutto * przt-lohnsteuer  / 100
       	compute solid       = lohnst * przt-solid       / 100
       	compute kirche      = lohnst * przt-kirche      / 100
	compute netto = brutto - function sum (
           	betr-rte
           	betr-krk 
           	betr-arb 
           	betr-pfg
           	lohnst
           	solid
       		kirche
       	)
	display "Dein erbärmliches Netto: " netto
	exit.

