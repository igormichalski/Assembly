#Le 4 valores e pratica operação and, or e menor que
#entrada
addi $v0, $zero, 5 #Leia A
syscall
add $s1, $zero, $v0

addi $v0, $zero, 5 #Leia B
syscall
add $s2, $zero, $v0

addi $v0, $zero, 5 #Leia C
syscall
add $s3, $zero, $v0

addi $v0, $zero, 5 #Leia D
syscall
add $s4, $zero, $v0


#Processamento
or $t1, $s1, $s2   #t1 = A | B
slt $t2, $s2, $s3  #t2 = B < C
and $t3, $s2, $s4  #t3 = B & D
add $s1, $t1, $t2  #s1 = t1 + t2
add $s1, $s1, $t3  #s1 = s1 + t3


#saida
addi $a0, $zero, 88 #65 = A
addi $v0, $zero, 11 #11 syscall caracter
syscall 

addi $a0, $zero, 61 #61 = =
addi $v0, $zero, 11 #11 syscall caracter
syscall  

add $a0, $zero, $s1 
addi $v0, $zero, 1 #1 syscall inteiro
syscall
