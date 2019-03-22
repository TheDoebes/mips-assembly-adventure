.data
	newLine:	.asciiz	"\n"
.text
	main:
		addi	$s0, $zero, 10
		
		#print value
		li	$v0, 1
		move	$a0, $s0
		syscall
	
	#Exit Program
	li	$v0, 10
	syscall
	
	increaseMyRegister:
		