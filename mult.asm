.data

.text
	addi	$t0, $zero, 2000
	addi	$t1, $zero, 10
	
	mult	$t0, $t1	#two-register multiplication of 2000 and 10
				#the results are large, so the product is stored in lo and hi regs
				
	mflo	$s0
	
	#display result
	li	$v0, 1
	add	$a0, $zero, $s0
	syscall