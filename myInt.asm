.data
	age: .word 20	#this is an integer word
.text
	li $v0,1	#print an integer to the screen
	lw $a0,age
	syscall