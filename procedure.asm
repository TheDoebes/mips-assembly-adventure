.data
	message:	.asciiz "Hi everybody! \nMy name is Cade.\n"
.text
	main:	
	
	
	#Exit Code - required to avoide an infinite loop with displayMessage
	li	$v0, 10
	syscall
	
	displayMessage:	
		li	$v0, 4
		la	$a0, message
		syscall
		
		jr	$ra