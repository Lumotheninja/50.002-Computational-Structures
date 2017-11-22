checkoff "10.1.3.26/checkoff/50002assignment.doit" "Lab #4" 1103641864


Symbols ( ) 0 1 thefirst( unchecked( goleft goright

tape   test1 (
result1 test1 0

tape   test2 )
result1 test2 0

tape   test3 ( )
result1 test3 1

tape   test4 ) (
result1 test4 0

tape   test5 ( ) ( ) ( ( ( ) ) ( ) ) ) ( )
result1 test5 0

tape   test6 ( ) ( ( ( ) ( ( ( ) ) ( ) ) )
result1 test6 0

tape   test7 ( ) ( ( ) ( ( ( ) ) ( ) ) )
result1 test7 1 

// define additional symbols, your states and actions here...
states A B

action 	A 	(  	B 	thefirst( 	l
action	A	goleft	A	goright	r
action	A	goright	A	goleft	l
action	A	)	*halt*	0	-
action	A	-	*halt*	1	-

action	B	(	B	unchecked(	l
action	B	)	B	goright	r
action	B	unchecked(	B	goleft	l
action	B	goleft	B	goright	r
action	B	goright	B	goleft	l
action	B	thefirst(	A	goleft	l
action	B	-	*halt*	0	-

