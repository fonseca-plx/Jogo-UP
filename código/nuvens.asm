.text

main:
	lui $8, 0x1001		# endereço inicial
	ori $9, $0, 0xffffff	# cor branca
	addi $8, $8, 4112	# começo das nuvens
	addi $12, $0, 6		# quantidade de nuvens
	addi $13, $8, 88	# endereço de início da próxima nuvem
	
nuvens1:
	beq $12, $0, fila2
	jal nuvem
	add $8, $0, $13
	add $13, $13, 88	# endereço de início da próxima nuvem
	addi $12, $12, -1
	j nuvens1
	
fila2:
	lui $8, 0x1001		# endereço inicial
	addi $8, $8, 9768	# começo da segunda fileira de nuvens
	addi $12, $0, 6		# quantidade de nuvens
	addi $13, $8, 88	# endereço de início da próxima nuvem
	
nuvens2:
	beq $12, $0, fim
	jal nuvem
	add $8, $0, $13
	add $13, $13, 88	# endereço de início da próxima nuvem
	addi $12, $12, -1
	j nuvens2	
	
fim:
	addi $2, $0, 10
	syscall
	
#============================================================================================================================
# Função Nuvens (chama a função "criaNuvens" para cada linha que forma a nuvem)
# Regs usados 		$8, $10, $11
# Regs sujos		$10 (salva o ponto de retorno da função antes de chamar a próxima função)

nuvem:
	add $10, $0, $31
	addi $11, $0, 4
	jal criaNuvens
	addi $11, $0, 6
	addi $8, $8, 492	# atualiza o endereço (linha seguinte)
	jal criaNuvens
	addi $11, $0, 8
	addi $8, $8, 484	# atualiza o endereço (linha seguinte)
	jal criaNuvens
	addi $11, $0, 10
	addi $8, $8, 476	# atualiza o endereço (linha seguinte)
	jal criaNuvens
	addi $11, $0, 10
	addi $8, $8, 472	# atualiza o endereço (linha seguinte)
	jal criaNuvens
	add $31, $0, $10
	jr $31
	
#============================================================================================================================
# Função Criar Nuvens
# Regs usados 		$11
# Regs sujos		-
	
criaNuvens:
	beq $11, $0, fimLoop
	sw $9, 0($8)
	addi $8, $8, 4
	addi $11, $11, -1
	j criaNuvens
	
fimLoop:
	jr $31