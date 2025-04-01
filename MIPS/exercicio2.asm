#entrada
addi $v0, $zero, 5 #Leia A
syscall
add $s1, $zero, $v0

addi $v0, $zero, 5 #Leia B
syscall
add $s2, $zero, $v0


#Processamento
#A<B
slt $t0, $s1, $s2             #t0 = 1 se s1<s2 senão t0= 0  
beq $t0, $zero, FIM_IF_a      #Se t0 = $zero -> pula
	addi $a0, $zero, 97   #97 = a
	addi $v0, $zero, 11   #11 syscall caracter
	syscall
	addi $a0, $zero, 10   #10 = \n
	addi $v0, $zero, 11   #11 syscall caracter
	syscall
FIM_IF_a:


# A>B <-> B<A
slt $t0, $s2, $s1             #to = 1 se s2<s1 senão t0=0
beq $t0, $zero, FIM_IF_b      #Se t0 = $zero -> pula (pula se for igual)
	addi $a0, $zero, 98   #98 = b
	addi $v0, $zero, 11
	syscall
	addi $a0, $zero, 10    
	addi $v0, $zero, 11
	syscall
FIM_IF_b:


# A<=B <-> !(A>B) <-> !(B<A)
slt $t0, $s2, $s1           
bne $t0, $zero, FIM_IF_c     
	addi $a0, $zero, 99   #99 = c
	addi $v0, $zero, 11
	syscall
	addi $a0, $zero, 10    
	addi $v0, $zero, 11
	syscall
FIM_IF_c:


# A>=B <-> !(A>B)
slt $t0, $s1, $s2
bne $t0, $zero, FIM_IF_d
	addi $a0, $zero, 100   #100 = d
	addi $v0, $zero, 11
	syscall
	addi $a0, $zero, 10    
	addi $v0, $zero, 11
	syscall
FIM_IF_d:


# A<100 
slti $t0, $s1, 100
beq $t0, $zero, FIM_IF_e
	addi $a0, $zero, 101   #101 = e
	addi $v0, $zero, 11
	syscall
	addi $a0, $zero, 10    
	addi $v0, $zero, 11
	syscall
FIM_IF_e:

# A>100 <-> 0>100 - A <->   A-100

addi $v0, $zero, 10 #Exit
syscall 
