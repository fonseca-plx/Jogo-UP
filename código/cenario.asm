.text

main:
	lui $8, 0x1001		# end inicio
	addi $9, $0, 7168	# céu 
	ori $10, $0, 0x49c1fe	# cor (azul claro)
	
ceu:
	beq $9, $0, solo	# condição de parada do loop
	sw $10, 0($8)		# carrega p/ o end de memoria que está em $8 o valor contido em $10 (cor azul claro)
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
	addi $8, $8, 4608
	sw $10, 156($8)
	sw $10, 292($8)

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
	add $8, $0, $12
	ori $10, $0, 0x137c3c	# cor verde (contorno)
	sw $10, 0($8)
	sw $10, 4($8)
	sw $10, 16($8)
	sw $10, 20($8)
	sw $10, 32($8)
	sw $10, 36($8)
	sw $10, 336($8)
	sw $10, 340($8)
	sw $10, 348($8)
	sw $10, 356($8)
	sw $10, 360($8)
	sw $10, 368($8)
	addi $8, $8, 500
	sw $10, 0($8)
	sw $10, 4($8)
	sw $10, 8($8)
	sw $10, 20($8)
	sw $10, 24($8)
	sw $10, 36($8)
	sw $10, 40($8)
	sw $10, 52($8)
	sw $10, 56($8)
	sw $10, 64($8)
	sw $10, 68($8)
	sw $10, 152($8)
	sw $10, 156($8)
	sw $10, 160($8)
	sw $10, 172($8)
	sw $10, 176($8)
	sw $10, 180($8)
	sw $10, 220($8)
	sw $10, 224($8)
	sw $10, 236($8)
	sw $10, 240($8)
	sw $10, 332($8)
	sw $10, 336($8)
	sw $10, 340($8)
	sw $10, 344($8)
	sw $10, 356($8)
	sw $10, 364($8)
	sw $10, 376($8)
	sw $10, 384($8)
	sw $10, 392($8)
	sw $10, 396($8)
	addi $8, $8, 496
	sw $10, 0($8)
	sw $10, 4($8)
	sw $10, 8($8)
	sw $10, 12($8)
	sw $10, 20($8)
	sw $10, 32($8)
	sw $10, 48($8)
	sw $10, 60($8)
	sw $10, 76($8)
	sw $10, 88($8)
	sw $10, 160($8)
	sw $10, 164($8)
	sw $10, 180($8)
	sw $10, 184($8)
	sw $10, 200($8)
	sw $10, 204($8)
	sw $10, 232($8)
	sw $10, 244($8)
	sw $10, 260($8)
	sw $10, 332($8)
	sw $10, 336($8)
	sw $10, 340($8)
	sw $10, 344($8)
	sw $10, 368($8)
	sw $10, 384($8)
	sw $10, 396($8)
	sw $10, 404($8)
	sw $10, 416($8)
	sw $10, 420($8)
	sw $10, 528($8)
	addi $8, $8, 500
	sw $10, 0($8)
	sw $10, 4($8)
	sw $10, 8($8)
	sw $10, 40($8)
	sw $10, 56($8)
	sw $10, 76($8)
	sw $10, 92($8)
	sw $10, 104($8)
	sw $10, 112($8)
	sw $10, 116($8)
	sw $10, 120($8)
	sw $10, 164($8)
	sw $10, 168($8)
	sw $10, 200($8)
	sw $10, 204($8)
	sw $10, 220($8)
	sw $10, 224($8)
	sw $10, 228($8)
	sw $10, 232($8)
	sw $10, 236($8)
	sw $10, 240($8)
	sw $10, 260($8)
	sw $10, 276($8)
	sw $10, 284($8)
	sw $10, 288($8)
	sw $10, 292($8)
	sw $10, 332($8)
	sw $10, 336($8)
	sw $10, 340($8)
	sw $10, 376($8)
	sw $10, 400($8)
	sw $10, 412($8)
	sw $10, 420($8)
	sw $10, 436($8)
	sw $10, 440($8)
	sw $10, 444($8)
	addi $8, $8, 500
	sw $10, 0($8)
	sw $10, 4($8)
	sw $10, 8($8)
	sw $10, 36($8)
	sw $10, 48($8)
	sw $10, 64($8)
	sw $10, 92($8)
	sw $10, 108($8)
	sw $10, 120($8)
	addi $8, $8, 136
	addi $9, $0, 10
	jal build
	sw $10, 44($8)
	sw $10, 48($8)
	sw $10, 100($8)
	sw $10, 116($8)
	addi $8, $8, 132
	addi $9, $0, 9
	jal build
	sw $10, 40($8)
	sw $10, 72($8)
	sw $10, 84($8)
	sw $10, 92($8)
	sw $10, 116($8)
	sw $10, 120($8)
	sw $10, 124($8)
	sw $10, 128($8)
	addi $8, $8, 164
	sw $10, 0($8)
	addi $8, $8, 480
	sw $10, 0($8)
	sw $10, 4($8)
	addi $8, $8, 20
	sw $10, 0($8)
	sw $10, 4($8)
	sw $10, 8($8)
	addi $8, $8, 500
	sw $10, 0($8)
	sw $10, 4($8)
	sw $10, 8($8)
	add $8, $0, $11		# retorno
	addi $8, $8, -512	# linha 5
	ori $10, $0, 0x0c451f
	sw $10, 24($8)
	sw $10, 36($8)
	sw $10, 40($8)
	sw $10, 60($8)
	sw $10, 80($8)
	sw $10, 84($8)
	sw $10, 100($8)
	addi $8, $8, 100
	sw $10, 24($8)
	sw $10, 36($8)
	sw $10, 60($8)
	sw $10, 80($8)
	sw $10, 84($8)
	sw $10, 100($8)
	addi $8, $8, 100
	sw $10, 24($8)
	sw $10, 40($8)
	sw $10, 44($8)
	sw $10, 60($8)
	sw $10, 80($8)
	sw $10, 84($8)
	sw $10, 100($8)
	addi $8, $8, 100
	sw $10, 24($8)
	sw $10, 36($8)
	sw $10, 44($8)
	sw $10, 60($8)
	sw $10, 80($8)
	sw $10, 84($8)
	sw $10, 100($8)
	addi $8, $8, 100
	sw $10, 24($8)
	sw $10, 40($8)
	sw $10, 44($8)
	sw $10, 60($8)
	sw $10, 76($8)
	add $8, $0, $11		# retorno
	ori $10, $0, 0x166430
	sw $10, 12($8)
	sw $10, 16($8)
	sw $10, 24($8)
	sw $10, 32($8)
	sw $10, 36($8)
	sw $10, 48($8)
	sw $10, 60($8)
	sw $10, 64($8)
	sw $10, 76($8)
	sw $10, 80($8)
	sw $10, 92($8)
	sw $10, 96($8)
	sw $10, 108($8)
	sw $10, 116($8)
	sw $10, 124($8)
	sw $10, 128($8)
	sw $10, 140($8)
	sw $10, 144($8)
	sw $10, 156($8)
	sw $10, 164($8)
	sw $10, 176($8)
	sw $10, 180($8)
	sw $10, 192($8)
	sw $10, 200($8)
	sw $10, 208($8)
	sw $10, 212($8)
	sw $10, 224($8)
	sw $10, 236($8)
	sw $10, 240($8)
	sw $10, 252($8)
	sw $10, 260($8)
	sw $10, 264($8)
	sw $10, 276($8)
	sw $10, 280($8)
	sw $10, 292($8)
	sw $10, 300($8)
	sw $10, 308($8)
	sw $10, 316($8)
	sw $10, 324($8)
	sw $10, 332($8)
	sw $10, 340($8)
	sw $10, 344($8)
	sw $10, 352($8)
	sw $10, 360($8)
	sw $10, 364($8)
	sw $10, 372($8)
	sw $10, 384($8)
	sw $10, 388($8)
	sw $10, 396($8)
	sw $10, 400($8)
	sw $10, 408($8)
	sw $10, 416($8)
	sw $10, 424($8)
	sw $10, 432($8)
	sw $10, 440($8)
	sw $10, 452($8)
	sw $10, 460($8)
	sw $10, 468($8)
	sw $10, 476($8)
	sw $10, 484($8)
	sw $10, 492($8)
	sw $10, 496($8)
	add $8, $8, 512
	ori $10, $0, 0x166430
	sw $10, 0($8)
	sw $10, 4($8)
	ori $10, $0, 0x062c15
	sw $10, 16($8)
	sw $10, 24($8)
	addi $8, $8, 20
	sw $10, 16($8)
	sw $10, 24($8)
	addi $8, $8, 24
	sw $10, 16($8)
	sw $10, 24($8)
	addi $8, $8, 24
	sw $10, 16($8)
	sw $10, 24($8)
	addi $8, $8, 24
	sw $10, 16($8)
	sw $10, 24($8)
	addi $8, $8, 20
	sw $10, 16($8)
	sw $10, 24($8)
	addi $8, $8, 24
	sw $10, 16($8)
	sw $10, 28($8)
	addi $8, $8, 28
	sw $10, 16($8)
	sw $10, 28($8)
	addi $8, $8, 24
	sw $10, 16($8)
	sw $10, 24($8)
	addi $8, $8, 24
	sw $10, 16($8)
	sw $10, 28($8)
	addi $8, $8, 28
	sw $10, 16($8)
	sw $10, 24($8)
	addi $8, $8, 24
	sw $10, 16($8)
	sw $10, 28($8)
	addi $8, $8, 28
	sw $10, 16($8)
	sw $10, 24($8)
	addi $8, $8, 24
	sw $10, 16($8)
	sw $10, 28($8)
	addi $8, $8, 28
	sw $10, 16($8)
	sw $10, 28($8)
	addi $8, $8, 24
	sw $10, 16($8)
	sw $10, 28($8)
	addi $8, $8, 28
	sw $10, 16($8)
	sw $10, 24($8)
	addi $8, $8, 24
	sw $10, 16($8)
	sw $10, 28($8)
	addi $8, $8, 28
	sw $10, 16($8)
	sw $10, 28($8)
	addi $8, $8, 24
	sw $10, 16($8)
	sw $10, 28($8)
	add $8, $0, $11		# retorno
	addi $8, $8, 1024
	ori $10, $0, 0x0c451f
	sw $10, 0($8)
	sw $10, 8($8)
	sw $10, 16($8)
	sw $10, 24($8)
	sw $10, 36($8)
	addi $8, $8, 36
	sw $10, 8($8)
	sw $10, 12($8)
	sw $10, 24($8)
	addi $8, $8, 32
	sw $10, 8($8)
	sw $10, 12($8)
	sw $10, 24($8)
	addi $8, $8, 32
	sw $10, 8($8)
	sw $10, 12($8)
	sw $10, 24($8)
	addi $8, $8, 28
	sw $10, 8($8)
	sw $10, 12($8)
	sw $10, 24($8)
	addi $8, $8, 28
	sw $10, 8($8)
	sw $10, 12($8)
	sw $10, 24($8)
	addi $8, $8, 24
	sw $10, 8($8)
	sw $10, 12($8)
	sw $10, 24($8)
	addi $8, $8, 32
	sw $10, 8($8)
	sw $10, 12($8)
	sw $10, 24($8)
	addi $8, $8, 24
	sw $10, 8($8)
	sw $10, 12($8)
	sw $10, 24($8)
	addi $8, $8, 28
	sw $10, 8($8)
	sw $10, 12($8)
	sw $10, 24($8)
	addi $8, $8, 28
	sw $10, 8($8)
	sw $10, 12($8)
	sw $10, 24($8)
	addi $8, $8, 28
	sw $10, 8($8)
	sw $10, 12($8)
	sw $10, 24($8)
	addi $8, $8, 28
	sw $10, 8($8)
	sw $10, 12($8)
	sw $10, 24($8)
	addi $8, $8, 24
	sw $10, 8($8)
	sw $10, 12($8)
	sw $10, 24($8)
	addi $8, $8, 28
	sw $10, 8($8)
	sw $10, 12($8)
	sw $10, 24($8)
	addi $8, $8, 28
	sw $10, 8($8)
	sw $10, 12($8)
	sw $10, 24($8)
	addi $8, $8, 28
	sw $10, 8($8)
	sw $10, 12($8)
	sw $10, 24($8)
	addi $8, $8, 28
	sw $10, 8($8)
	sw $10, 12($8)
	sw $10, 24($8)
	add $8, $0, $11		# retorno
	addi $8, $8, 1536
	ori $10, $0, 0xffffff
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
	sw $10, 32($8)
	sw $10, 36($8)
	sw $10, 40($8)
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
	sw $10, 40($8)
	addi $8, $8, 512
	sw $10, 44($8)
	sw $10, 48($8)
	addi $8, $8, 512
	sw $10, 4($8)
	sw $10, 20($8)
	sw $10, 24($8)
	sw $10, 44($8)
	sw $10, 56($8)
	sw $10, 60($8)
	sw $10, 64($8)
	addi $8, $8, 512
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
	sw $10, 12($8)
	addi $8, $8, 512
	sw $10, 4($8)
	sw $10, 8($8)
	sw $10, 20($8)
	sw $10, 28($8)
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
	sw $10, 12($8)
	sw $10, 40($8)
	sw $10, 44($8)
	sw $10, 76($8)
	addi $8, $8, 512
	sw $10, 12($8)
	sw $10, 16($8)
	sw $10, 44($8)
	sw $10, 48($8)
	sw $10, 52($8)
	sw $10, 80($8)
	sw $10, 92($8)
	sw $10, 96($8)
	addi $8, $8, 508
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
	sw $10, 0($8)
	sw $10, 4($8)
	sw $10, 8($8)
	addi $8, $8, 500
	addi $9, $0, 8
	jal build
	add $8, $0, $11		# retorno
	ori $10, $0, 0xb2e7ff	# sombra
	sw $10, 8($8)
	addi $8, $8, 500
	sw $10, 8($8)
	sw $10, 16($8)
	sw $10, 24($8)
	sw $10, 28($8)
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
	sw $10, 20($8)
	sw $10, 28($8)
	addi $8, $8, 512
	sw $10, 16($8)
	sw $10, 36($8)
	sw $10, 44($8)
	sw $10, 48($8)
	addi $8, $8, 500
	sw $10, 0($8)
	sw $10, 4($8)
	sw $10, 12($8)
	addi $8, $8, 20
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
	sw $10, 28($8)
	sw $10, 32($8)
	addi $8, $8, 512
	sw $10, 0($8)
	sw $10, 8($8)
	sw $10, 16($8)
	sw $10, 20($8)
	sw $10, 32($8)
	sw $10, 40($8)
	sw $10, 44($8)
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
	sw $10, 16($8)
	sw $10, 56($8)
	addi $8, $8, 512
	sw $10, 20($8)
	sw $10, 56($8)
	sw $10, 60($8)
	sw $10, 64($8)
	addi $8, $8, 512
	sw $10, 12($8)
	sw $10, 20($8)
	sw $10, 24($8)
	sw $10, 32($8)
	sw $10, 60($8)
	sw $10, 68($8)
	sw $10, 72($8)
	sw $10, 76($8)
	addi $8, $8, 488
	sw $10, 0($8)
	sw $10, 8($8)
	sw $10, 12($8)
	sw $10, 16($8)
	sw $10, 24($8)
	addi $8, $8, 32
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
	sw $10, 32($8)
	addi $8, $8, 512
	sw $10, 8($8)
	sw $10, 16($8)
	sw $10, 20($8)
	sw $10, 24($8)
	sw $10, 36($8)
	sw $10, 44($8)
	sw $10, 48($8)
	addi $8, $8, 504
	sw $10, 0($8)
	sw $10, 12($8)
	sw $10, 16($8)
	sw $10, 20($8)
	sw $10, 28($8)
	sw $10, 36($8)
	sw $10, 40($8)
	sw $10, 44($8)
	sw $10, 48($8)
	sw $10, 52($8)
	addi $8, $8, 488
	sw $10, 0($8)
	addi $8, $8, 12
	addi $9, $0, 7
	jal build
	addi $8, $8, 4
	addi $9, $0, 2
	jal build
	addi $8, $8, 4
	addi $9, $0, 7
	jal build
	

fim:
	addi $2, $0, 10
	syscall
	
#============================================================================================================================
# Função Criar
# Regs usados 		$8 e $9
# Regs sujos		-

build:
	beq $9, $0, fimBuild
	sw $10, 0($8)		
	addi $8, $8, 4
	addi $9, $9, -1
	j build
	
fimBuild:
	jr $31
