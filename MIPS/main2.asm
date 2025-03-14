addi $a0, $zero, 5 #N bit alocado
addi $v0, $zero, 9 #V0 -> ponteiro
syscall #Aloco Memoria

add $a0, $zero, $v0 #endereço onde vai ficar a string
addi $a1, $zero, 5 #N bit da palavra

addi $v0, $zero, 8 #LEIA
syscall

add $t0, $zero, $a0 #guarda o endereço da string lida em t0

addi $a0, $zero, 10  #adiciona o caracter \n, para ser impreso

#print caracter
addi $v0, $zero, 11
syscall

add $a0, $zero, $t0 #copia de volta o endereço 

#print
addi $v0, $zero, 4
syscall