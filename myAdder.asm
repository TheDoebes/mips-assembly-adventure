.data
	numberOne:	.word 5		#declare integer words
	numberTwo:	.word 10
.text
	lw	$t0, numberOne($zero)
	lw	$t1, numberTwo($zero)
	
	add	$t2, $t0, $t1		#store the sum of t0,t1 into t2
	
	li	$v0, 1
	add	$a0, $zero, $t2
	syscall