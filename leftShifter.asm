.data

.text
	addi	$s0, $zero, 4	#s0 = 2;
	
	sll	$t0, $s0, 2	#t0 = s0 * 2^n, n = 2: t0 = 4 * 4 = 16;
	
	#Print results
	li	$v0, 1		#set print type to integer
	add	$a0, $zero, $t0	#set t0 to the print buffer
	syscall			#Do It! 