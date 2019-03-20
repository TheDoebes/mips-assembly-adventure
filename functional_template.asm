.data
	
.text
	main:	
		jal	myFun
		
		
		
		
		
	#Exit Code - required to avoide an infinite loop with displayMessage
	li	$v0, 10
	syscall
	
	#define function
	myFun:	
		
		
		jr	$ra
