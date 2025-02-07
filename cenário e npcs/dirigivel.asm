# Regs usados 		$8 (endereços de memória)
# 			$9 e $13 (laços)
#			$10 e $11 (cores)
#			$12 (salva o ponto de retorno da função)

.text

main:
	lui $8, 0x1001		# end inicio
	addi $9, $0, 6912	# céu 
	ori $10, $0, 0x20D0E6	# cor (azul claro)
	
ceu:
	beq $9, $0, grama	# condição de parada do loop
	sw $10, 0($8)		# carrega p/ o end de memoria que está em $8 o valor contido em $10 (cor azul claro)
	addi $8, $8, 4		# atualiza o end de memória
	addi $9, $9, -1		# decrementa $9 (quantidade de unidades gráficas)
	j ceu
	
grama:
	addi $9, $0, 128	# grama
	ori $10, $0, 0x33E93C	# cor (verde claro)

addGrama:
	beq $9, $0, tileset1
	sw $10, 0($8)
	addi $8, $8, 4
	addi $9, $9, -1
	j addGrama
	
tileset1:
	addi $9, $0, 64		# tileset
	ori $11, $0, 0xa29248	# cor (castanho)
	
addTileset1:
	beq $9, $0, tileset2
	sw $10, 0($8)		# add primeira cor do tileset
	sw $11, 4($8)		# add segunda cor do tileset no endereço seguinte
	addi $8, $8, 8
	addi $9, $9, -1
	j addTileset1
	
tileset2:
	addi $9, $0, 64		# tileset
	ori $10, $0, 0x845D34	# cor (marron)
	
addTileset2:
	beq $9, $0, terra
	sw $11, 0($8)		# add primeira cor do tileset
	sw $10, 4($8)		# add segunda cor do tileset no endereço seguinte
	addi $8, $8, 8
	addi $9, $9, -1
	j addTileset2
	
terra:
	addi $9, $0, 896	# terra
	
addTerra:
	beq $9, $0, nuvens
	sw $10, 0($8)
	addi $8, $8, 4
	addi $9, $9, -1
	j addTerra
	
nuvens:
	lui $8, 0x1001		# volta p/ o endereço inicial
	addi $8, $8, 4112	# começo da primeira fileira de nuvens
	addi $9, $0, 6		# quantidade de nuvens
	ori $10, $0, 0xffffff	# cor branca
	addi $11, $8, 88	# endereço de início da próxima nuvem
	
fila1:
	beq $9, $0, reset
	jal nuvem
	add $8, $0, $11		# carrega p/ $8 o endereço da próxima nuvem
	add $11, $11, 88	# atualiza $11 com o endereço de início da nuvem seguinte p/ a próxima repetição do laço
	addi $9, $9, -1
	j fila1
	
reset:
	lui $8, 0x1001		# endereço inicial
	addi $8, $8, 9768	# começo da segunda fileira de nuvens
	addi $9, $0, 6		# quantidade de nuvens
	addi $11, $8, 88	# endereço de início da próxima nuvem
	
fila2:
	beq $9, $0, dirigivel
	jal nuvem
	add $8, $0, $11		# carrega p/ $8 o endereço da próxima nuvem
	add $11, $11, 88	# atualiza $11 com o endereço de início da nuvem seguinte p/ a próxima repetição do laço
	addi $9, $9, -1
	j fila2
	
dirigivel:
	lui $8, 0x1001
	addi $8, $8, 4496
	add $11, $0, $8		# ponto de retorno
	addi $9, $0, 10
	ori $10, $0, 0x6d6d6d	# cor cinza (primeira camada)
	jal cDirigivel
	sw $10, 24($8)
	sw $10, 28($8)
	addi $8, $8, 460
	addi $9, $0, 16
	jal cDirigivel
	sw $10, 8($8)
	sw $10, 12($8)
	sw $10, 16($8)
	addi $8, $8, 440
	addi $9, $0, 23
	jal cDirigivel
	sw $10, 4($8)
	addi $8, $8, 416
	addi $9, $0, 24
	jal cDirigivel
	sw $10, 4($8)
	addi $8, $8, 412
	addi $9, $0, 27
	jal cDirigivel
	addi $8, $8, 400
	addi $9, $0, 28
	jal cDirigivel
	addi $8, $8, 400
	addi $9, $0, 28
	jal cDirigivel
	addi $8, $8, 404
	addi $9, $0, 27
	jal cDirigivel
	addi $8, $8, 408
	addi $9, $0, 24
	jal cDirigivel
	sw $10, 4($8)
	addi $8, $8, 420
	addi $9, $0, 23
	jal cDirigivel
	sw $10, 4($8)
	addi $8, $8, 428
	addi $9, $0, 16
	jal cDirigivel
	sw $10, 8($8)
	sw $10, 12($8)
	sw $10, 16($8)
	addi $8, $8, 460
	addi $9, $0, 10
	jal cDirigivel
	sw $10, 24($8)
	sw $10, 28($8)
	ori $10, $0, 0xd6d6d6	# cor cinza claro
	addi $8, $8, 476
	addi $9, $0, 8
	jal cDirigivel
	addi $8, $8, 484
	addi $9, $0, 6
	jal cDirigivel
	add $8, $0, $11		# retorno
	ori $10, $0, 0x909090	# cor cinza (segunda camada)
	addi $8, $8, 512
	addi $9, $0, 10
	jal cDirigivel
	sw $10, 24($8)
	addi $8, $8, 460
	addi $9, $0, 15
	jal cDirigivel
	sw $10, 12($8)
	sw $10, 16($8)
	addi $8, $8, 444
	addi $9, $0, 18
	jal cDirigivel
	sw $10, 12($8)
	addi $8, $8, 436
	addi $9, $0, 20
	jal cDirigivel
	addi $8, $8, 432
	addi $9, $0, 20
	jal cDirigivel
	addi $8, $8, 432
	addi $9, $0, 20
	jal cDirigivel
	addi $8, $8, 432
	addi $9, $0, 20
	jal cDirigivel
	addi $8, $8, 436
	addi $9, $0, 18
	jal cDirigivel
	sw $10, 12($8)
	addi $8, $8, 448
	addi $9, $0, 15
	jal cDirigivel
	sw $10, 12($8)
	sw $10, 16($8)
	addi $8, $8, 464
	addi $9, $0, 10
	jal cDirigivel
	sw $10, 24($8)
	addi $8, $8, 988
	ori $10, $0, 0x6d6d6d	# cor cinza (cabine)
	sw $10, 0($8)
	sw $10, 12($8)
	addi $8, $8, 516
	sw $10, 0($8)
	sw $10, 4($8)
	add $8, $0, $11		# retorno
	ori $10, $0, 0xa4a4a4	# cor cinza (terceira camada)
	addi $8, $8, 512
	addi $9, $0, 8
	jal cDirigivel
	addi $8, $8, 468
	addi $9, $0, 13
	jal cDirigivel
	addi $8, $8, 452
	addi $9, $0, 17
	jal cDirigivel
	addi $8, $8, 440
	addi $9, $0, 19
	jal cDirigivel
	addi $8, $8, 436
	addi $9, $0, 19
	jal cDirigivel
	addi $8, $8, 440
	addi $9, $0, 17
	jal cDirigivel
	addi $8, $8, 448
	addi $9, $0, 14
	jal cDirigivel
	addi $8, $8, 464
	addi $9, $0, 10
	jal cDirigivel
	
fim:
	addi $2, $0, 10
	syscall
	
#============================================================================================================================
# Função Nuvens (chama a função "criaNuvens" para cada linha que forma a nuvem)
# Regs usados 		$8, $12, $13
# Regs sujos		$12 (salva o ponto de retorno da função antes de chamar a próxima função)

nuvem:
	add $12, $0, $31
	addi $13, $0, 4
	jal criaNuvens
	addi $13, $0, 6
	addi $8, $8, 492	# atualiza o endereço (linha seguinte)
	jal criaNuvens
	addi $13, $0, 8
	addi $8, $8, 484	# atualiza o endereço (linha seguinte)
	jal criaNuvens
	addi $13, $0, 10
	addi $8, $8, 476	# atualiza o endereço (linha seguinte)
	jal criaNuvens
	addi $13, $0, 10
	addi $8, $8, 472	# atualiza o endereço (linha seguinte)
	jal criaNuvens
	add $31, $0, $12
	jr $31
	
#============================================================================================================================
# Função Criar Nuvens
# Regs usados 		$8 e $13
# Regs sujos		-
	
criaNuvens:
	beq $13, $0, fimLoop
	sw $10, 0($8)		# carrega p/ o end de memoria que está em $8 o valor contido em $10 (cor branca)
	addi $8, $8, 4
	addi $13, $13, -1
	j criaNuvens
	
fimLoop:
	jr $31
	
#============================================================================================================================
# Função Criar Dirigivel
# Regs usados 		$8 e $9
# Regs sujos		-

cDirigivel:
	beq $9, $0, fimDirigivel
	sw $10, 0($8)		
	addi $8, $8, 4
	addi $9, $9, -1
	j cDirigivel
	
fimDirigivel:
	jr $31
