.text

casa:
	lui $7, 0x1001		# end inicio
	addi $7, $7, 28220	# começo da casa
	
	add $13, $0, $31	# ponto de retorno da funcao
	add $14, $0, $7		# salva o end de inicio da casa
	ori $10, $0, 0x2a2a2a	# contorno
	addi $9, $0, 7
	jal build
	addi $7, $7, -540
	addi $9, $0, 7
	jal build
	addi $7, $7, -540
	addi $9, $0, 7
	jal build
	addi $7, $7, -548
	addi $9, $0, 11
	jal build
	addi $7, $7, -556
	addi $9, $0, 11
	jal build
	addi $7, $7, -552
	addi $9, $0, 9
	jal build
	addi $7, $7, -544
	addi $9, $0, 7
	jal build
	addi $7, $7, -536
	addi $9, $0, 5
	jal build
	addi $7, $7, -528
	addi $9, $0, 3
	jal build
	add $7, $0, $14		# retorno
	ori $10, $0, 0xe49d05	# parte interna da casa
	addi $7, $7, -508
	addi $9, $0, 5
	jal build
	addi $7, $7, -532
	addi $9, $0, 5
	jal build
	addi $7, $7, -532
	addi $9, $0, 5
	jal build
	addi $7, $7, -528
	addi $9, $0, 3
	jal build
	addi $7, $7, -520
	addi $9, $0, 1
	jal build
	add $7, $0, $14		# retorno
	ori $10, $0, 0xb04110	# telhado primeira parte
	addi $7, $7, -2048
	addi $9, $0, 1
	jal build
	addi $7, $7, 20
	addi $9, $0, 1
	jal build
	addi $7, $7, -536
	addi $9, $0, 1
	jal build
	addi $7, $7, 12
	addi $9, $0, 1
	jal build
	addi $7, $7, -528
	addi $9, $0, 1
	jal build
	addi $7, $7, 4
	addi $9, $0, 1
	jal build
	add $7, $0, $14		# retorno
	ori $10, $0, 0xb8573a	# telhado segunda parte
	addi $7, $7, -2052
	addi $9, $0, 1
	jal build
	addi $7, $7, 28
	addi $9, $0, 1
	jal build
	addi $7, $7, -544
	addi $9, $0, 1
	jal build
	addi $7, $7, 20
	addi $9, $0, 1
	jal build
	addi $7, $7, -536
	addi $9, $0, 1
	jal build
	addi $7, $7, 12
	addi $9, $0, 1
	jal build
	addi $7, $7, -528
	addi $9, $0, 3
	jal build
	add $7, $0, $14		# retorno
	ori $10, $0, 0x9e0909	# porta
	addi $7, $7, -500
	addi $9, $0, 1
	jal build
	addi $7, $7, -516
	addi $9, $0, 1
	jal build
	ori $10, $0, 0x4a6575	# janela
	addi $7, $7, -1028
	addi $9, $0, 1
	jal build
	
	# Balão
	add $7, $0, $14		# retorno
       	ori $5, $0, 0xffff  	# $5 <= 0x0000ffff
       	sll $5, $5, 8       	# $5 <= 0x00ffff00
       	addi $7, $7, -4604
       	addi $9, $0, 5
	jal cBalao
	addi $7, $7, -536
	addi $9, $0, 7
	jal cBalao
	addi $7, $7, -544
	addi $9, $0, 9
	jal cBalao
	addi $7, $7, -552
	addi $9, $0, 11
	jal cBalao
	addi $7, $7, -560
	addi $9, $0, 13
	jal cBalao
	addi $7, $7, -564
	addi $9, $0, 13
	jal cBalao
	addi $7, $7, -564
	addi $9, $0, 13
	jal cBalao
	addi $7, $7, -560
	addi $9, $0, 11
	jal cBalao
	addi $7, $7, -552
	addi $9, $0, 9
	jal cBalao
	add $31, $0, $13		# recupera o ponto de retorno
fim:
	addi $2, $0, 10
	syscall
	
#============================================================================================================================
# Função Criar
# Regs usados 		$8 e $9
# Regs sujos		-

build:
	beq $9, $0, fimBuild
	sw $10, 0($7)		
	addi $7, $7, 4
	addi $9, $9, -1
	j build
	
fimBuild:
	jr $31
	
#============================================================================================================================
# Função Criar Balão
# Regs usados 		$4, $5, $7 e $9
# Regs sujos		$4 e $5

cBalao:
	beq $9, $0, fimBalao
       	addi $2, $0, 42
       	syscall
       	sw $4, 0($7)
       	addi $7, $7, 4
       	addi $9, $9, -1
       	j cBalao
	
fimBalao:
	jr $31
