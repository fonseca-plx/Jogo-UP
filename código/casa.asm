# Regs usados 		$8 (endereços de memória)
# 			$9 e $13 (laços)
#			$10 e $11 (cores)
#			$12 (salva o ponto de retorno da função)
#
# Construir a casa de modo que apenas com a mudança do endereço de início da casa toda a casa se movimente, ou seja, não perder a referência do endereço inicial

.text

main:
	lui $8, 0x1001		# endereço inicial
	addi $8, $8, 22608	# início casa
	add $11, $0, $8		# salva o endereço de início da casa

chamine:
	ori $10, $0, 0x956d16	# cor chaminé
	sw $10, 0($8)		# carrega p/ o end de memoria que está em $8 o valor contido em $10
	sw $10, 4($8)
	addi $8, $8, 8		# atualiza endereço
	
telhado1:
	ori $10, $0, 0xa29248	# cor telhado menor
	sw $10, 0($8)		# carrega p/ o end de memoria que está em $8 o valor contido em $10
	sw $10, 4($8)
	addi $8, $8, 508
	sw $10, 0($8)
	sw $10, 12($8)
	addi $8, $8, 508
	sw $10, 0($8)
	sw $10, 20($8)
	addi $8, $8, 508
	sw $10, 0($8)
	sw $10, 28($8)
	add $8, $0, $11		# volta ao endereço inicial

telhado2:
	addi $8, $8, 504	# inicio do telhado maior
	ori $10, $0, 0x845833	# cor telhado maior
	addi $9, $0, 3
	jal cTelhado
	addi $8, $8, 496	# próxima linha do telhado
	addi $9, $0, 3
	jal cTelhado
	addi $8, $8, 496	# próxima linha do telhado
	addi $9, $0, 3
	jal cTelhado
	sw $10, 4($8)
	sw $10, 24($8)
	addi $8, $8, 496	# próxima linha do telhado
	addi $9, $0, 6
	jal cTelhado
	sw $10, 16($8)
	sw $10, 20($8)
	addi $8, $8, 488	# próxima linha do telhado
	addi $9, $0, 6
	jal cTelhado
	sw $10, 16($8)
	sw $10, 20($8)
	
frente:
	addi $8, $8, 496	# inicio da frente da casa
	ori $10, $0, 0xe49d05	# cor da frente da casa
	ori $12, $0, 0xef0b0b	# cor da porta
	sw $10, 0($8)
	sw $10, 4($8)
	sw $10, 8($8)
	sw $10, 12($8)
	addi $8, $8, 512
	sw $10, 0($8)
	sw $10, 4($8)
	sw $12, 8($8)
	sw $12, 12($8)
	addi $8, $8, 512
	sw $10, 0($8)
	sw $10, 4($8)
	sw $12, 8($8)
	sw $12, 12($8)
	addi $8, $8, 512
	sw $10, 0($8)
	sw $10, 4($8)
	sw $12, 8($8)
	sw $12, 12($8)
	add $8, $0, $11		# volta ao endereço inicial
	
torre:
	addi $8, $8, 520	# inicio da torre
	ori $10, $0, 0xede109	# cor da torre
	addi $9, $0, 2
	jal cTorre
	addi $8, $8, 500	# próxima linha da torre
	addi $9, $0, 4
	jal cTorre
	addi $8, $8, 496	# próxima linha da torre
	addi $9, $0, 4
	jal cTorre
	addi $8, $8, 496	# próxima linha da torre
	addi $9, $0, 4
	jal cTorre
	addi $8, $8, 496	# próxima linha da torre
	addi $9, $0, 4
	jal cTorre
	addi $8, $8, 496	# próxima linha da torre
	addi $9, $0, 4
	jal cTorre
	addi $8, $8, 496	# próxima linha da torre
	addi $9, $0, 4
	jal cTorre
	addi $8, $8, 496	# próxima linha da torre
	addi $9, $0, 4
	jal cTorre
	addi $8, $8, 496	# próxima linha da torre
	addi $9, $0, 4
	jal cTorre
	add $8, $0, $11		# volta ao endereço inicial
	
janela:
	addi $8, $8, 1032	# inicio da primeira janela
	ori $10, $0, 0x956d16	# cor chaminé
	sw $10, 0($8)
	sw $10, 4($8)
	addi $8, $8, 512
	sw $10, 0($8)
	sw $10, 4($8)
	addi $8, $8, 2048
	sw $10, 0($8)
	sw $10, 4($8)
	addi $8, $8, 512
	sw $10, 0($8)
	sw $10, 4($8)
	
fim:
	addi $2, $0, 10
	syscall

#============================================================================================================================
# Função construir telhado
# Regs usados 		$8, $9
# Regs sujos		-
	
cTelhado:
	beq $9, $0, retTelhado	# retornar
	sw $10, 0($8)
	addi $8, $8, 4
	addi $9, $9, -1
	j cTelhado

retTelhado:
	jr $31
	
#============================================================================================================================
# Função construir torre
# Regs usados 		$8, $9
# Regs sujos		-

cTorre:
	beq $9, $0, retTorre	# retornar
	sw $10, 0($8)
	addi $8, $8, 4
	addi $9, $9, -1
	j cTorre
	
retTorre:
	jr $31