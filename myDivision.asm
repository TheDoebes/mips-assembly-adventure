.data

.text
	addi	$t0, $zero, 30	#store 30 in t0
	addi	$t1, $zero, 5	#store 5 in t1
	
	div	$s0, $t0, $t1	#s0 = t0 / t1 = 30 / 5 = 6
	
	#Display Results
	li	$v0, 1			#type int
	add	$a0, $zero, $s0		#buffer s0
	syscall				#Print