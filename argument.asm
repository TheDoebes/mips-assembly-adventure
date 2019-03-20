.data
	
.text
	main:	
		addi	$a1, $zero, 4
		addi	$a2, $zero, 9
		
		jal	addNumbers
		
		li	$v0, 1	#print an integer
		addi	$a0, $v1, 0
		syscall
		
		
	#Exit Code - required to avoide an infinite loop with displayMessage
	li	$v0, 10
	syscall
	
	#define function
	addNumbers:			#Impure Function, adds the numbers in a1,a2 into v1
		
		add	$v1, $a1, $a2
		
		jr	$ra
