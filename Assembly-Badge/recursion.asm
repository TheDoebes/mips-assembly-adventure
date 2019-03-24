.data
	words:	.asciiz	"is the result of factorial(1).\n"
.text
	main:
		#Call Fact(4)
		addi	$a0, $zero, 1
		jal	fact
		
		#Print 4!
		add	$a0, $zero, $v0
		addi	$v0, $zero, 1
		syscall
		
		#Print some words
		li	$v0, 4
		la	$a0, words
		syscall
		
		
	#Exit Code
	li	$v0, 10
	syscall
	
	fact:	
		addi	$sp, $sp,-8	#Create two spots on the stack
		sw	$ra, 4($sp)	#Preserve the return address on the stack (this is necassary for recursion)
		sw	$a0, 0($s0)	#Preserve the argument of the current iteration
		
		addi	$t1, $zero, 1
		slt	$t0, $a0, $t1		#Create flag at t0 = (a0 < 1)
		beq	$t0, $zero, IfThen	#If t0 flag is true, then go to label IfThen
		
		#Else,
		addi	$v0 $zero, 1	#Load 1 into return register
		addi	$sp, $sp, 8	#Pop the top two items off the stack to return it to its original state
		jr	$ra		#return to address which called the routine
		
		IfThen:	
			#Call fact(n-1)
			addi	$a0, $a0, -1	
			jal	fact		
			
			#restore the prior state data before leaving the function
			lw	$a0, 0($sp)	#return the argument register
			lw	$a0, 4($sp)	#return the retunr address
			addi	$sp, $sp, 8	#pop the two items off the stack since they aren't needed anymore
			
			mul	$v0, $a0, $v0	#compute the multiplication part of v0 = fact(n) * fact(n-1)
			jr	$ra		#return to the address which called the routine
