.text

main:
	lui $6, 0x1001		# end inicio
	lui $7, 0x1001		# end inicio
	lui $8, 0x1001		# end inicio
	addi $9, $0, 7168	# céu 
	ori $10, $0, 0x49c1fe	# cor (azul claro)
	
ceu:
	beq $9, $0, solo	# condição de parada do loop
	sw $10, 0($8)		# carrega p/ o end de memoria que está em $8 o valor contido em $10 (cor azul claro)
	sw $10, 32768($8)	# cópia do cenário
	sw $10, 32768($7) 	# copia do cenario
	sw $10, 32768($6) 	# copia do cenario
	addi $6, $6, 4		# atualiza o end de memória
	addi $7, $7, 4		# atualiza o end de memória
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
	lui $6, 0x1001
	lui $7, 0x1001
	lui $8, 0x1001
	addi $6, $6, 14848
	addi $7, $7, 14848
	addi $8, $8, 14848
	add $11, $0, $8		# retorno
	ori $10, $0, 0x286566	# primeira camada (montanhas)
	addi $9, $0, 30
	jal build
	addi $6, $6, 392
	addi $7, $7, 392
	addi $8, $8, 392
	addi $9, $0, 31
	jal build
	addi $6, $6, 388
	addi $7, $7, 388
	addi $8, $8, 388
	addi $9, $0, 32
	jal build
	addi $6, $6, 384
	addi $7, $7, 384
	addi $8, $8, 384
	addi $9, $0, 33
	jal build
	addi $6, $6, 380
	addi $7, $7, 380
	addi $8, $8, 380
	addi $9, $0, 34
	jal build
	addi $6, $6, 376
	addi $7, $7, 376
	addi $8, $8, 376
	addi $9, $0, 35
	jal build
	addi $6, $6, 372
	addi $7, $7, 372
	addi $8, $8, 372
	addi $9, $0, 36
	jal build
	addi $6, $6, 368
	addi $7, $7, 368
	addi $8, $8, 368
	addi $9, $0, 37
	jal build
	addi $6, $6, 364
	addi $7, $7, 364
	addi $8, $8, 364
	addi $9, $0, 38
	jal build
	addi $6, $6, 360
	addi $7, $7, 360
	addi $8, $8, 360
	addi $9, $0, 39
	jal build
	add $12, $0, $8		# retorno segunda montanha
	add $6, $0, $11		# retorno
	add $7, $0, $11		# retorno
	add $8, $0, $11		# retorno
	addi $6, $6, -512
	addi $7, $7, -512
	addi $8, $8, -512
	addi $9, $0, 29
	jal build
	addi $6, $6, -628
	addi $7, $7, -628
	addi $8, $8, -628
	addi $9, $0, 28
	jal build
	addi $6, $6, -624
	addi $7, $7, -624
	addi $8, $8, -624
	addi $9, $0, 27
	jal build
	addi $6, $6, -616
	addi $7, $7, -616
	addi $8, $8, -616
	addi $9, $0, 25
	jal build
	addi $6, $6, -608
	addi $7, $7, -608
	addi $8, $8, -608
	addi $9, $0, 23
	jal build
	addi $6, $6, -596
	addi $7, $7, -596
	addi $8, $8, -596
	addi $9, $0, 19
	jal build
	addi $6, $6, -580
	addi $7, $7, -580
	addi $8, $8, -580
	addi $9, $0, 15
	jal build
	addi $6, $6, -564
	addi $7, $7, -564
	addi $8, $8, -564
	addi $9, $0, 11
	jal build
	addi $6, $6, -548
	addi $7, $7, -548
	addi $8, $8, -548
	addi $9, $0, 7
	jal build
	add $6, $0, $12
	add $7, $0, $12
	add $8, $0, $12		# retorno segunda montanha
	addi $9, $0, 35		# início segunda montanha
	jal build
	add $6, $0, $12
	add $7, $0, $12
	add $8, $0, $12		# retorno segunda montanha
	addi $6, $6, -504
	addi $7, $7, -504
	addi $8, $8, -504
	addi $9, $0, 31
	jal build
	addi $6, $6, -632
	addi $7, $7, -632
	addi $8, $8, -632
	addi $9, $0, 29
	jal build
	addi $6, $6, -624
	addi $7, $7, -624
	addi $8, $8, -624
	addi $9, $0, 27
	jal build
	addi $6, $6, -616
	addi $7, $7, -616
	addi $8, $8, -616
	addi $9, $0, 25
	jal build
	addi $6, $6, -608
	addi $7, $7, -608
	addi $8, $8, -608
	addi $9, $0, 23
	jal build
	addi $6, $6, -600
	addi $7, $7, -600
	addi $8, $8, -600
	addi $9, $0, 21
	jal build
	addi $6, $6, -592
	addi $7, $7, -592
	addi $8, $8, -592
	addi $9, $0, 19
	jal build
	addi $6, $6, -584
	addi $7, $7, -584
	addi $8, $8, -584
	addi $9, $0, 17
	jal build
	addi $6, $6, -572
	addi $7, $7, -572
	addi $8, $8, -572
	addi $9, $0, 13
	jal build
	addi $6, $6, -556
	addi $7, $7, -556
	addi $8, $8, -556
	addi $9, $0, 9
	jal build
	addi $6, $6, -540
	addi $7, $7, -540
	addi $8, $8, -540
	addi $9, $0, 5
	jal build
	add $6, $0, $12
	add $7, $0, $12
	add $8, $0, $12		# retorno segunda montanha
	addi $6, $6, 140
	addi $7, $7, 140
	addi $8, $8, 140	# início terceira montanha
	addi $9, $0, 54
	jal build
	add $6, $0, $12
	add $7, $0, $12
	add $8, $0, $12	
	addi $6, $6, 140
	addi $7, $7, 140	
	addi $8, $8, 140
	addi $6, $6, -504
	addi $7, $7, -504
	addi $8, $8, -504
	addi $9, $0, 52
	jal build
	addi $6, $6, -712
	addi $7, $7, -712
	addi $8, $8, -712
	addi $9, $0, 50
	jal build
	addi $6, $6, -712
	addi $7, $7, -712
	addi $8, $8, -712
	addi $9, $0, 50
	jal build
	addi $6, $6, -704
	addi $7, $7, -704
	addi $8, $8, -704
	addi $9, $0, 35
	jal build
	add $6, $0, $12
	add $7, $0, $12
	add $12, $0, $8		# retorno quarta montanha
	addi $6, $6, -644
	addi $7, $7, -644
	addi $8, $8, -644
	addi $9, $0, 31
	jal build
	addi $6, $6, -636
	addi $7, $7, -636
	addi $8, $8, -636
	addi $9, $0, 29
	jal build
	addi $6, $6, -620
	addi $7, $7, -620
	addi $8, $8, -620
	addi $9, $0, 25
	jal build
	addi $6, $6, -612
	addi $7, $7, -612
	addi $8, $8, -612
	addi $9, $0, 23
	jal build
	addi $6, $6, -596
	addi $7, $7, -596
	addi $8, $8, -596
	addi $9, $0, 19
	jal build
	addi $6, $6, -588
	addi $7, $7, -588
	addi $8, $8, -588
	addi $9, $0, 17
	jal build
	addi $6, $6, -572
	addi $7, $7, -572
	addi $8, $8, -572
	addi $9, $0, 13
	jal build
	addi $6, $6, -564
	addi $7, $7, -564
	addi $8, $8, -564
	addi $9, $0, 11
	jal build
	addi $6, $6, -548
	addi $7, $7, -548
	addi $8, $8, -548
	addi $9, $0, 7
	jal build
	add $6, $0, $12
	add $7, $0, $12
	add $8, $0, $12		# início quarta montanha
	addi $6, $6, 12
	addi $7, $7, 12
	addi $8, $8, 12
	addi $9, $0, 10
	jal build
	addi $6, $6, -548
	addi $7, $7, -548
	addi $8, $8, -548
	addi $9, $0, 9
	jal build
	addi $6, $6, -544
	addi $7, $7, -544
	addi $8, $8, -544
	addi $9, $0, 8
	jal build
	addi $6, $6, -540
	addi $7, $7, -540
	addi $8, $8, -540
	addi $9, $0, 7
	jal build
	addi $8, $8, -536
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 6
	jal build
	addi $8, $8, -532
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 5
	jal build
	addi $8, $8, -528
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 4
	jal build
	addi $8, $8, -524
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, -520
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, -516
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	add $6, $0, $11
	add $7, $0, $11
	add $8, $0, $11		# retorno primeira montanha
	addi $8, $8, 5120
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2176
	jal build
	
sombras:
	add $6, $0, $11
	add $7, $0, $11
	add $8, $0, $11		# retorno primeira montanha
	ori $10, $0, 0x1f585e	# cor sombra das montanhas
	addi $8, $8, -4560
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 5
	jal build
	addi $8, $8, 496
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 6
	jal build
	addi $8, $8, 484
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 9
	jal build
	addi $8, $8, 484
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 8
	jal build
	addi $8, $8, 476
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 11
	jal build
	addi $8, $8, 476
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 10
	jal build
	addi $8, $8, 468
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 12
	jal build
	addi $8, $8, 472
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 11
	jal build
	addi $8, $8, 464
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 13
	jal build
	addi $8, $8, 468
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 12
	jal build
	addi $8, $8, 460
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 14
	jal build
	addi $8, $8, 464
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 13
	jal build
	addi $8, $8, 456
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 15
	jal build
	addi $8, $8, 460
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 14
	jal build
	addi $8, $8, 452
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 16
	jal build
	addi $8, $8, 456
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 15
	jal build
	addi $8, $8, 448
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 17
	jal build
	addi $8, $8, 452
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 16
	jal build
	addi $8, $8, 444
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 18
	jal build
	addi $8, $8, 448
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 17
	jal build
	addi $8, $8, 440
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 19
	jal build
	addi $8, $8, 444
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 18
	jal build
	addi $8, $8, 436
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 20
	jal build
	addi $8, $8, 440
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 19
	jal build
	addi $8, $8, 432
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 21
	jal build
	addi $8, $8, 436
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 20
	jal build
	addi $8, $8, 428
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 22
	jal build
	addi $8, $8, 432
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 21
	jal build
	addi $8, $8, 424
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 23
	jal build
	addi $8, $8, 428
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 22
	jal build
	addi $8, $8, 420
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 24
	jal build
	addi $8, $8, 424
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 23
	jal build
	addi $8, $8, 416
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 25
	jal build
	addi $8, $8, 420
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 24
	jal build
	addi $8, $8, 412
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 26
	jal build
	addi $8, $8, 416
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 25
	jal build
	add $6, $0, $11
	add $7, $0, $11
	add $8, $0, $11		# retorno primeira montanha
	addi $8, $8, -800
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 504
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 4
	jal build
	addi $8, $8, 492
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 7
	jal build
	addi $8, $8, 492
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 7
	jal build
	addi $8, $8, 480
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 9
	jal build
	addi $8, $8, 484
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 8
	jal build
	addi $8, $8, 476
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 10
	jal build
	addi $8, $8, 480
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 9
	jal build
	addi $8, $8, 472
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 11
	jal build
	addi $8, $8, 476
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 10
	jal build
	addi $8, $8, 468
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 12
	jal build
	addi $8, $8, 472
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 11
	jal build
	addi $8, $8, 464
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 13
	jal build
	addi $8, $8, 468
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 12
	jal build
	addi $8, $8, 460
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 14
	jal build
	addi $8, $8, 464
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 13
	jal build
	addi $8, $8, 456
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 15
	jal build
	addi $8, $8, 460
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 14
	jal build
	addi $8, $8, 452
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 16
	jal build
	addi $8, $8, 456
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 15
	jal build
	addi $8, $8, 448
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 17
	jal build
	addi $8, $8, 452
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 16
	jal build
	addi $8, $8, 444
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 18
	jal build
	addi $8, $8, 448
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 17
	jal build
	addi $8, $8, 440
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 19
	jal build
	addi $8, $8, 444
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 18
	jal build
	addi $8, $8, 436
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 20
	jal build
	addi $8, $8, 440
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 19
	jal build
	addi $8, $8, 432
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 21
	jal build
	add $6, $0, $11
	add $7, $0, $11
	add $8, $0, $11		# retorno primeira montanha
	addi $8, $8, -1680
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 5
	jal build
	addi $8, $8, 496
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 6
	jal build
	addi $8, $8, 484
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 9
	jal build
	addi $8, $8, 484
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 9
	jal build
	addi $8, $8, 472
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 12
	jal build
	addi $8, $8, 472
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 12
	jal build
	addi $8, $8, 460
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 15
	jal build
	addi $8, $8, 460
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 15
	jal build
	addi $8, $8, 448
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 18
	jal build
	addi $8, $8, 448
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 18
	jal build
	addi $8, $8, 436
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 21
	jal build
	addi $8, $8, 436
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 21
	jal build
	addi $8, $8, 424
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 24
	jal build
	addi $8, $8, 424
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 24
	jal build
	addi $8, $8, 412
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 27
	jal build
	addi $8, $8, 412
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 27
	jal build
	addi $8, $8, 400
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 29
	jal build
	addi $8, $8, 404
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 27
	jal build
	addi $8, $8, 400
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 28
	jal build
	addi $8, $8, 408
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 26
	jal build
	addi $8, $8, 404
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 27
	jal build
	addi $8, $8, 412
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 25
	jal build
	addi $8, $8, 408
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 26
	jal build
	addi $8, $8, 416
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 24
	jal build
	addi $8, $8, 412
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 25
	jal build
	addi $8, $8, 420
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 23
	jal build
	addi $8, $8, 416
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 24
	jal build
	addi $8, $8, 424
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 22
	jal build
	addi $8, $8, 420
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 23
	jal build
	addi $8, $8, 428
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 21
	jal build
	addi $8, $8, 424
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 22
	jal build
	add $6, $0, $11
	add $7, $0, $11
	add $8, $0, $11		# retorno primeira montanha
	ori $10, $0, 0x49c1fe	# cor (azul claro)
	addi $8, $8, 4764
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build

arbustos:
	add $6, $0, $11
	add $7, $0, $11
	add $8, $0, $11		# retorno primeira montanha
	ori $10, $0, 0x0c451f	# cor verde (segunda camada)
	addi $8, $8, 11776
	add $7, $0, $8
	add $6, $0, $8
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
	add $7, $0, $8
	add $6, $0, $8
	ori $10, $0, 0x166430	# cor verde (primeira camada)
	addi $9, $0, 122
	jal build
	addi $8, $8, -992
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 118
	jal build
	addi $8, $8, -976
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 32
	jal build
	addi $8, $8, 36
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 32
	jal build
	addi $8, $8, 36
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 32
	jal build
	addi $8, $8, -956
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 24
	jal build
	addi $8, $8, 64
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 12
	jal build
	addi $8, $8, 20
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 10
	jal build
	addi $8, $8, 64
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 24
	jal build
	addi $8, $8, -924
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 16
	jal build
	addi $8, $8, 88
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 8
	jal build
	addi $8, $8, 36
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 6
	jal build
	addi $8, $8, 88
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 18
	jal build
	addi $8, $8, -904
	add $7, $0, $8
	add $6, $0, $8
	add $12, $0, $8		# ponto de retorno arbusto
	addi $9, $0, 10
	jal build
	addi $8, $8, 296
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 10
	jal build
	add $8, $0, $12		# retorno arbustos
	add $7, $0, $8
	add $6, $0, $8
	ori $10, $0, 0x137c3c	# cor verde (contorno)
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 296
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	add $8, $0, $12		# retorno arbustos
	addi $8, $8, 500
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 80
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 36
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 88
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 4
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	add $8, $0, $12		# retorno arbustos
	addi $8, $8, 996
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 4
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 68
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 24
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 68
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 4
	jal build
	addi $8, $8, 20
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 100
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	add $8, $0, $12		# retorno arbustos
	addi $8, $8, 1496
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 28
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 16
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 40
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 28
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 6
	jal build
	addi $8, $8, 16
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 32
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 4
	jal build
	addi $8, $8, 32
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 20
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 16
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 4
	jal build	
	add $8, $0, $12		# retorno arbustos
	addi $8, $8, 1996
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 24
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 24
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build	
	add $8, $0, $12		# retorno arbustos
	addi $8, $8, 2132
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 10
	jal build
	addi $8, $8, 44
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 48
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	add $8, $0, $12		# retorno arbustos
	addi $8, $8, 2304
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 8
	jal build
	addi $8, $8, 44
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 28
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 28
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build	
	add $8, $0, $12		# retorno arbustos
	addi $8, $8, 2504
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8) 	#copia do cenario
	addi $8, $8, 480
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 488
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build	
	add $8, $0, $11		# retorno
	addi $8, $8, -512	# linha 5
	ori $10, $0, 0x0c451f
	addi $8, $8, 24
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 16
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 16
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, -412
	addi $8, $8, 24
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 20
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 36
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, -312
	addi $8, $8, 24
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 16
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, -212
	addi $8, $8, 24
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 16
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, -112
	addi $8, $8, 24
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	add $8, $0, $11		# retorno
	ori $10, $0, 0x166430
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 512
	add $7, $0, $8
	add $6, $0, $8
	ori $10, $0, 0x166430
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build	
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 16
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 512
	ori $10, $0, 0x062c15
	addi $8, $8, 16
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build	
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 16
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 1024
	add $7, $0, $8
	add $6, $0, $8
	ori $10, $0, 0x0c451f
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 16
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 16
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 16
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 16
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 20
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 16
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 16
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 16
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 1536
	add $7, $0, $8
	add $6, $0, $8
	ori $10, $0, 0x062c15	# cor verde (terceira camada)
	addi $9, $0, 3
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 4
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 16
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 16
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 4
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	
nuvens:
	lui $8, 0x1001		# end inicio
	ori $10, $0, 0xffffff	
	addi $8, $8, 1536	# início primeira nuvem
	add $11, $0, $8		# retorno
	addi $8, $8, 32
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 512
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 13
	jal build
	addi $8, $8, 460
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 17
	jal build
	addi $8, $8, 444
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 19
	jal build
	add $8, $0, $11		# retorno
	ori $10, $0, 0xb2e7ff	# sombra
	addi $8, $8, 40
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8) 	#copia do cenario
	add $8, $0, $11		# retorno
	addi $8, $8, 556
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 1028
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8) 	#copia do cenario
	addi $8, $8, 16
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 16
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8) 	#copia do cenario
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 1536
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 6
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 4
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 4
	jal build
	lui $8, 0x1001		# end inicio
	ori $10, $0, 0xffffff
	addi $8, $8, 2196	# início segunda nuvem
	add $7, $0, $8
	add $6, $0, $8
	add $11, $0, $8		# retorno
	addi $9, $0, 4
	jal build
	addi $8, $8, 492
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 9
	jal build
	add $8, $0, $11		# retorno
	ori $10, $0, 0xb2e7ff	# sombra
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8) 	#copia do cenario
	add $8, $0, $11		# retorno
	addi $8, $8, 516
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8) 	#copia do cenario
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8) 	#copia do cenario
	lui $8, 0x1001		# end inicio
	ori $10, $0, 0xffffff
	addi $8, $8, 2816	# início terceira nuvem
	add $7, $0, $8
	add $6, $0, $8
	add $11, $0, $8		# retorno
	addi $9, $0, 4
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 5
	jal build
	addi $8, $8, 20
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 424
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 27
	jal build
	addi $8, $8, 396
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 31
	jal build
	add $8, $0, $11		# retorno
	ori $10, $0, 0xb2e7ff	# sombra
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8) 	#copia do cenario
	addi $8, $8, 28
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 28
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8) 	#copia do cenario
	add $8, $0, $11		# retorno
	addi $8, $8, 524
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 24
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 24
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8) 	#copia do cenario
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 1020
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 4
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 4
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	lui $8, 0x1001		# end inicio
	ori $10, $0, 0xffffff
	addi $8, $8, 2472	# início quarta nuvem
	add $11, $0, $8		# retorno
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 500
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 8
	jal build
	add $8, $0, $11		# retorno
	ori $10, $0, 0xb2e7ff	# sombra
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8) 	#copia do cenario
	add $8, $0, $11		# retorno
	addi $8, $8, 508
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8) 	#copia do cenario
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8) 	#copia do cenario
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	lui $8, 0x1001		# end inicio
	ori $10, $0, 0xffffff
	addi $8, $8, 6708	# início quinta nuvem
	add $7, $0, $8
	add $6, $0, $8
	add $11, $0, $8		# retorno
	addi $9, $0, 8
	jal build
	addi $8, $8, 464
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 17
	jal build
	addi $8, $8, 436
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 17
	jal build
	add $8, $0, $11		# retorno
	ori $10, $0, 0xb2e7ff	# sombra
	addi $8, $8, 20
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8) 	#copia do cenario
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8)	#copia do cenario
	add $8, $0, $11		# retorno
	addi $8, $8, 528
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 20
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 1012
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 5
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	lui $8, 0x1001		# end inicio
	ori $10, $0, 0xffffff
	addi $8, $8, 7340	# início sexta nuvem
	add $7, $0, $8
	add $6, $0, $8
	add $11, $0, $8		# retorno
	addi $9, $0, 9
	jal build
	addi $8, $8, 468
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 14
	jal build
	add $8, $0, $11		# retorno
	ori $10, $0, 0xb2e7ff	# sombra
	addi $8, $8, 28
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 512
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	lui $8, 0x1001		# end inicio
	ori $10, $0, 0xffffff
	addi $8, $8, 7984	# início sétima nuvem
	add $7, $0, $8
	add $6, $0, $8
	add $11, $0, $8		# retorno
	addi $9, $0, 5
	jal build
	addi $8, $8, 28
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 436
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 20
	jal build
	addi $8, $8, 424
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 26
	jal build
	addi $8, $8, 396
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 31
	jal build
	add $8, $0, $11		# retorno
	ori $10, $0, 0xb2e7ff	# sombra
	addi $8, $8, 16
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 40
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8)	#copia do cenario
	add $8, $0, $11		# retorno
	addi $8, $8, 532
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 36
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 1036
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 28
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 1512
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 8
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 6
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	lui $8, 0x1001		# end inicio
	ori $10, $0, 0xffffff
	addi $8, $8, 6092	# início oitava nuvem
	add $7, $0, $8
	add $6, $0, $8
	add $11, $0, $8		# retorno
	addi $9, $0, 10
	jal build
	addi $8, $8, 464
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 15
	jal build
	addi $8, $8, 432
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 20
	jal build
	addi $8, $8, 412
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 25
	jal build
	add $8, $0, $11		# retorno
	ori $10, $0, 0xb2e7ff	# sombra
	addi $8, $8, 32
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8)	#copia do cenario
	add $8, $0, $11		# retorno
	addi $8, $8, 520
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 1016
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 5
	jal build
	add $8, $0, $11		# retorno
	addi $8, $8, 1504
	add $7, $0, $8
	add $6, $0, $8
	sw $10, 0($8)
	sw $10, 32768($6) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($8)	#copia do cenario
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 7
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
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
	
#======================================================================================================================================================================================
# FIM DO CENÁRIO
#======================================================================================================================================================================================
#
# Regs utilizados durante movimento dos NPCs --> $6, $7 e $8 endereços de memória dos npcs / $9 loops / $10 cores / $11, $12, $13 e $14 pontos de retorno / $15 timer /
#						$16, $17, $18, $19 teclado / $20, $21, $22 deteccao do teclado
#

acao:
	# dirigivel
	lui $8, 0x1001		# reg do dirigivel
	addi $8, $8, 3984	# ponto de inicio do dirigivel
	
	# avião
	lui $6, 0x1001		# reg do aviao
	addi $6, $6, 15872	# inicio do aviao
	
	# casa
	lui $7, 0x1001		# end inicio
	addi $7, $7, 28392	# começo da casa
	
	# teclado
	lui $20, 0xffff		# detecção do teclado
	addi $16, $0, 'a'
      	addi $17, $0, 'd'
      	addi $18, $0, 's'
      	addi $19, $0, 'w'
      	addi $26, $0, ' '
      	
      	lui $24, 0x1001
      	addi $24, $24, 28160	# limite de descida da casa
      	
      	lui $25, 0x1001		# vitória
	
loopmov:

	# desenha npcs
	jal casa
	jal dirigivel
	jal aviao
	
	add $8, $0, $11 	# recupera o endereço inicial do dirigivel
	add $6, $0, $12		# recupera o endereço inicial do aviao
	add $7, $0, $14		# recupera o endereço inicial da casa
	jal timer
	
	# vitoria
	slt $23, $7, $25
	bne $23, $0, vitoria
	
	# colisoes
	ori $10, $0, 0xa39f9f	# cinza do avião
	lw $23, -8708($7)	# lado esquerdo da casa	
	beq $23, $10, fim
	lw $23, -8200($7)	# lado esquerdo da casa	
	beq $23, $10, fim
	lw $23, -7692($7)	# lado esquerdo da casa	
	beq $23, $10, fim
	lw $23, -7180($7)	# lado esquerdo da casa	
	beq $23, $10, fim
	lw $23, -6668($7)	# lado esquerdo da casa	
	beq $23, $10, fim
	lw $23, -6152($7)	# lado esquerdo da casa	
	beq $23, $10, fim
	lw $23, -5636($7)	# lado esquerdo da casa	
	beq $23, $10, fim
	lw $23, -5120($7)	# lado esquerdo da casa	
	beq $23, $10, fim
	lw $23, -4604($7)	# lado esquerdo da casa	
	beq $23, $10, fim
	lw $23, -4088($7)	# lado esquerdo da casa	
	beq $23, $10, fim
	lw $23, -3580($7)	# lado esquerdo da casa	
	beq $23, $10, fim
	lw $23, -3072($7)	# lado esquerdo da casa
	beq $23, $10, fim
	lw $23, -2564($7)	# lado esquerdo da casa
	beq $23, $10, fim
	lw $23, -2056($7)	# lado esquerdo da casa
	beq $23, $10, fim
	lw $23, -1544($7)	# lado esquerdo da casa
	beq $23, $10, fim
	lw $23, -1024($7)	# lado esquerdo da casa
	beq $23, $10, fim
	lw $23, -512($7)	# lado esquerdo da casa
	beq $23, $10, fim
	lw $23, 0($7)		# lado esquerdo da casa
	beq $23, $10, fim
	
	ori $10, $0, 0x7c0000	# vermelho do avião
	lw $23, -8708($7)	# topo dos baloes	
	beq $23, $10, fim
	lw $23, -8704($7)	# topo dos baloes	
	beq $23, $10, fim
	lw $23, -8700($7)	# topo dos baloes	
	beq $23, $10, fim
	lw $23, -8696($7)	# topo dos baloes	
	beq $23, $10, fim
	lw $23, -8692($7)	# topo dos baloes	
	beq $23, $10, fim
	lw $23, -8688($7)	# topo dos baloes	
	beq $23, $10, fim
	lw $23, -8684($7)	# topo dos baloes	
	beq $23, $10, fim
	lw $23, -8680($7)	# topo dos baloes	
	beq $23, $10, fim
	lw $23, -8676($7)	# topo dos baloes	
	beq $23, $10, fim
	
	ori $10, $0, 0x7c0000	# vermelho do avião
	lw $23, 0($7)		# chao da casa	
	beq $23, $10, fim
	lw $23, 4($7)		# chao da casa	
	beq $23, $10, fim
	lw $23, 8($7)		# chao da casa	
	beq $23, $10, fim
	lw $23, 12($7)		# chao da casa	
	beq $23, $10, fim
	lw $23, 16($7)		# chao da casa	
	beq $23, $10, fim
	lw $23, 20($7)		# chao da casa	
	beq $23, $10, fim
	lw $23, 24($7)		# chao da casa	
	beq $23, $10, fim
	
	ori $10, $0, 0x845d34	# marrom do avião
	lw $23, 0($7)		# chao da casa	
	beq $23, $10, fim
	lw $23, 4($7)		# chao da casa	
	beq $23, $10, fim
	lw $23, 8($7)		# chao da casa	
	beq $23, $10, fim
	lw $23, 12($7)		# chao da casa	
	beq $23, $10, fim
	lw $23, 16($7)		# chao da casa	
	beq $23, $10, fim
	lw $23, 20($7)		# chao da casa	
	beq $23, $10, fim
	lw $23, 24($7)		# chao da casa	
	beq $23, $10, fim
	
	ori $10, $0, 0x6d6d6d	# cinza do dirigivel
	lw $23, 24($7)		# lado direito da casa
	beq $23, $10, fim
	lw $23, -488($7)	# lado direito da casa
	beq $23, $10, fim
	lw $23, -1000($7)	# lado direito da casa
	beq $23, $10, fim
	lw $23, -1504($7)	# lado direito da casa
	beq $23, $10, fim
	lw $23, -2016($7)	# lado direito da casa
	beq $23, $10, fim
	lw $23, -2532($7)	# lado direito da casa
	beq $23, $10, fim
	lw $23, -3048($7)	# lado direito da casa
	beq $23, $10, fim
	lw $23, -3564($7)	# lado direito da casa
	beq $23, $10, fim
	lw $23, -4080($7)	# lado direito da casa
	beq $23, $10, fim
	lw $23, -4588($7)	# lado direito da casa
	beq $23, $10, fim
	lw $23, -5096($7)	# lado direito da casa
	beq $23, $10, fim
	lw $23, -5604($7)	# lado direito da casa
	beq $23, $10, fim
	lw $23, -6112($7)	# lado direito da casa
	beq $23, $10, fim
	lw $23, -6620($7)	# lado direito da casa
	beq $23, $10, fim
	lw $23, -7132($7)	# lado direito da casa
	beq $23, $10, fim
	lw $23, -7644($7)	# lado direito da casa
	beq $23, $10, fim
	lw $23, -8160($7)	# lado direito da casa
	beq $23, $10, fim
	lw $23, -8676($7)	# lado direito da casa
	beq $23, $10, fim
	
	ori $10, $0, 0xd6d6d6	# cinza claro dirigivel
	lw $23, -8708($7)	# topo dos baloes	
	beq $23, $10, fim
	lw $23, -8704($7)	# topo dos baloes	
	beq $23, $10, fim
	lw $23, -8700($7)	# topo dos baloes	
	beq $23, $10, fim
	lw $23, -8696($7)	# topo dos baloes	
	beq $23, $10, fim
	lw $23, -8692($7)	# topo dos baloes	
	beq $23, $10, fim
	lw $23, -8688($7)	# topo dos baloes	
	beq $23, $10, fim
	lw $23, -8684($7)	# topo dos baloes	
	beq $23, $10, fim
	lw $23, -8680($7)	# topo dos baloes	
	beq $23, $10, fim
	lw $23, -8676($7)	# topo dos baloes	
	beq $23, $10, fim
	
	ori $10, $0, 0x6d6d6d	# cinza do dirigivel
	lw $23, -8708($7)	# topo dos baloes	
	beq $23, $10, fim
	lw $23, -8704($7)	# topo dos baloes	
	beq $23, $10, fim
	lw $23, -8700($7)	# topo dos baloes	
	beq $23, $10, fim
	lw $23, -8696($7)	# topo dos baloes	
	beq $23, $10, fim
	lw $23, -8692($7)	# topo dos baloes	
	beq $23, $10, fim
	lw $23, -8688($7)	# topo dos baloes	
	beq $23, $10, fim
	lw $23, -8684($7)	# topo dos baloes	
	beq $23, $10, fim
	lw $23, -8680($7)	# topo dos baloes	
	beq $23, $10, fim
	lw $23, -8676($7)	# topo dos baloes	
	beq $23, $10, fim
	
	ori $10, $0, 0x6d6d6d	# cinza do dirigivel
	lw $23, 0($7)		# chao da casa	
	beq $23, $10, fim
	lw $23, 4($7)		# chao da casa	
	beq $23, $10, fim
	lw $23, 8($7)		# chao da casa	
	beq $23, $10, fim
	lw $23, 12($7)		# chao da casa	
	beq $23, $10, fim
	lw $23, 16($7)		# chao da casa	
	beq $23, $10, fim
	lw $23, 20($7)		# chao da casa	
	beq $23, $10, fim
	lw $23, 24($7)		# chao da casa	
	beq $23, $10, fim
	
	# recupera cenário
	jal copiaCenDirigivel
	jal copiaCenAviao
	
	# atualiza ponto de desenho
	addi $8, $8, -4		# proximo ponto dirigivel
	addi $6, $6, 8		# proximo ponto avião
	
	# condicoes para o movimento
	lw $21, 0($20)		# caso haja alguma entrada de teclado $21 = 1, caso contrário $21 = 0
	beq $21, $0, loopmov
	lw $22, 4($20)		# $22 recebe o que foi digitado
	beq $22, $16, esq
	beq $22, $17, dir
	beq $22, $18, baixo
	beq $22, $19, cima
	
	j loopmov
	
esq:
	jal copiaCenCasaE
	addi $7, $7, -4
	j loopmov
	
dir:
	jal copiaCenCasaD
	addi $7, $7, 4
	j loopmov
	
baixo:
	slt $23, $24, $7	# se $24 for menor que $7 $23 = 1, caso contrário $23 = 0
	bne $23, $0, loopmov	# retorna para o loop sem alterar o endereço de inicio da casa
	jal copiaCenCasaB
	addi $7, $7, 512
	j loopmov
	
cima:
	jal copiaCenCasaC
	addi $7, $7, -512
	j loopmov
	
vitoria:
	lui $8, 0x1001		# end inicio
	addi $8, $8, 16004	
	ori $10, $0, 0xffffff	# cor
	
	sw $10, 0($8)
	sw $10, -512($8)
	sw $10, -1024($8)
	sw $10, -1536($8)
	sw $10, -2048($8)
	sw $10, -2560($8)
	sw $10, -3072($8)
	sw $10, -3584($8)
	sw $10, -4092($8)
	sw $10, -4100($8)
	sw $10, -4600($8)
	sw $10, -4616($8)
	sw $10, -5108($8)
	sw $10, -5132($8)
	sw $10, -5616($8)
	sw $10, -5648($8)
	sw $10, -6124($8)
	sw $10, -6164($8)
	
	addi $8, $8, 24
	sw $10, 0($8)
	sw $10, 4($8)
	sw $10, 8($8)
	sw $10, 12($8)
	sw $10, 16($8)
	sw $10, 20($8)
	sw $10, 24($8)
	sw $10, -488($8)
	sw $10, -512($8)
	sw $10, -1000($8)
	sw $10, -1024($8)
	sw $10, -1512($8)
	sw $10, -1536($8)
	sw $10, -2024($8)
	sw $10, -2048($8)
	sw $10, -2536($8)
	sw $10, -2560($8)
	sw $10, -3072($8)
	sw $10, -3068($8)
	sw $10, -3064($8)
	sw $10, -3060($8)
	sw $10, -3056($8)
	sw $10, -3052($8)
	sw $10, -3048($8)
	
	addi $8, $8, 40
	sw $10, 0($8)
	sw $10, 4($8)
	sw $10, 8($8)
	sw $10, 12($8)
	sw $10, 16($8)
	sw $10, 20($8)
	sw $10, 24($8)
	sw $10, -488($8)
	sw $10, -512($8)
	sw $10, -1000($8)
	sw $10, -1024($8)
	sw $10, -1512($8)
	sw $10, -1536($8)
	sw $10, -2024($8)
	sw $10, -2048($8)
	sw $10, -2536($8)
	sw $10, -2560($8)
	sw $10, -3072($8)
	sw $10, -3048($8)
	
	addi $8, $8, 72
	sw $10, 0($8)
	sw $10, -508($8)
	sw $10, -516($8)
	sw $10, -1020($8)
	sw $10, -1028($8)
	sw $10, -1528($8)
	sw $10, -1544($8)
	sw $10, -2040($8)
	sw $10, -2056($8)
	sw $10, -2548($8)
	sw $10, -2572($8)
	sw $10, -3060($8)
	sw $10, -3084($8)
	sw $10, -3568($8)
	sw $10, -3600($8)
	sw $10, -4080($8)
	sw $10, -4112($8)
	sw $10, -4628($8)
	sw $10, -5140($8)
	
	addi $8, $8, 32
	sw $10, 0($8)
	sw $10, -508($8)
	sw $10, -516($8)
	sw $10, -1020($8)
	sw $10, -1028($8)
	sw $10, -1528($8)
	sw $10, -1544($8)
	sw $10, -2040($8)
	sw $10, -2056($8)
	sw $10, -2548($8)
	sw $10, -2572($8)
	sw $10, -3060($8)
	sw $10, -3084($8)
	sw $10, -3568($8)
	sw $10, -4080($8)
	sw $10, -4588($8)
	sw $10, -5100($8)
	
	addi $8, $8, 36
	sw $10, 0($8)
	sw $10, -512($8)
	sw $10, -1024($8)
	sw $10, -1536($8)
	sw $10, -2048($8)
	sw $10, -2560($8)
	sw $10, -3072($8)
	sw $10, -4096($8)
	
	addi $8, $8, 16
	sw $10, 0($8)
	sw $10, -512($8)
	sw $10, -1024($8)
	sw $10, -1536($8)
	sw $10, -2048($8)
	sw $10, -2560($8)
	sw $10, -3072($8)
	sw $10, -3584($8)
	sw $10, -3580($8)
	sw $10, -3064($8)
	sw $10, -2548($8)
	sw $10, -2032($8)
	sw $10, -1516($8)
	sw $10, -1000($8)
	sw $10, -484($8)
	
	addi $8, $8, 32
	sw $10, 0($8)
	sw $10, -512($8)
	sw $10, -1024($8)
	sw $10, -1536($8)
	sw $10, -2048($8)
	sw $10, -2560($8)
	sw $10, -3072($8)
	sw $10, -3584($8)
	
	addi $2, $0, 10
	syscall

fim:
	lw $22, 4($20)		# $22 recebe o que foi digitado
	beq $22, $26, main	# caso digite espaço volta para o inicio
	jal timer
	j fim
    
#============================================================================================================================
# Função Criar
# Regs usados 		$8 e $9
# Regs sujos		-

build:
	beq $9, $0, fimBuild
	sw $10, 0($8)
	sw $10, 32768($8) 	#copia do cenario
	sw $10, 32768($7) 	#copia do cenario
	sw $10, 32768($6) 	#copia do cenario	
	addi $8, $8, 4
	addi $6, $6, 4		
	addi $7, $7, 4		
	addi $9, $9, -1
	j build
	
fimBuild:
	jr $31
	
#============================================================================================================================
# Função Criar NPCs
# Regs usados 		$8 e $9
# Regs sujos		-

npc:
	beq $9, $0, fimNpc
	sw $10, 0($8)		
	addi $8, $8, 4
	addi $9, $9, -1
	j npc
	
fimNpc:
	jr $31
	
#============================================================================================================================
# Função Criar Casa
# Regs usados 		$7 e $9
# Regs sujos		-

cCasa:
	beq $9, $0, fimCasa
	sw $10, 0($7)		
	addi $7, $7, 4
	addi $9, $9, -1
	j cCasa
	
fimCasa:
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
	
#============================================================================================================================
# Função Apagar rastro do Dirigivel
# Regs usados 		$10
# Regs sujos		-

copiaCenDirigivel:

	lw $10, 32804($8)
	sw $10, 36($8)
	
	lw $10, 32836($8)
	sw $10, 68($8)
	
	lw $10, 33328($8)
	sw $10, 560($8)
	
	lw $10, 33348($8)
	sw $10, 580($8)
	
	lw $10, 33860($8)
	sw $10, 1092($8)
	
	lw $10, 33868($8)
	sw $10, 1100($8)
	
	lw $10, 34372($8)
	sw $10, 1604($8)
	
	lw $10, 34380($8)
	sw $10, 1612($8)
	
	lw $10, 34892($8)
	sw $10, 2124($8)
	
	lw $10, 35404($8)
	sw $10, 2636($8)
	
	lw $10, 35916($8)
	sw $10, 3148($8)
	
	lw $10, 36428($8)
	sw $10, 3660($8)
	
	lw $10, 36932($8)
	sw $10, 4164($8)
	
	lw $10, 36940($8)
	sw $10, 4172($8)
	
	lw $10, 37444($8)
	sw $10, 4676($8)
	
	lw $10, 37452($8)
	sw $10, 4684($8)
	
	lw $10, 37936($8)
	sw $10, 5168($8)
	
	lw $10, 37956($8)
	sw $10, 5188($8)
	
	lw $10, 38436($8)
	sw $10, 5668($8)
	
	lw $10, 38468($8)
	sw $10, 5700($8)
	
	lw $10, 38944($8)
	sw $10, 6176($8)
	
	lw $10, 39452($8)
	sw $10, 6684($8)
	
	jr $31
	
#============================================================================================================================
# Função Apagar rastro do Avião
# Regs usados 		$10
# Regs sujos		-

copiaCenAviao:
	
	lw $10, 32768($6)
	sw $10, 0($6)
	
	lw $10, 32780($6)
	sw $10, 12($6)
	
	lw $10, 32784($6)
	sw $10, 16($6)
	
	lw $10, 33280($6)
	sw $10, 512($6)
	
	lw $10, 33284($6)
	sw $10, 516($6)
	
	lw $10, 33792($6)
	sw $10, 1024($6)
	
	lw $10, 33796($6)
	sw $10, 1028($6)
	
	jr $31
	
#============================================================================================================================
# Função Apagar rastro da Casa ao mover para a esquerda
# Regs usados 		$10
# Regs sujos		-

copiaCenCasaE:
	
	lw $10, 32792($7)
	sw $10, 24($7)
	
	lw $10, 32280($7)
	sw $10, -488($7)
	
	lw $10, 31768($7)
	sw $10, -1000($7)
	
	lw $10, 31264($7)
	sw $10, -1504($7)
	
	lw $10, 30752($7)
	sw $10, -2016($7)
	
	lw $10, 30236($7)
	sw $10, -2532($7)
	
	lw $10, 29720($7)
	sw $10, -3048($7)
	
	lw $10, 29204($7)
	sw $10, -3564($7)
	
	lw $10, 28688($7)
	sw $10, -4080($7)
	
	lw $10, 28180($7)
	sw $10, -4588($7)
	
	lw $10, 27672($7)
	sw $10, -5096($7)
	
	lw $10, 27164($7)
	sw $10, -5604($7)
	
	lw $10, 26656($7)
	sw $10, -6112($7)
	
	lw $10, 26148($7)
	sw $10, -6620($7)
	
	lw $10, 25636($7)
	sw $10, -7132($7)
	
	lw $10, 25124($7)
	sw $10, -7644($7)
	
	lw $10, 24608($7)
	sw $10, -8160($7)
	
	lw $10, 24092($7)
	sw $10, -8676($7)
	
	jr $31
	
#============================================================================================================================
# Função Apagar rastro da Casa ao mover para a direita
# Regs usados 		$10
# Regs sujos		-

copiaCenCasaD:
	
	lw $10, 32768($7)
	sw $10, 0($7)
	
	lw $10, 32256($7)
	sw $10, -512($7)
	
	lw $10, 31744($7)
	sw $10, -1024($7)
	
	lw $10, 31224($7)
	sw $10, -1544($7)
	
	lw $10, 30712($7)
	sw $10, -2056($7)
	
	lw $10, 30204($7)
	sw $10, -2564($7)
	
	lw $10, 29696($7)
	sw $10, -3072($7)
	
	lw $10, 29188($7)
	sw $10, -3580($7)
	
	lw $10, 28680($7)
	sw $10, -4088($7)
	
	lw $10, 28164($7)
	sw $10, -4604($7)
	
	lw $10, 27648($7)
	sw $10, -5120($7)
	
	lw $10, 27132($7)
	sw $10, -5636($7)
	
	lw $10, 26616($7)
	sw $10, -6152($7)
	
	lw $10, 26100($7)
	sw $10, -6668($7)
	
	lw $10, 25588($7)
	sw $10, -7180($7)
	
	lw $10, 25076($7)
	sw $10, -7692($7)
	
	lw $10, 24568($7)
	sw $10, -8200($7)
	
	lw $10, 24060($7)
	sw $10, -8708($7)
	
	jr $31
	
#============================================================================================================================
# Função Apagar rastro da Casa ao mover para baixo
# Regs usados 		$10
# Regs sujos		-

copiaCenCasaB:

	lw $10, 30752($7)
	sw $10, -2016($7)

	lw $10, 30712($7)
	sw $10, -2056($7)

	lw $10, 30236($7)
	sw $10, -2532($7)
	
	lw $10, 30204($7)
	sw $10, -2564($7)
	
	lw $10, 29720($7)
	sw $10, -3048($7)
	
	lw $10, 29696($7)
	sw $10, -3072($7)
	
	lw $10, 29204($7)
	sw $10, -3564($7)
	
	lw $10, 29188($7)
	sw $10, -3580($7)
	
	lw $10, 25124($7)
	sw $10, -7644($7)
	
	lw $10, 25076($7)
	sw $10, -7692($7)
	
	lw $10, 24608($7)
	sw $10, -8160($7)
	
	lw $10, 24568($7)
	sw $10, -8200($7)
	
	lw $10, 24092($7)
	sw $10, -8676($7)
	
	lw $10, 24088($7)
	sw $10, -8680($7)
	
	lw $10, 24084($7)
	sw $10, -8684($7)
	
	lw $10, 24080($7)
	sw $10, -8688($7)
	
	lw $10, 24076($7)
	sw $10, -8692($7)
	
	lw $10, 24072($7)
	sw $10, -8696($7)
	
	lw $10, 24068($7)
	sw $10, -8700($7)
	
	lw $10, 24064($7)
	sw $10, -8704($7)
	
	lw $10, 24060($7)
	sw $10, -8708($7)

	jr $31
	
#============================================================================================================================
# Função Apagar rastro da Casa ao mover para cima
# Regs usados 		$10
# Regs sujos		-

copiaCenCasaC:
	
	lw $10, 32768($7)
	sw $10, 0($7)
	
	lw $10, 32772($7)
	sw $10, 4($7)
	
	lw $10, 32776($7)
	sw $10, 8($7)
	
	lw $10, 32780($7)
	sw $10, 12($7)
	
	lw $10, 32784($7)
	sw $10, 16($7)
	
	lw $10, 32788($7)
	sw $10, 20($7)
	
	lw $10, 32792($7)
	sw $10, 24($7)
	
	lw $10, 31264($7)
	sw $10, -1504($7)
	
	lw $10, 31260($7)
	sw $10, -1508($7)
	
	lw $10, 31228($7)
	sw $10, -1540($7)
	
	lw $10, 31224($7)
	sw $10, -1544($7)
	
	lw $10, 28180($7)
	sw $10, -4588($7)
	
	lw $10, 28164($7)
	sw $10, -4604($7)
	
	lw $10, 27672($7)
	sw $10, -5096($7)
	
	lw $10, 27648($7)
	sw $10, -5120($7)
	
	lw $10, 27164($7)
	sw $10, -5604($7)
	
	lw $10, 27132($7)
	sw $10, -5636($7)
	
	lw $10, 26656($7)
	sw $10, -6112($7)
	
	lw $10, 26616($7)
	sw $10, -6152($7)
	
	lw $10, 26148($7)
	sw $10, -6620($7)
	
	lw $10, 26100($7)
	sw $10, -6668($7)
	
	jr $31
	
#============================================================================================================================
# Função Coqueiro 1
# Regs usados 		$8, $9, $10, $11, $12 e $13
# Regs sujos		$11, $12 e $13

coqueiro1:
	add $13, $0, $31		# ponto de retorno da funcao
	ori $10, $0, 0x592b1a		# cor do tronco
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, -524
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, -524
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, -520
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, -520
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, -520
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, -520
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, -520
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, -520
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, -520
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, -516
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, -520
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, -516
	add $7, $0, $8
	add $6, $0, $8
	add $11, $0, $8			# retorno
	addi $9, $0, 1
	jal build
	ori $10, $0, 0x0c3d05		# cor das folhas
	addi $8, $8, -532
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 11
	jal build
	addi $8, $8, -552
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 9
	jal build
	addi $8, $8, -556
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 7
	jal build
	addi $8, $8, -552
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 9
	jal build
	addi $8, $8, -544
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 11
	jal build
	addi $8, $8, -552
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 4
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 3
	jal build
	addi $8, $8, -540
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, -528
	add $7, $0, $8
	add $6, $0, $8
	add $12, $0, $8			# retorno p/ sombras
	addi $9, $0, 3
	jal build
	add $8, $0, $11			# retorno
	addi $8, $8, -16
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 16
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 5
	jal build
	addi $8, $8, 468
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 24
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 496
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	add $8, $0, $12			# sombras
	ori $10, $0, 0x16550d		# folhas
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 512
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 504
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 20
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 476
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 2
	jal build
	addi $8, $8, 20
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 476
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 12
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 496
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 480
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 508
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 468
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 20
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 8
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 500
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	add $8, $0, $11			# retorno
	ori $10, $0, 0x3c2414		# tronco
	addi $8, $8, 512
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 1016
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 508
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 504
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 1532
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 1020
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 504
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	addi $8, $8, 4
	add $7, $0, $8
	add $6, $0, $8
	addi $9, $0, 1
	jal build
	add $31, $0, $13		# recupera o ponto de retorno
	jr $31
	
#============================================================================================================================
# Função Dirigivel
# Regs usados 		$8, $9, $10, $11 e $13
# Regs sujos		$8, $11, $13

dirigivel:
	add $13, $0, $31	# ponto de retorno da funcao
	add $11, $0, $8		# salva o end inicial do dirigivel
	addi $9, $0, 10
	ori $10, $0, 0x6d6d6d	# cor cinza (primeira camada)
	jal npc
	sw $10, 24($8)
	sw $10, 28($8)
	addi $8, $8, 460
	addi $9, $0, 16
	jal npc
	sw $10, 8($8)
	sw $10, 12($8)
	sw $10, 16($8)
	addi $8, $8, 440
	addi $9, $0, 23
	jal npc
	sw $10, 4($8)
	addi $8, $8, 416
	addi $9, $0, 24
	jal npc
	sw $10, 4($8)
	addi $8, $8, 412
	addi $9, $0, 27
	jal npc
	addi $8, $8, 400
	addi $9, $0, 28
	jal npc
	addi $8, $8, 400
	addi $9, $0, 28
	jal npc
	addi $8, $8, 404
	addi $9, $0, 27
	jal npc
	addi $8, $8, 408
	addi $9, $0, 24
	jal npc
	sw $10, 4($8)
	addi $8, $8, 420
	addi $9, $0, 23
	jal npc
	sw $10, 4($8)
	addi $8, $8, 428
	addi $9, $0, 16
	jal npc
	sw $10, 8($8)
	sw $10, 12($8)
	sw $10, 16($8)
	addi $8, $8, 460
	addi $9, $0, 10
	jal npc
	sw $10, 24($8)
	sw $10, 28($8)
	ori $10, $0, 0xd6d6d6	# cor cinza claro
	addi $8, $8, 476
	addi $9, $0, 8
	jal npc
	addi $8, $8, 484
	addi $9, $0, 6
	jal npc
	add $8, $0, $11		# retorno
	ori $10, $0, 0x909090	# cor cinza (segunda camada)
	addi $8, $8, 512
	addi $9, $0, 10
	jal npc
	sw $10, 24($8)
	addi $8, $8, 460
	addi $9, $0, 15
	jal npc
	sw $10, 12($8)
	sw $10, 16($8)
	addi $8, $8, 444
	addi $9, $0, 18
	jal npc
	sw $10, 12($8)
	addi $8, $8, 436
	addi $9, $0, 20
	jal npc
	addi $8, $8, 432
	addi $9, $0, 20
	jal npc
	addi $8, $8, 432
	addi $9, $0, 20
	jal npc
	addi $8, $8, 432
	addi $9, $0, 20
	jal npc
	addi $8, $8, 436
	addi $9, $0, 18
	jal npc
	sw $10, 12($8)
	addi $8, $8, 448
	addi $9, $0, 15
	jal npc
	sw $10, 12($8)
	sw $10, 16($8)
	addi $8, $8, 464
	addi $9, $0, 10
	jal npc
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
	jal npc
	addi $8, $8, 468
	addi $9, $0, 13
	jal npc
	addi $8, $8, 452
	addi $9, $0, 17
	jal npc
	addi $8, $8, 440
	addi $9, $0, 19
	jal npc
	addi $8, $8, 436
	addi $9, $0, 19
	jal npc
	addi $8, $8, 440
	addi $9, $0, 17
	jal npc
	addi $8, $8, 448
	addi $9, $0, 14
	jal npc
	addi $8, $8, 464
	addi $9, $0, 10
	jal npc
	add $31, $0, $13		# recupera o ponto de retorno
	jr $31

#============================================================================================================================
# Função Avião
# Regs usados 		$6, $10, $12
# Regs sujos		-

aviao:
	add $12, $0, $6		# salva o end inicial do aviao
	ori $10, $0, 0x7c0000	# cor vermelho escuro
	sw $10, 0($6)
	ori $10, $0, 0x845d34	# cor marrom (piloto)
	sw $10, 12($6)
	sw $10, 16($6)
	ori $10, $0, 0x7c0000	# cor vermelho escuro
	addi $6, $6, 512
	sw $10, 0($6)
	sw $10, 4($6)
	sw $10, 8($6)
	sw $10, 12($6)
	sw $10, 16($6)
	sw $10, 20($6)
	ori $10, $0, 0xa39f9f	# cor cinza
	sw $10, 24($6)
	ori $10, $0, 0x7c0000	# cor vermelho escuro
	addi $6, $6, 512
	sw $10, 0($6)
	sw $10, 4($6)
	ori $10, $0, 0xc60000	# cor vermelho claro
	sw $10, 8($6)
	sw $10, 12($6)
	ori $10, $0, 0x7c0000	# cor vermelho escuro
	sw $10, 16($6)
	sw $10, 20($6)
	ori $10, $0, 0xa39f9f	# cor cinza
	sw $10, 24($6)
	jr $31
	
#============================================================================================================================
# Função Casa
# Regs usados 		$7, $10, $14
# Regs sujos		-

casa:
	add $13, $0, $31	# ponto de retorno da funcao
	add $14, $0, $7		# salva o end de inicio da casa
	ori $10, $0, 0x2a2a2a	# contorno
	addi $9, $0, 7
	jal cCasa
	addi $7, $7, -540
	addi $9, $0, 7
	jal cCasa
	addi $7, $7, -540
	addi $9, $0, 7
	jal cCasa
	addi $7, $7, -548
	addi $9, $0, 11
	jal cCasa
	addi $7, $7, -556
	addi $9, $0, 11
	jal cCasa
	addi $7, $7, -552
	addi $9, $0, 9
	jal cCasa
	addi $7, $7, -544
	addi $9, $0, 7
	jal cCasa
	addi $7, $7, -536
	addi $9, $0, 5
	jal cCasa
	addi $7, $7, -528
	addi $9, $0, 3
	jal cCasa
	add $7, $0, $14		# retorno
	ori $10, $0, 0xe49d05	# parte interna da casa
	addi $7, $7, -508
	addi $9, $0, 5
	jal cCasa
	addi $7, $7, -532
	addi $9, $0, 5
	jal cCasa
	addi $7, $7, -532
	addi $9, $0, 5
	jal cCasa
	addi $7, $7, -528
	addi $9, $0, 3
	jal cCasa
	addi $7, $7, -520
	addi $9, $0, 1
	jal cCasa
	add $7, $0, $14		# retorno
	ori $10, $0, 0xb04110	# telhado primeira parte
	addi $7, $7, -2048
	addi $9, $0, 1
	jal cCasa
	addi $7, $7, 20
	addi $9, $0, 1
	jal cCasa
	addi $7, $7, -536
	addi $9, $0, 1
	jal cCasa
	addi $7, $7, 12
	addi $9, $0, 1
	jal cCasa
	addi $7, $7, -528
	addi $9, $0, 1
	jal cCasa
	addi $7, $7, 4
	addi $9, $0, 1
	jal cCasa
	add $7, $0, $14		# retorno
	ori $10, $0, 0xb8573a	# telhado segunda parte
	addi $7, $7, -2052
	addi $9, $0, 1
	jal cCasa
	addi $7, $7, 28
	addi $9, $0, 1
	jal cCasa
	addi $7, $7, -544
	addi $9, $0, 1
	jal cCasa
	addi $7, $7, 20
	addi $9, $0, 1
	jal cCasa
	addi $7, $7, -536
	addi $9, $0, 1
	jal cCasa
	addi $7, $7, 12
	addi $9, $0, 1
	jal cCasa
	addi $7, $7, -528
	addi $9, $0, 3
	jal cCasa
	add $7, $0, $14		# retorno
	ori $10, $0, 0x9e0909	# porta
	addi $7, $7, -500
	addi $9, $0, 1
	jal cCasa
	addi $7, $7, -516
	addi $9, $0, 1
	jal cCasa
	ori $10, $0, 0x4a6575	# janela
	addi $7, $7, -1028
	addi $9, $0, 1
	jal cCasa
	
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
	jr $31
	
#============================================================================================================================
# Função Timer
# Regs usados 		$16 e $29
# Regs sujos		-

timer: sw $15, 0($29)
       addi $29, $29, -4
       addi $15, $0, 30000	# velocidade do movimento
forT:  beq $15, $0, fimT
       nop
       nop
       addi $15, $15, -1      
       j forT                  
fimT:  addi $29, $29, 4                                                    
       lw $15, 0($29)          
       jr $31
