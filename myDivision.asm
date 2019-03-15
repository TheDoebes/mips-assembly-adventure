.data
	space:	.byte ' '
	newln:	.byte '\n'
.text
	addi	$t0, $zero, 30	#store 30 in t0
	addi	$t1, $zero, 5	#store 5 in t1
	
	div	$s0, $t0, $t1	#s0 = t0 / t1 = 30 / 5 = 6
	
	div	$t0, $t1	#use two-register division for comparison
	mflo	$s1
	mfhi	$s2
	
	#Display Results
	li	$v0, 1			#type int
	add	$a0, $zero, $s0		#buffer s0
	syscall				#Print it!
	li	$v0, 4			#declare character type
	la 	$a0, newln
	syscall
	
	
	li	$v0, 1			#declare intger type
	add	$a0, $zero, $s1		#buffer s1 = quotient (AKA integer division) = 6
	syscall
	li	$v0, 4			#declare character type
	la 	$a0, space		#print a space
	syscall
	li	$v0, 1
	add	$a0, $zero, $s2		#buffer s2 = remainder (AKA modulus) = 6
	syscall