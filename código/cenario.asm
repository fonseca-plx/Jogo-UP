.text

main:
	lui $8, 0x1001		# end inicio
	addi $9, $0, 1028	# céu (antes das nuvens)
	ori $10, $0, 0x20D0E6	# cor (azul claro)
	ori $11, $0, 0xffffff	# cor (branco)
	# addi $12, $0, 5		# loop linha1 (repetir 5x)
	
ceu:
	beq $9, $0, nuvens	# condição de parada do loop
	sw $10, 0($8)		# carrega p/ o end de memoria que está em $8 o valor contido em $10 (cor azul claro)
	addi $8, $8, 4		# atualiza o end de memória
	addi $9, $9, -1		# decrementa $9 (quantidade de unidades gráficas)
	j ceu

nuvens:	
	jal criaNuvens
	addi $9, $0, 778	# céu antes da segunda fileira de nuvens
	
ceu2:
	beq $9, $0, nuvens2
	sw $10, 0($8)
	addi $8, $8, 4
	addi $9, $9, -1
	j ceu2
	
nuvens2:
	jal criaNuvens
	addi $9, $0, 3834	# restante do céu
	
ceu3:
	beq $9, $0, grama
	sw $10, 0($8)
	addi $8, $8, 4
	addi $9, $9, -1
	j ceu3
	
grama:
	addi $9, $0, 256	# grama
	ori $10, $0, 0x33E93C	# cor (verde claro)

addGrama:
	beq $9, $0, terra
	sw $10, 0($8)
	addi $8, $8, 4
	addi $9, $9, -1
	j addGrama
	
terra:
	addi $9, $0, 1024	# terra
	ori $10, $0, 0x845D34	# cor (marron)
	
addTerra:
	beq $9, $0, fim
	sw $10, 0($8)
	addi $8, $8, 4
	addi $9, $9, -1
	j addTerra
	
fim:
	addi $2, $0, 10
	syscall

#============================================================================================================================
# Função Criar Nuvens
# Regs usados 		$9, $12, $13
# Regs sujos		$13

criaNuvens:
	addi $12, $0, 5		# loop linhas (repetir 5x)
	add $13, $0, $31	# salvando o endereço de retorno antes de chamar a próxima função
linha1:
	beq $12, $0, fimLinha1
	addi $9, $0, 4		# primeira linha da nuvem
	jal branco
	addi $9, $0, 18		# distância até a próxima nuvem
	jal dist
	addi $12, $12, -1
	j linha1
	
fimLinha1:
	addi $12, $0, 5		# restaura o valor de $12 para 5
	addi $9, $0, 4		# primeira linha da nuvem
	jal branco
	addi $9, $0, 13		# distância até o começo da próxima linha da nuvem
	jal dist

linha2:
	beq $12, $0, fimLinha2
	addi $9, $0, 6		# segunda linha da nuvem
	jal branco
	addi $9, $0, 16		# distância até a próxima nuvem
	jal dist
	addi $12, $12, -1
	j linha2
	
fimLinha2:
	addi $12, $0, 5		# restaura o valor de $12 para 5
	addi $9, $0, 6		# segunda linha da nuvem
	jal branco
	addi $9, $0, 11		# distância até o começo da próxima linha da nuvem
	jal dist
	
linha3:
	beq $12, $0, fimLinha3
	addi $9, $0, 8		# terceira linha da nuvem
	jal branco
	addi $9, $0, 14		# distância até a próxima nuvem
	jal dist
	addi $12, $12, -1
	j linha3
	
fimLinha3:
	addi $12, $0, 5		# restaura o valor de $12 para 5
	addi $9, $0, 8		# terceira linha da nuvem
	jal branco
	addi $9, $0, 9		# distância até o começo da próxima linha da nuvem
	jal dist
	
linha4:
	beq $12, $0, fimLinha4
	addi $9, $0, 10		# quarta linha da nuvem
	jal branco
	addi $9, $0, 12		# distância até a próxima nuvem
	jal dist
	addi $12, $12, -1
	j linha4
	
fimLinha4:
	addi $12, $0, 5		# restaura o valor de $12 para 5
	addi $9, $0, 10		# quarta linha da nuvem
	jal branco
	addi $9, $0, 8		# distância até o começo da próxima linha da nuvem
	jal dist

linha5:
	beq $12, $0, fimLinha5
	addi $9, $0, 10		# quinta linha da nuvem
	jal branco
	addi $9, $0, 12		# distância até a próxima nuvem
	jal dist
	addi $12, $12, -1
	j linha5
	
fimLinha5:
	addi $9, $0, 10		# quinta linha da nuvem
	jal branco
	addi $9, $0, 7		# distância até o final da linha
	jal dist
	add $31, $0, $13	# restaura o primeiro endereço de retorno
	jr $31			# encerra a função

#============================================================================================================================
# Função Pintar nuvem
# Regs usados 		$9, $11, $8
# Regs alterados	$8 (endereço atualizado)

branco:
	beq $9, $0, fimBranco
	sw $11, 0($8)		# carrega p/ o end de memoria que está em $8 o valor contido em $11 (cor branca)
	addi $8, $8, 4		# atualiza o end de memória
	addi $9, $9, -1		# decrementa $9 (quantidade de unidades gráficas)
	j branco
	
fimBranco:
	jr $31
#============================================================================================================================
# Função distância (espaço até a próxima nuvem)
# Regs usados 		$9, $10, $8
# Regs alterados	$8 (endereço atualizado)

dist:
	beq $9, $0, fimDist
	sw $10, 0($8)		# carrega p/ o end de memoria que está em $8 o valor contido em $10 (cor azul claro)
	addi $8, $8, 4		# atualiza o end de memória
	addi $9, $9, -1		# decrementa $9 (quantidade de unidades gráficas)
	j dist
	
fimDist:
	jr $31