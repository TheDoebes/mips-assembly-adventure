.data
	numberOne:	.word 20	#declare integer words
	numberTwo:	.word 8
.text	#for the intructions
	lw	$s0, numberOne	#s0 gets a value of 20
	lw	$s1, numberTwo	#s1 gets a vlue of 8
	
	sub	$t0, $s0, $s1	#t0 = s0 - s1 = 20 - 8
	
	#print result
	li	$v0, 1
	move	$a0, $t0
	syscall