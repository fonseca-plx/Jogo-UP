# Teste de movimento de um ponto pelo cenário utilizando o teclado
# 
# O ponto se move automaticamente e muda de direção a depender da entrada do teclado
#

.text

main:
	lui $8, 0x1001		# end inicio
	addi $9, $0, 7168	# céu 
	ori $10, $0, 0x49c1fe	# cor (azul claro)
	
ceu:
	beq $9, $0, solo	# condição de parada do loop
	sw $10, 0($8)		# carrega p/ o end de memoria que está em $8 o valor contido em $10 (cor azul claro)
	sw $10, 32768($8)	# cópia do cenário
	addi $8, $8, 4		# atualiza o end de memória
	addi $9, $9, -1		# decrementa $9 (quantidade de unidades gráficas)
	j ceu
	
solo:
	add $11, $0, $8		# ponto de retorno (início do solo)
	ori $10, $0, 0x349024	# primeira camada (grama)
	addi $9, $0, 128
	jal build
	ori $10, $0, 0x1b7711	# segunda camada (grama)
	addi $9, $0, 128
	jal build
	ori $10, $0, 0x165d08	# terceira camada (grama)
	addi $9, $0, 128
	jal build
	ori $10, $0, 0x103f05	# quarta camada (grama)
	addi $9, $0, 128
	jal build
	ori $10, $0, 0x062304	# quinta camada (grama)
	addi $9, $0, 128
	jal build
	ori $10, $0, 0x6c3910	# primeira camada (terra)
	addi $9, $0, 128
	jal build
	ori $10, $0, 0x572500	# segunda camada (terra)
	addi $9, $0, 128
	jal build
	ori $10, $0, 0x300a01	# terceira camada (terra)
	addi $9, $0, 128
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 32		# primeira linha
	ori $10, $0, 0x37a522
	addi $9, $0, 3
	jal build
	addi $8, $8, 32
	addi $9, $0, 2
	jal build
	addi $8, $8, 60
	addi $9, $0, 3
	jal build
	addi $8, $8, 24
	addi $9, $0, 1
	jal build
	addi $8, $8, 48
	addi $9, $0, 2
	jal build
	addi $8, $8, 40
	addi $9, $0, 4
	jal build
	addi $8, $8, 60
	addi $9, $0, 4
	jal build
	addi $8, $8, 32
	addi $9, $0, 2
	jal build
	addi $8, $8, 60
	addi $9, $0, 4
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 504	# segunda linha
	addi $8, $8, 32
	ori $10, $0, 0x165d0b
	addi $9, $0, 4
	jal build
	addi $8, $8, 32
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 60
	addi $9, $0, 4
	jal build
	addi $8, $8, 24
	addi $9, $0, 1
	jal build
	addi $8, $8, 48
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 40
	addi $9, $0, 4
	jal build
	addi $8, $8, 60
	addi $9, $0, 4
	jal build
	addi $8, $8, 32
	addi $9, $0, 2
	jal build
	addi $8, $8, 60
	addi $9, $0, 4
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 496	# segunda linha
	addi $8, $8, 24
	ori $10, $0, 0x227614
	addi $9, $0, 4
	jal build
	addi $8, $8, 32
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 60
	addi $9, $0, 4
	jal build
	addi $8, $8, 48
	addi $9, $0, 2
	jal build
	addi $8, $8, 60
	addi $9, $0, 4
	jal build
	addi $8, $8, 60
	addi $9, $0, 4
	jal build
	addi $8, $8, 32
	addi $9, $0, 2
	jal build
	addi $8, $8, 60
	addi $9, $0, 4
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 496	# segunda linha
	addi $8, $8, 20
	ori $10, $0, 0x165d08
	addi $9, $0, 1
	jal build
	addi $8, $8, 40
	addi $9, $0, 2
	jal build
	addi $8, $8, 40
	addi $9, $0, 2
	jal build
	ori $10, $0, 0x37a522
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	ori $10, $0, 0x165d08
	addi $8, $8, 56
	addi $9, $0, 1
	jal build
	ori $10, $0, 0x227614
	addi $8, $8, 60
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 48
	addi $9, $0, 1
	jal build
	ori $10, $0, 0x165d08
	addi $8, $8, 28
	addi $9, $0, 1
	jal build
	ori $10, $0, 0x227614	
	addi $8, $8, 28
	addi $9, $0, 2
	jal build
	addi $8, $8, 60
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	ori $10, $0, 0x165d08
	addi $8, $8, 28
	addi $9, $0, 2
	jal build
	addi $8, $8, 20
	addi $9, $0, 1
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 1008	# terceira linha
	addi $8, $8, 32
	ori $10, $0, 0x165d0b
	addi $9, $0, 4
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 32
	addi $9, $0, 2
	jal build
	addi $8, $8, 60
	addi $9, $0, 3
	jal build
	addi $8, $8, 24
	addi $9, $0, 1
	jal build
	addi $8, $8, 48
	addi $9, $0, 2
	jal build
	addi $8, $8, 40
	addi $9, $0, 4
	jal build
	addi $8, $8, 60
	addi $9, $0, 3
	jal build
	addi $8, $8, 32
	addi $9, $0, 2
	jal build
	addi $8, $8, 60
	addi $9, $0, 4
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 1012	# terceira linha
	addi $8, $8, 8
	ori $10, $0, 0x074600
	addi $9, $0, 4
	jal build
	addi $8, $8, 32
	addi $9, $0, 2
	jal build
	addi $8, $8, 60
	addi $9, $0, 4
	jal build
	addi $8, $8, 48
	addi $9, $0, 2
	jal build
	addi $8, $8, 60
	addi $9, $0, 4
	jal build
	addi $8, $8, 60
	addi $9, $0, 4
	jal build
	addi $8, $8, 32
	addi $9, $0, 2
	jal build
	addi $8, $8, 60
	addi $9, $0, 4
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 1008	# terceira linha
	addi $8, $8, 20
	ori $10, $0, 0x165d08
	addi $9, $0, 1
	jal build
	addi $8, $8, 40
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 40
	addi $9, $0, 2
	jal build
	ori $10, $0, 0x37a522
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	ori $10, $0, 0x165d08
	addi $8, $8, 56
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	ori $10, $0, 0x227614
	addi $8, $8, 60
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 48
	addi $9, $0, 1
	jal build
	ori $10, $0, 0x165d08
	addi $8, $8, 28
	addi $9, $0, 1
	jal build
	ori $10, $0, 0x227614	
	addi $8, $8, 28
	addi $9, $0, 2
	jal build
	addi $8, $8, 60
	addi $9, $0, 2
	jal build
	ori $10, $0, 0x165d08
	addi $8, $8, 28
	addi $9, $0, 2
	jal build
	addi $8, $8, 20
	addi $9, $0, 1
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 1524	# quarta linha
	addi $8, $8, 32
	ori $10, $0, 0x165d0b
	addi $9, $0, 4
	jal build
	addi $8, $8, 32
	addi $9, $0, 2
	jal build
	addi $8, $8, 60
	addi $9, $0, 4
	jal build
	addi $8, $8, 24
	addi $9, $0, 1
	jal build
	addi $8, $8, 48
	addi $9, $0, 2
	jal build
	addi $8, $8, 40
	addi $9, $0, 3
	jal build
	addi $8, $8, 60
	addi $9, $0, 3
	jal build
	addi $8, $8, 32
	addi $9, $0, 2
	jal build
	addi $8, $8, 60
	addi $9, $0, 4
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 1524	# quarta linha
	addi $8, $8, 24
	ori $10, $0, 0x012d03
	addi $9, $0, 3
	jal build
	addi $8, $8, 32
	addi $9, $0, 2
	jal build
	addi $8, $8, 60
	addi $9, $0, 3
	jal build
	addi $8, $8, 48
	addi $9, $0, 2
	jal build
	addi $8, $8, 60
	addi $9, $0, 3
	jal build
	addi $8, $8, 60
	addi $9, $0, 4
	jal build
	addi $8, $8, 32
	addi $9, $0, 2
	jal build
	addi $8, $8, 60
	addi $9, $0, 3
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 1504	# quarta linha
	addi $8, $8, 20
	ori $10, $0, 0x165d08
	addi $9, $0, 1
	jal build
	addi $8, $8, 40
	addi $9, $0, 2
	jal build
	addi $8, $8, 40
	addi $9, $0, 2
	jal build
	ori $10, $0, 0x37a522
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	ori $10, $0, 0x165d08
	addi $8, $8, 56
	addi $9, $0, 1
	jal build
	ori $10, $0, 0x227614
	addi $8, $8, 60
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 48
	addi $9, $0, 1
	jal build
	ori $10, $0, 0x165d08
	addi $8, $8, 28
	addi $9, $0, 1
	jal build
	ori $10, $0, 0x227614	
	addi $8, $8, 28
	addi $9, $0, 2
	jal build
	addi $8, $8, 60
	addi $9, $0, 2
	jal build
	ori $10, $0, 0x165d08
	addi $8, $8, 28
	addi $9, $0, 2
	jal build
	addi $8, $8, 20
	addi $9, $0, 1
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 1504	# quarta linha
	addi $8, $8, 60
	ori $10, $0, 0x854f0e
	addi $9, $0, 1
	jal build
	addi $8, $8, 60
	addi $9, $0, 1
	jal build
	addi $8, $8, 80
	addi $9, $0, 1
	jal build
	addi $8, $8, 96
	addi $9, $0, 1
	jal build
	addi $8, $8, 80
	addi $9, $0, 1
	jal build
	addi $8, $8, 60
	addi $9, $0, 1
	jal build
	addi $8, $8, 72
	addi $9, $0, 1
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 2036	# quinta linha
	ori $10, $0, 0x103f05
	addi $8, $8, 20
	addi $9, $0, 1
	jal build
	addi $8, $8, 20
	addi $9, $0, 1
	jal build
	addi $8, $8, 16
	addi $9, $0, 1
	jal build
	addi $8, $8, 24
	addi $9, $0, 1
	jal build
	addi $8, $8, 20
	addi $9, $0, 1
	jal build
	addi $8, $8, 32
	addi $9, $0, 1
	jal build
	addi $8, $8, 20
	addi $9, $0, 1
	jal build
	addi $8, $8, 20
	addi $9, $0, 1
	jal build
	addi $8, $8, 16
	addi $9, $0, 1
	jal build
	addi $8, $8, 24
	addi $9, $0, 1
	jal build
	addi $8, $8, 20
	addi $9, $0, 1
	jal build
	addi $8, $8, 32
	addi $9, $0, 1
	jal build
	addi $8, $8, 20
	addi $9, $0, 1
	jal build
	addi $8, $8, 20
	addi $9, $0, 1
	jal build
	addi $8, $8, 16
	addi $9, $0, 1
	jal build
	addi $8, $8, 24
	addi $9, $0, 1
	jal build
	addi $8, $8, 20
	addi $9, $0, 1
	jal build
	addi $8, $8, 32
	addi $9, $0, 1
	jal build
	addi $8, $8, 16
	addi $9, $0, 1
	jal build
	addi $8, $8, 20
	addi $9, $0, 1
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 2036	# quinta linha
	ori $10, $0, 0x854f0e
	addi $8, $8, 32
	addi $9, $0, 3
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 3
	jal build
	addi $8, $8, 16
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 2
	jal build
	addi $8, $8, 16
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 3
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 2
	jal build
	addi $8, $8, 16
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 3
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 16
	addi $9, $0, 1
	jal build
	addi $8, $8, 16
	addi $9, $0, 2
	jal build
	addi $8, $8, 16
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 3
	jal build
	
montes:
	lui $8, 0x1001
	addi $8, $8, 14848
	add $11, $0, $8		# retorno
	ori $10, $0, 0x286566	# primeira camada (montanhas)
	addi $9, $0, 30
	jal build
	addi $8, $8, 392
	addi $9, $0, 31
	jal build
	addi $8, $8, 388
	addi $9, $0, 32
	jal build
	addi $8, $8, 384
	addi $9, $0, 33
	jal build
	addi $8, $8, 380
	addi $9, $0, 34
	jal build
	addi $8, $8, 376
	addi $9, $0, 35
	jal build
	addi $8, $8, 372
	addi $9, $0, 36
	jal build
	addi $8, $8, 368
	addi $9, $0, 37
	jal build
	addi $8, $8, 364
	addi $9, $0, 38
	jal build
	addi $8, $8, 360
	addi $9, $0, 39
	jal build
	add $12, $0, $8		# retorno segunda montanha
	add $8, $0, $11		# retorno
	addi $8, $8, -512
	addi $9, $0, 29
	jal build
	addi $8, $8, -628
	addi $9, $0, 28
	jal build
	addi $8, $8, -624
	addi $9, $0, 27
	jal build
	addi $8, $8, -616
	addi $9, $0, 25
	jal build
	addi $8, $8, -608
	addi $9, $0, 23
	jal build
	addi $8, $8, -596
	addi $9, $0, 19
	jal build
	addi $8, $8, -580
	addi $9, $0, 15
	jal build
	addi $8, $8, -564
	addi $9, $0, 11
	jal build
	addi $8, $8, -548
	addi $9, $0, 7
	jal build
	add $8, $0, $12		# retorno segunda montanha
	addi $9, $0, 35		# início segunda montanha
	jal build
	add $8, $0, $12		# retorno segunda montanha
	addi $8, $8, -504
	addi $9, $0, 31
	jal build
	addi $8, $8, -632
	addi $9, $0, 29
	jal build
	addi $8, $8, -624
	addi $9, $0, 27
	jal build
	addi $8, $8, -616
	addi $9, $0, 25
	jal build
	addi $8, $8, -608
	addi $9, $0, 23
	jal build
	addi $8, $8, -600
	addi $9, $0, 21
	jal build
	addi $8, $8, -592
	addi $9, $0, 19
	jal build
	addi $8, $8, -584
	addi $9, $0, 17
	jal build
	addi $8, $8, -572
	addi $9, $0, 13
	jal build
	addi $8, $8, -556
	addi $9, $0, 9
	jal build
	addi $8, $8, -540
	addi $9, $0, 5
	jal build
	add $8, $0, $12		# retorno segunda montanha
	addi $8, $8, 140	# início terceira montanha
	addi $9, $0, 54
	jal build
	add $8, $0, $12		
	addi $8, $8, 140
	addi $8, $8, -504
	addi $9, $0, 52
	jal build
	addi $8, $8, -712
	addi $9, $0, 50
	jal build
	addi $8, $8, -712
	addi $9, $0, 50
	jal build
	addi $8, $8, -704
	addi $9, $0, 35
	jal build
	add $12, $0, $8		# retorno quarta montanha
	addi $8, $8, -644
	addi $9, $0, 31
	jal build
	addi $8, $8, -636
	addi $9, $0, 29
	jal build
	addi $8, $8, -620
	addi $9, $0, 25
	jal build
	addi $8, $8, -612
	addi $9, $0, 23
	jal build
	addi $8, $8, -596
	addi $9, $0, 19
	jal build
	addi $8, $8, -588
	addi $9, $0, 17
	jal build
	addi $8, $8, -572
	addi $9, $0, 13
	jal build
	addi $8, $8, -564
	addi $9, $0, 11
	jal build
	addi $8, $8, -548
	addi $9, $0, 7
	jal build
	add $8, $0, $12		# início quarta montanha
	addi $8, $8, 12
	addi $9, $0, 10
	jal build
	addi $8, $8, -548
	addi $9, $0, 9
	jal build
	addi $8, $8, -544
	addi $9, $0, 8
	jal build
	addi $8, $8, -540
	addi $9, $0, 7
	jal build
	addi $8, $8, -536
	addi $9, $0, 6
	jal build
	addi $8, $8, -532
	addi $9, $0, 5
	jal build
	addi $8, $8, -528
	addi $9, $0, 4
	jal build
	addi $8, $8, -524
	addi $9, $0, 3
	jal build
	addi $8, $8, -520
	addi $9, $0, 2
	jal build
	addi $8, $8, -516
	addi $9, $0, 1
	jal build
	add $8, $0, $11		# retorno primeira montanha
	addi $8, $8, 5120
	addi $9, $0, 2176
	jal build
	
sombras:
	add $8, $0, $11		# retorno primeira montanha
	ori $10, $0, 0x1f585e	# cor sombra das montanhas
	addi $8, $8, -4560
	addi $9, $0, 5
	jal build
	addi $8, $8, 496
	addi $9, $0, 6
	jal build
	addi $8, $8, 484
	addi $9, $0, 9
	jal build
	addi $8, $8, 484
	addi $9, $0, 8
	jal build
	addi $8, $8, 476
	addi $9, $0, 11
	jal build
	addi $8, $8, 476
	addi $9, $0, 10
	jal build
	addi $8, $8, 468
	addi $9, $0, 12
	jal build
	addi $8, $8, 472
	addi $9, $0, 11
	jal build
	addi $8, $8, 464
	addi $9, $0, 13
	jal build
	addi $8, $8, 468
	addi $9, $0, 12
	jal build
	addi $8, $8, 460
	addi $9, $0, 14
	jal build
	addi $8, $8, 464
	addi $9, $0, 13
	jal build
	addi $8, $8, 456
	addi $9, $0, 15
	jal build
	addi $8, $8, 460
	addi $9, $0, 14
	jal build
	addi $8, $8, 452
	addi $9, $0, 16
	jal build
	addi $8, $8, 456
	addi $9, $0, 15
	jal build
	addi $8, $8, 448
	addi $9, $0, 17
	jal build
	addi $8, $8, 452
	addi $9, $0, 16
	jal build
	addi $8, $8, 444
	addi $9, $0, 18
	jal build
	addi $8, $8, 448
	addi $9, $0, 17
	jal build
	addi $8, $8, 440
	addi $9, $0, 19
	jal build
	addi $8, $8, 444
	addi $9, $0, 18
	jal build
	addi $8, $8, 436
	addi $9, $0, 20
	jal build
	addi $8, $8, 440
	addi $9, $0, 19
	jal build
	addi $8, $8, 432
	addi $9, $0, 21
	jal build
	addi $8, $8, 436
	addi $9, $0, 20
	jal build
	addi $8, $8, 428
	addi $9, $0, 22
	jal build
	addi $8, $8, 432
	addi $9, $0, 21
	jal build
	addi $8, $8, 424
	addi $9, $0, 23
	jal build
	addi $8, $8, 428
	addi $9, $0, 22
	jal build
	addi $8, $8, 420
	addi $9, $0, 24
	jal build
	addi $8, $8, 424
	addi $9, $0, 23
	jal build
	addi $8, $8, 416
	addi $9, $0, 25
	jal build
	addi $8, $8, 420
	addi $9, $0, 24
	jal build
	addi $8, $8, 412
	addi $9, $0, 26
	jal build
	addi $8, $8, 416
	addi $9, $0, 25
	jal build
	add $8, $0, $11		# retorno primeira montanha
	addi $8, $8, -800
	addi $9, $0, 3
	jal build
	addi $8, $8, 504
	addi $9, $0, 4
	jal build
	addi $8, $8, 492
	addi $9, $0, 7
	jal build
	addi $8, $8, 492
	addi $9, $0, 7
	jal build
	addi $8, $8, 480
	addi $9, $0, 9
	jal build
	addi $8, $8, 484
	addi $9, $0, 8
	jal build
	addi $8, $8, 476
	addi $9, $0, 10
	jal build
	addi $8, $8, 480
	addi $9, $0, 9
	jal build
	addi $8, $8, 472
	addi $9, $0, 11
	jal build
	addi $8, $8, 476
	addi $9, $0, 10
	jal build
	addi $8, $8, 468
	addi $9, $0, 12
	jal build
	addi $8, $8, 472
	addi $9, $0, 11
	jal build
	addi $8, $8, 464
	addi $9, $0, 13
	jal build
	addi $8, $8, 468
	addi $9, $0, 12
	jal build
	addi $8, $8, 460
	addi $9, $0, 14
	jal build
	addi $8, $8, 464
	addi $9, $0, 13
	jal build
	addi $8, $8, 456
	addi $9, $0, 15
	jal build
	addi $8, $8, 460
	addi $9, $0, 14
	jal build
	addi $8, $8, 452
	addi $9, $0, 16
	jal build
	addi $8, $8, 456
	addi $9, $0, 15
	jal build
	addi $8, $8, 448
	addi $9, $0, 17
	jal build
	addi $8, $8, 452
	addi $9, $0, 16
	jal build
	addi $8, $8, 444
	addi $9, $0, 18
	jal build
	addi $8, $8, 448
	addi $9, $0, 17
	jal build
	addi $8, $8, 440
	addi $9, $0, 19
	jal build
	addi $8, $8, 444
	addi $9, $0, 18
	jal build
	addi $8, $8, 436
	addi $9, $0, 20
	jal build
	addi $8, $8, 440
	addi $9, $0, 19
	jal build
	addi $8, $8, 432
	addi $9, $0, 21
	jal build
	add $8, $0, $11		# retorno primeira montanha
	addi $8, $8, -1680
	addi $9, $0, 5
	jal build
	addi $8, $8, 496
	addi $9, $0, 6
	jal build
	addi $8, $8, 484
	addi $9, $0, 9
	jal build
	addi $8, $8, 484
	addi $9, $0, 9
	jal build
	addi $8, $8, 472
	addi $9, $0, 12
	jal build
	addi $8, $8, 472
	addi $9, $0, 12
	jal build
	addi $8, $8, 460
	addi $9, $0, 15
	jal build
	addi $8, $8, 460
	addi $9, $0, 15
	jal build
	addi $8, $8, 448
	addi $9, $0, 18
	jal build
	addi $8, $8, 448
	addi $9, $0, 18
	jal build
	addi $8, $8, 436
	addi $9, $0, 21
	jal build
	addi $8, $8, 436
	addi $9, $0, 21
	jal build
	addi $8, $8, 424
	addi $9, $0, 24
	jal build
	addi $8, $8, 424
	addi $9, $0, 24
	jal build
	addi $8, $8, 412
	addi $9, $0, 27
	jal build
	addi $8, $8, 412
	addi $9, $0, 27
	jal build
	addi $8, $8, 400
	addi $9, $0, 29
	jal build
	addi $8, $8, 404
	addi $9, $0, 27
	jal build
	addi $8, $8, 400
	addi $9, $0, 28
	jal build
	addi $8, $8, 408
	addi $9, $0, 26
	jal build
	addi $8, $8, 404
	addi $9, $0, 27
	jal build
	addi $8, $8, 412
	addi $9, $0, 25
	jal build
	addi $8, $8, 408
	addi $9, $0, 26
	jal build
	addi $8, $8, 416
	addi $9, $0, 24
	jal build
	addi $8, $8, 412
	addi $9, $0, 25
	jal build
	addi $8, $8, 420
	addi $9, $0, 23
	jal build
	addi $8, $8, 416
	addi $9, $0, 24
	jal build
	addi $8, $8, 424
	addi $9, $0, 22
	jal build
	addi $8, $8, 420
	addi $9, $0, 23
	jal build
	addi $8, $8, 428
	addi $9, $0, 21
	jal build
	addi $8, $8, 424
	addi $9, $0, 22
	jal build
	add $8, $0, $11		# retorno primeira montanha
	ori $10, $0, 0x49c1fe	# cor (azul claro)
	addi $8, $8, 4764
	addi $9, $0, 1
	jal build

arbustos:
	add $8, $0, $11		# retorno primeira montanha
	ori $10, $0, 0x0c451f	# cor verde (segunda camada)
	addi $8, $8, 11776
	add $11, $0, $8		# retorno arbustos
	addi $9, $0, 256
	jal build
	ori $10, $0, 0x062c15	# cor verde (terceira camada)
	addi $9, $0, 128
	jal build
	ori $10, $0, 0x0b3d05	# cor verde (quarta camada)
	addi $9, $0, 128
	jal build
	add $8, $0, $11		# retorno começo arbustos
	addi $8, $8, -500
	ori $10, $0, 0x166430	# cor verde (primeira camada)
	addi $9, $0, 122
	jal build
	addi $8, $8, -992
	addi $9, $0, 118
	jal build
	addi $8, $8, -976
	addi $9, $0, 32
	jal build
	addi $8, $8, 36
	addi $9, $0, 32
	jal build
	addi $8, $8, 36
	addi $9, $0, 32
	jal build
	addi $8, $8, -956
	addi $9, $0, 24
	jal build
	addi $8, $8, 64
	addi $9, $0, 12
	jal build
	addi $8, $8, 20
	addi $9, $0, 10
	jal build
	addi $8, $8, 64
	addi $9, $0, 24
	jal build
	addi $8, $8, -924
	addi $9, $0, 16
	jal build
	addi $8, $8, 88
	addi $9, $0, 8
	jal build
	addi $8, $8, 36
	addi $9, $0, 6
	jal build
	addi $8, $8, 88
	addi $9, $0, 18
	jal build
	addi $8, $8, -904
	add $12, $0, $8		# ponto de retorno arbusto
	addi $9, $0, 10
	jal build
	addi $8, $8, 296
	addi $9, $0, 10
	jal build
	add $8, $0, $12		# retorno arbustos
	ori $10, $0, 0x137c3c	# cor verde (contorno)
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	addi $9, $0, 2
	jal build
	addi $8, $8, 296
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	add $8, $0, $12		# retorno arbustos
	addi $8, $8, 500
	addi $9, $0, 3
	jal build
	addi $8, $8, 8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	addi $9, $0, 2
	jal build
	addi $8, $8, 80
	addi $9, $0, 3
	jal build
	addi $8, $8, 8
	addi $9, $0, 3
	jal build
	addi $8, $8, 36
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	addi $9, $0, 2
	jal build
	addi $8, $8, 88
	addi $9, $0, 4
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 3
	jal build
	add $8, $0, $12		# retorno arbustos
	addi $8, $8, 996
	addi $9, $0, 4
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 68
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	addi $9, $0, 2
	jal build
	addi $8, $8, 24
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 68
	addi $9, $0, 4
	jal build
	addi $8, $8, 20
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 2
	jal build
	addi $8, $8, 100
	addi $9, $0, 1
	jal build
	add $8, $0, $12		# retorno arbustos
	addi $8, $8, 1496
	addi $9, $0, 3
	jal build
	addi $8, $8, 28
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 16
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 3
	jal build
	addi $8, $8, 40
	addi $9, $0, 2
	jal build
	addi $8, $8, 28
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	addi $9, $0, 6
	jal build
	addi $8, $8, 16
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 3
	jal build
	addi $8, $8, 32
	addi $9, $0, 4
	jal build
	addi $8, $8, 32
	addi $9, $0, 1
	jal build
	addi $8, $8, 20
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 16
	addi $9, $0, 4
	jal build	
	add $8, $0, $12		# retorno arbustos
	addi $8, $8, 1996
	addi $9, $0, 3
	jal build
	addi $8, $8, 24
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 24
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build	
	add $8, $0, $12		# retorno arbustos
	addi $8, $8, 2132
	addi $9, $0, 10
	jal build
	addi $8, $8, 44
	addi $9, $0, 2
	jal build
	addi $8, $8, 48
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	add $8, $0, $12		# retorno arbustos
	addi $8, $8, 2304
	addi $9, $0, 8
	jal build
	addi $8, $8, 44
	addi $9, $0, 1
	jal build
	addi $8, $8, 28
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 28
	addi $9, $0, 2
	jal build	
	add $8, $0, $12		# retorno arbustos
	addi $8, $8, 2504
	sw $10, 0($8)
	sw $10, 32768($8) 	#copia do cenario
	addi $8, $8, 480
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	addi $9, $0, 3
	jal build
	addi $8, $8, 488
	addi $9, $0, 3
	jal build	
	add $8, $0, $11		# retorno
	addi $8, $8, -512	# linha 5
	ori $10, $0, 0x0c451f
	addi $8, $8, 24
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 2
	jal build
	addi $8, $8, 16
	addi $9, $0, 1
	jal build
	addi $8, $8, 16
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, -412
	addi $8, $8, 24
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 20
	addi $9, $0, 1
	jal build
	addi $8, $8, 36
	addi $9, $0, 1
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, -312
	addi $8, $8, 24
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 16
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, -212
	addi $8, $8, 24
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 16
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, -112
	addi $8, $8, 24
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	add $8, $0, $11		# retorno
	ori $10, $0, 0x166430
	addi $8, $8, 12
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 3
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	addi $9, $0, 2
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 512
	ori $10, $0, 0x166430
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build	
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 16
	addi $9, $0, 1
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 512
	ori $10, $0, 0x062c15
	addi $8, $8, 16
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build	
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 16
	addi $9, $0, 1
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 1024
	ori $10, $0, 0x0c451f
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 16
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 16
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 16
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 16
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 20
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 16
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 16
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 16
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 1536
	ori $10, $0, 0x062c15	# cor verde (terceira camada)
	addi $9, $0, 3
	jal build
	addi $8, $8, 12
	addi $9, $0, 4
	jal build
	addi $8, $8, 8
	addi $9, $0, 2
	jal build
	addi $8, $8, 16
	addi $9, $0, 3
	jal build
	addi $8, $8, 16
	addi $9, $0, 3
	jal build
	addi $8, $8, 8
	addi $9, $0, 3
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 3
	jal build
	addi $8, $8, 8
	addi $9, $0, 3
	jal build
	addi $8, $8, 8
	addi $9, $0, 3
	jal build
	addi $8, $8, 8
	addi $9, $0, 3
	jal build
	addi $8, $8, 4
	addi $9, $0, 3
	jal build
	addi $8, $8, 8
	addi $9, $0, 3
	jal build
	addi $8, $8, 4
	addi $9, $0, 3
	jal build
	addi $8, $8, 8
	addi $9, $0, 3
	jal build
	addi $8, $8, 8
	addi $9, $0, 4
	jal build
	addi $8, $8, 8
	addi $9, $0, 3
	jal build
	addi $8, $8, 12
	addi $9, $0, 3
	jal build
	addi $8, $8, 12
	addi $9, $0, 3
	jal build
	addi $8, $8, 12
	addi $9, $0, 3
	jal build
	addi $8, $8, 8
	addi $9, $0, 3
	jal build
	addi $8, $8, 8
	addi $9, $0, 3
	jal build
	addi $8, $8, 8
	addi $9, $0, 3
	jal build
	addi $8, $8, 8
	addi $9, $0, 3
	jal build
	addi $8, $8, 8
	addi $9, $0, 3
	jal build
	
nuvens:
	lui $8, 0x1001		# end inicio
	ori $10, $0, 0xffffff	
	addi $8, $8, 1536	# início primeira nuvem
	add $11, $0, $8		# retorno
	addi $8, $8, 32
	addi $9, $0, 3
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 512
	addi $9, $0, 13
	jal build
	addi $8, $8, 460
	addi $9, $0, 17
	jal build
	addi $8, $8, 444
	addi $9, $0, 19
	jal build
	add $8, $0, $11		# retorno
	ori $10, $0, 0xb2e7ff	# sombra
	addi $8, $8, 40
	sw $10, 0($8)
	sw $10, 32768($8) 	#copia do cenario
	add $8, $0, $11		# retorno
	addi $8, $8, 556
	addi $9, $0, 2
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 1028
	sw $10, 0($8)
	sw $10, 32768($8) 	#copia do cenario
	addi $8, $8, 16
	addi $9, $0, 2
	jal build
	addi $8, $8, 16
	sw $10, 0($8)
	sw $10, 32768($8) 	#copia do cenario
	addi $8, $8, 12
	addi $9, $0, 3
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 1536
	addi $9, $0, 6
	jal build
	addi $8, $8, 4
	addi $9, $0, 4
	jal build
	addi $8, $8, 4
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	addi $9, $0, 4
	jal build
	lui $8, 0x1001		# end inicio
	ori $10, $0, 0xffffff
	addi $8, $8, 2196	# início segunda nuvem
	add $11, $0, $8		# retorno
	addi $9, $0, 4
	jal build
	addi $8, $8, 492
	addi $9, $0, 9
	jal build
	add $8, $0, $11		# retorno
	ori $10, $0, 0xb2e7ff	# sombra
	addi $8, $8, 12
	sw $10, 0($8)
	sw $10, 32768($8) 	#copia do cenario
	add $8, $0, $11		# retorno
	addi $8, $8, 516
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	sw $10, 0($8)
	sw $10, 32768($8) 	#copia do cenario
	addi $8, $8, 8
	sw $10, 0($8)
	sw $10, 32768($8) 	#copia do cenario
	lui $8, 0x1001		# end inicio
	ori $10, $0, 0xffffff
	addi $8, $8, 2816	# início terceira nuvem
	add $11, $0, $8		# retorno
	addi $9, $0, 4
	jal build
	addi $8, $8, 12
	addi $9, $0, 5
	jal build
	addi $8, $8, 20
	addi $9, $0, 3
	jal build
	addi $8, $8, 424
	addi $9, $0, 27
	jal build
	addi $8, $8, 396
	addi $9, $0, 31
	jal build
	add $8, $0, $11		# retorno
	ori $10, $0, 0xb2e7ff	# sombra
	addi $8, $8, 12
	sw $10, 0($8)
	sw $10, 32768($8) 	#copia do cenario
	addi $8, $8, 28
	addi $9, $0, 2
	jal build
	addi $8, $8, 28
	sw $10, 0($8)
	sw $10, 32768($8) 	#copia do cenario
	add $8, $0, $11		# retorno
	addi $8, $8, 524
	addi $9, $0, 2
	jal build
	addi $8, $8, 24
	addi $9, $0, 3
	jal build
	addi $8, $8, 24
	sw $10, 0($8)
	sw $10, 32768($8) 	#copia do cenario
	addi $8, $8, 12
	addi $9, $0, 2
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 1020
	addi $9, $0, 4
	jal build
	addi $8, $8, 4
	addi $9, $0, 4
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 3
	jal build
	addi $8, $8, 4
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 3
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	lui $8, 0x1001		# end inicio
	ori $10, $0, 0xffffff
	addi $8, $8, 2472	# início quarta nuvem
	add $11, $0, $8		# retorno
	addi $9, $0, 3
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 500
	addi $9, $0, 8
	jal build
	add $8, $0, $11		# retorno
	ori $10, $0, 0xb2e7ff	# sombra
	addi $8, $8, 8
	sw $10, 0($8)
	sw $10, 32768($8) 	#copia do cenario
	add $8, $0, $11		# retorno
	addi $8, $8, 508
	sw $10, 0($8)
	sw $10, 32768($8) 	#copia do cenario
	addi $8, $8, 8
	sw $10, 0($8)
	sw $10, 32768($8) 	#copia do cenario
	addi $8, $8, 8
	addi $9, $0, 2
	jal build
	lui $8, 0x1001		# end inicio
	ori $10, $0, 0xffffff
	addi $8, $8, 6708	# início quinta nuvem
	add $11, $0, $8		# retorno
	addi $9, $0, 8
	jal build
	addi $8, $8, 464
	addi $9, $0, 17
	jal build
	addi $8, $8, 436
	addi $9, $0, 17
	jal build
	add $8, $0, $11		# retorno
	ori $10, $0, 0xb2e7ff	# sombra
	addi $8, $8, 20
	sw $10, 0($8)
	sw $10, 32768($8) 	#copia do cenario
	addi $8, $8, 8
	sw $10, 0($8)
	sw $10, 32768($8)	#copia do cenario
	add $8, $0, $11		# retorno
	addi $8, $8, 528
	sw $10, 0($8)
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 20
	sw $10, 0($8)
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 8
	addi $9, $0, 2
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 1012
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	sw $10, 0($8)
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 8
	addi $9, $0, 5
	jal build
	addi $8, $8, 4
	addi $9, $0, 3
	jal build
	lui $8, 0x1001		# end inicio
	ori $10, $0, 0xffffff
	addi $8, $8, 7340	# início sexta nuvem
	add $11, $0, $8		# retorno
	addi $9, $0, 9
	jal build
	addi $8, $8, 468
	addi $9, $0, 14
	jal build
	add $8, $0, $11		# retorno
	ori $10, $0, 0xb2e7ff	# sombra
	addi $8, $8, 28
	addi $9, $0, 2
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 512
	sw $10, 0($8)
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 8
	sw $10, 0($8)
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	sw $10, 0($8)
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 8
	addi $9, $0, 2
	jal build
	lui $8, 0x1001		# end inicio
	ori $10, $0, 0xffffff
	addi $8, $8, 7984	# início sétima nuvem
	add $11, $0, $8		# retorno
	addi $9, $0, 5
	jal build
	addi $8, $8, 28
	addi $9, $0, 3
	jal build
	addi $8, $8, 436
	addi $9, $0, 20
	jal build
	addi $8, $8, 424
	addi $9, $0, 26
	jal build
	addi $8, $8, 396
	addi $9, $0, 31
	jal build
	add $8, $0, $11		# retorno
	ori $10, $0, 0xb2e7ff	# sombra
	addi $8, $8, 16
	sw $10, 0($8)
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 40
	sw $10, 0($8)
	sw $10, 32768($8)	#copia do cenario
	add $8, $0, $11		# retorno
	addi $8, $8, 532
	sw $10, 0($8)
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 36
	addi $9, $0, 3
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 1036
	sw $10, 0($8)
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 8
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	sw $10, 0($8)
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 28
	sw $10, 0($8)
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 8
	addi $9, $0, 3
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 1512
	sw $10, 0($8)
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 8
	addi $9, $0, 3
	jal build
	addi $8, $8, 4
	sw $10, 0($8)
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 8
	addi $9, $0, 8
	jal build
	addi $8, $8, 4
	addi $9, $0, 6
	jal build
	addi $8, $8, 8
	addi $9, $0, 3
	jal build
	lui $8, 0x1001		# end inicio
	ori $10, $0, 0xffffff
	addi $8, $8, 6092	# início oitava nuvem
	add $11, $0, $8		# retorno
	addi $9, $0, 10
	jal build
	addi $8, $8, 464
	addi $9, $0, 15
	jal build
	addi $8, $8, 432
	addi $9, $0, 20
	jal build
	addi $8, $8, 412
	addi $9, $0, 25
	jal build
	add $8, $0, $11		# retorno
	ori $10, $0, 0xb2e7ff	# sombra
	addi $8, $8, 32
	sw $10, 0($8)
	sw $10, 32768($8)	#copia do cenario
	add $8, $0, $11		# retorno
	addi $8, $8, 520
	sw $10, 0($8)
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 8
	addi $9, $0, 3
	jal build
	addi $8, $8, 8
	sw $10, 0($8)
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 8
	addi $9, $0, 2
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 1016
	sw $10, 0($8)
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 12
	addi $9, $0, 3
	jal build
	addi $8, $8, 4
	sw $10, 0($8)
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 8
	addi $9, $0, 5
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 1504
	sw $10, 0($8)
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 12
	addi $9, $0, 7
	jal build
	addi $8, $8, 4
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	addi $9, $0, 7
	jal build

coqueiros:
	lui $8, 0x1001		# end inicio	
	addi $8, $8, 28192	# primeiro coqueiro
	jal coqueiro1
	lui $8, 0x1001		# end inicio
	addi $8, $8, 28280	# segundo coqueiro
	jal coqueiro1
	lui $8, 0x1001		# end inicio
	addi $8, $8, 28368	# terceiro coqueiro
	jal coqueiro1
	lui $8, 0x1001		# end inicio
	addi $8, $8, 28456	# quarto coqueiro
	jal coqueiro1
	lui $8, 0x1001		# end inicio
	addi $8, $8, 28544	# quinto coqueiro
	jal coqueiro1
	lui $8, 0x1001		# end inicio
	addi $8, $8, 28632	# sexto coqueiro
	jal coqueiro1
	
#============================================================================================================================
# FIM DO CENÁRIO
#============================================================================================================================

ponto:
	lui $8, 0x1001		# end inicio
      	ori $20, 0xff0000	# vermelho
      	lui $21, 0xffff		# detecção do teclado
      	addi $10, $0, 4		# $10 = direção do movimento
      	addi $25, $0, ' '
      	addi $11, $0, 'a'
      	addi $12, $0, 'd'
      	addi $13, $0, 's'
      	addi $14, $0, 'w'
      	
loopmov: 
      	sw $20, 0($8)		# carrega o ponto no espaço atual
	jal timer
      	lw $9, 32768($8)	# recupera o cenário de volta
      	sw $9, 0($8)		# carrega o cenário de volta no espaço atual
      	add $8, $8, $10
      	
      	lw $22, 0($21)		# verifica se veio alguma entrada do teclado
      	beq $22, $0, loopmov	# se $22 for igual a zero é pq nada foi digitado então salta para 'cont'
      	lw $23, 4($21)		# $21 é igual a 0xffff0000 + 4 = 0xffff0004 que é o end para onde vai o conteúdo da entrada do teclado. Entao $23 vai receber o que foi digitado
      	beq $23, $25, fim	# se digitou espaço o jogo termina
      	beq $23, $11, esq	# se digitou 'a' vai para esquerda
      	beq $23, $12, dir	# se digitou 'd' vai para direita
      	beq $23, $13, baixo	# se digitou 's' vai para baixo
      	beq $23, $14, cima	# se digitou 'w' vai para cima
      	j loopmov
      	 
esq:  addi $10, $0, -4      
      j loopmov
     
dir:  addi $10, $0, 4
      j loopmov  
     
baixo:  addi $10, $0, +512
      j loopmov
     
cima:  addi $10, $0, -512
      j loopmov       	

fim:
	addi $2, $0, 10
	syscall

#============================================================================================================================
# Função Timer
# Regs usados 		$16 e $29
# Regs sujos		-

timer: sw $16, 0($29)
       addi $29, $29, -4
       addi $16, $0, 20000	# velocidade do movimento
forT:  beq $16, $0, fimT
       nop
       nop
       addi $16, $16, -1      
       j forT                  
fimT:  addi $29, $29, 4                                                    
       lw $16, 0($29)          
       jr $31
       
#============================================================================================================================
# Função Criar
# Regs usados 		$8 e $9
# Regs sujos		-

build:
	beq $9, $0, fimBuild
	sw $10, 0($8)
	sw $10, 32768($8) 	#copia do cenario	
	addi $8, $8, 4
	addi $9, $9, -1
	j build
	
fimBuild:
	jr $31
	
#============================================================================================================================
# Função Coqueiro 1
# Regs usados 		$8, $9, $10, $11, $12 e $13
# Regs sujos		$11, $12 e $13

coqueiro1:
	add $13, $0, $31		# ponto de retorno da funcao
	ori $10, $0, 0x592b1a		# cor do tronco
	addi $9, $0, 2
	jal build
	addi $8, $8, -524
	addi $9, $0, 3
	jal build
	addi $8, $8, -524
	addi $9, $0, 2
	jal build
	addi $8, $8, -520
	addi $9, $0, 2
	jal build
	addi $8, $8, -520
	addi $9, $0, 2
	jal build
	addi $8, $8, -520
	addi $9, $0, 2
	jal build
	addi $8, $8, -520
	addi $9, $0, 2
	jal build
	addi $8, $8, -520
	addi $9, $0, 3
	jal build
	addi $8, $8, -520
	addi $9, $0, 2
	jal build
	addi $8, $8, -520
	addi $9, $0, 2
	jal build
	addi $8, $8, -516
	addi $9, $0, 2
	jal build
	addi $8, $8, -520
	addi $9, $0, 2
	jal build
	addi $8, $8, -516
	add $11, $0, $8			# retorno
	addi $9, $0, 1
	jal build
	ori $10, $0, 0x0c3d05		# cor das folhas
	addi $8, $8, -532
	addi $9, $0, 11
	jal build
	addi $8, $8, -552
	addi $9, $0, 9
	jal build
	addi $8, $8, -556
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 7
	jal build
	addi $8, $8, -552
	addi $9, $0, 9
	jal build
	addi $8, $8, -544
	addi $9, $0, 11
	jal build
	addi $8, $8, -552
	addi $9, $0, 4
	jal build
	addi $8, $8, 8
	addi $9, $0, 3
	jal build
	addi $8, $8, -540
	addi $9, $0, 2
	jal build
	addi $8, $8, -528
	add $12, $0, $8			# retorno p/ sombras
	addi $9, $0, 3
	jal build
	add $8, $0, $11			# retorno
	addi $8, $8, -16
	addi $9, $0, 2
	jal build
	addi $8, $8, 16
	addi $9, $0, 5
	jal build
	addi $8, $8, 468
	addi $9, $0, 1
	jal build
	addi $8, $8, 24
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 496
	addi $9, $0, 1
	jal build
	add $8, $0, $12			# sombras
	ori $10, $0, 0x16550d		# folhas
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 512
	addi $9, $0, 1
	jal build
	addi $8, $8, 504
	addi $9, $0, 1
	jal build
	addi $8, $8, 20
	addi $9, $0, 1
	jal build
	addi $8, $8, 476
	addi $9, $0, 2
	jal build
	addi $8, $8, 20
	addi $9, $0, 1
	jal build
	addi $8, $8, 476
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 496
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 480
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 508
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	addi $8, $8, 468
	addi $9, $0, 1
	jal build
	addi $8, $8, 20
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	addi $9, $0, 1
	jal build
	addi $8, $8, 500
	addi $9, $0, 1
	jal build
	add $8, $0, $11			# retorno
	ori $10, $0, 0x3c2414		# tronco
	addi $8, $8, 512
	addi $9, $0, 1
	jal build
	addi $8, $8, 1016
	addi $9, $0, 1
	jal build
	addi $8, $8, 508
	addi $9, $0, 1
	jal build
	addi $8, $8, 504
	addi $9, $0, 1
	jal build
	addi $8, $8, 1532
	addi $9, $0, 1
	jal build
	addi $8, $8, 1020
	addi $9, $0, 1
	jal build
	addi $8, $8, 504
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	addi $9, $0, 1
	jal build
	add $31, $0, $13		# recupera o ponto de retorno
	jr $31
