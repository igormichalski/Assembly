addi $a1, $zero, 5 #TAM string
lui $a0, 0x1001        # Carrega 0x10010000 nos 16 bits superiores
ori $a0, $a0, 0x0040   # Adiciona 0x0040 aos 16 bits inferiores -> 0x10010040

addi $v0, $zero, 8   #leia()
syscall

#muda a0 de endereço para poder carregar outra coisa nela, sem perder a string lida
lui $a0, 0x1001         # Carrega 0x10010000 nos 16 bits superiores
ori $a0, $a0, 0x0000 	# Adiciona 0x0000 aos 16 bits inferiores -> 0x10010000

addi $a0, $zero, 10  #10 = \n

addi $v0, $zero, 11 #print(\n)
syscall

#faz a0 voltar para o endereço que estava a string lida
lui $a0, 0x1001        # Carrega 0x10010000 nos 16 bits superiores
ori $a0, $a0, 0x0040   # Adiciona 0x0040 aos 16 bits inferiores -> 0x10010040

addi $v0, $zero, 4
syscall
