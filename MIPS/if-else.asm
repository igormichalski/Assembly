#entrada
addi $v0, $zero, 5 #Leia A
syscall
add $s1, $zero, $v0

addi $v0, $zero, 5 #Leia B
syscall
add $s2, $zero, $v0


slt $t0, $s2, $s1             #S2<S1 entoa t0 = 0
beq $t0, $zero, Else_1
	addi $a0, $zero, 97   #97 = a
	addi $v0, $zero, 11   #11 syscall caracter
	syscall
	J Fim_Condicao_1
Else_1:
	addi $a0, $zero, 98   #98 = b
	addi $v0, $zero, 11   #11 syscall caracter
	syscall

Fim_Condicao_1:

addi $v0, $zero, 10           #Exit
syscall 

