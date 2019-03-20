.data
	message:	.asciiz "Hi everybody! \nMy name is Cade.\n"
.text
	main:	
		jal	displayMessage
		
		addi	$t0, $zero, 3
		
		li	$v0, 1		#declare integer type
		add	$a0, $zero, $t0
		syscall
		
	#Exit Code - required to avoide an infinite loop with displayMessage
	li	$v0, 10
	syscall
	
	displayMessage:	
		li	$v0, 4		#declare char type
		la	$a0, message
		syscall
		
		jr	$ra
