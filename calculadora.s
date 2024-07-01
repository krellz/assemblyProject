.data
menu_principal: .asciiz "\n»»»»»»»»»»»»»»»»»»»»»»»»\n\tMenu\n\n [1] - Operações aritméticas\n [2] - Fatorial de um número\n [3] - Série de Fibonacci\n [4] - Listagens\n [5] - Terminar\n\n««««««««««««««««««««««««\n\n(Introduza a opção e pressione ENTER para validar)\n\nOpção: "
.text

.data
voltar_menu: .asciiz "\n\nVoltar ao menu"
.text
							
.data
escolha_operacoes: .asciiz "\n»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»\n  Escolha o tipo de Operações\n\n [1] - Operações Inteiras\n [2] - Operações de Vírgula Flutuante\n\n«««««««««««««««««««««««««««««««\n\n(Introduza a opção e pressione ENTER para validar)\n\nOpção: "
.text

.data
menu_operacoes_inteiras: .asciiz "\n»»»»»»»»»»»»»»»»»»»»»»»»»»»\n         Operações Inteiras\n\n [1] - Adição\n [2] - Subtração\n [3] - Multiplicação\n [4] - Divisão\n [5] - Retornar\n\n«««««««««««««««««««««««««««\n\n(Introduza a opção e pressione ENTER para validar)\n\nOpção: "
.text

.data
menu_operacoes_flutuante: .asciiz "\n»»»»»»»»»»»»»»»»»»»»»»»»»»»\n  Operações de Vírgula Flutuante\n\n [1] - Adição\n [2] - Subtração\n [3] - Multiplicação\n [4] - Divisão\n [5] - Retornar\n\n«««««««««««««««««««««««««««\n\n(Introduza a opção e pressione ENTER para validar)\n\nOpção: "
.text
		
.data
menu_adicao: .asciiz "\n»»»»»»»»»»»»»»»»»»»»»»»»\n                 Adição\n««««««««««««««««««««««««\n"
.text

.data
resultado_adicao: .asciiz "\nResultado da adição: "
.text

.data
menu_subtracao:	.asciiz "\n»»»»»»»»»»»»»»»»»»»»»»»»\n             Subtração\n««««««««««««««««««««««««\n"
.text

.data
resultado_subtracao: .asciiz "\nResultado da subtração: "
.text

.data
menu_multiplicacao:	.asciiz "\n»»»»»»»»»»»»»»»»»»»»»»»»\n            Multiplicação\n««««««««««««««««««««««««\n"
.text

.data
resultado_multiplicacao: .asciiz "\nResultado da multiplicação: "
.text

.data
menu_divisao: .asciiz "\n»»»»»»»»»»»»»»»»»»»»»»»»\n                 Divisão\n««««««««««««««««««««««««\n"
.text

.data
resultado_divisao: .asciiz "\nResultado da divisão: "
.text

.data
inseriu_zero: .asciiz "\nDivisão por zero! \n\nInsira os números novamente!\n"
.text

.data
menu_inserir_expressao:	.asciiz "\n»»»»»»»»»»»»»»»»»»»»»»»»\n    Inserir Expressão\n««««««««««««««««««««««««\n"
.text

.data
resultado_expressao: .asciiz "\nResultado da expressão: "
.text
		
.data
pedir_numero1: .asciiz "\n(Introduza o número e pressione ENTER para validar)\n\nPrimeiro número: "
.text

.data
pedir_numero2: .asciiz "\n(Introduza o número e pressione ENTER para validar)\n\nSegundo número: "
.text

.data
pedir_ponto: .asciiz "\nPor favor utilize ponto para separar a parte inteira da decimal\n"
.text

.data
menu_fatorial: .asciiz "\n»»»»»»»»»»»»»»»»»»»»»»»»\n    Fatorial de um número\n««««««««««««««««««««««««"
.text

.data
menu_fibonacci: .asciiz "\n»»»»»»»»»»»»»»»»»»»»»»»»\n    Série de Fibonacci\n««««««««««««««««««««««««\n"
.text

.data
pedir_fatorial: .asciiz "\n\nIntroduza o número do qual deseja calcular o fatorial: "
.text

.data
num_negativo: .asciiz "\nIntroduziu um número negativo!\n\nSó é possível calcular fatorial de números positivos.\n\n"
.text

.data
resultado_fatorial: .asciiz "\n\nResultado do Fatorial: "
.text

.data
num_elementos: .asciiz "\nIntroduza o número de elementos que pretende calcular: "
.text

.data
elementos_fibonacci: .asciiz "\nElementos da Série de Fibonacci: "
.text

.data
menu_lista:	.asciiz "\n»»»»»»»»»»»»»»»»»»»»»»»»\n    Lista de Resultados\n««««««««««««««««««««««««\n\n"
.text

.data
linha_branco:	.asciiz "\n\n"
.text
		
				
main:
	addi $t0, $0, 0 #t0 vai guardar as escolhas dos menus
	addi $t1, $0, 1 #opção 1 do menu
	addi $t2, $0, 2 #opção 2 do menu
	addi $t3, $0, 3 #opção 3 do menu
	addi $t4, $0, 4 #opção 4 do menu
	addi $t5, $0, 5 #opção 5 do menu
	addi $t6, $0, 6	#opção 6 do menu
	
	addi $t7, $0, 0 #vai guardar resultados das operações inteiras
	addi $t8, $0, 0 #vai guardar resultados das operações inteiras
	addi $t9, $0, 0 #vai guardar resultados das operações inteiras
		
	li.s $f0, 0.0 #iniciar os registos a 0
	li.s $f2, 0.0 #iniciar os registos a 0
	li.s $f4, 0.0 #iniciar os registos a 0
	li.s $f6, 0.0 #iniciar os registos a 0
	li.s $f8, 0.0 #iniciar os registos a 0
	li.s $f12, 0.0 #iniciar os registos a 0
	
	lui $s0, 0x1000 #endereço de memória do vetor para guardar os dados das adições e multiplicações
	add $s0, $s0, 0x0000 #endereço de memória do vetor para guardar os dados das adições e multiplicações
	
	lui $s1, 0x1000 #endereço de memória do vetor para guardar os dados das subtrações e divisões
	add $s1, $s1, 0x0100 #endereço de memória do vetor para guardar os dados das subtrações e divisões
	
	lui $s2, 0x1000 #endereço de memória do vetor para guardar os dados da série de fibonacci
	add $s2, $s2, 0x1004 #endereço de memória do vetor para guardar os dados da série de fibonacci

	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, menu_principal #função para apresentar o menu principal
	syscall
	
	li $v0, 5 #serviço do syscall para ler a opção
	syscall
	add $t0, $v0, 0 #guardar a escolha em t0
	
	beq $t0, $t1, operacoes_aritmeticas #compara a opção com 1, se for igual executa o procedimento das operações aritméticas
	beq $t0, $t2, fatorial #compara a opção com 2, se for igual executa o procedimento do fatorial
	beq $t0, $t3, serie_fibonacci #compara a opção com 3, se for igual executa o procedimento da série de fibonacci
	beq $t0, $t4, lista_resultados #compara a opção com 4, se for igual executa o procedimento das listas
	beq $t0, $t5, terminar_programa #compara a opção com 5, se for igual executa o procedimento para terminar o programa
	jr $ra #caso nenhuma das opções anteriores seja selecionada volta a apresentar o menu principal
	
operacoes_aritmeticas:
	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, escolha_operacoes #função para apresentar o menu para a escolha do tipo de operações aritméticas
	syscall
	
	li $v0, 5 #serviço do syscall para ler a opção
	syscall
	add $t0, $v0, 0 #guardar a opção em t0
	
	beq $t0, $t1, operacoes_aritmeticas_inteiras #compara a opção com 1, se for igual executa o procedimento para operações inteiras
	beq $t0, $t2, operacoes_aritmeticas_flutuante #compara a opção com 2, se for igual executa o procedimento para operações de vírgula flutuante
	jr $ra 

operacoes_aritmeticas_inteiras:
	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, menu_operacoes_inteiras #função para apresentar o menu das operações aritméticas inteiras
	syscall
	
	li $v0, 5 #serviço do syscall para ler a escolha do utilizador
	syscall
	add $t0, $v0, 0 #guardar a escolha em t0
	
	beq $t0, $t1, adicao_inteira #compara a opção com 1, se for igual executa o procedimento da adição
	beq $t0, $t2, subtracao_inteira #compara a opção com 2, se for igual executa o procedimento da subtração
	beq $t0, $t3, multiplicacao_inteira #compara a opção com 3, se for igual executa o procedimento da multiplicação
	beq $t0, $t4, divisao_inteira #compara a opção com 4, se for igual executa o procedimento da divisão
	beq $t0, $t5, terminar_programa #compara a opção com 6, se for igual executa o procedimento para terminar o programa
	j operacoes_aritmeticas_inteiras
	
operacoes_aritmeticas_flutuante:
	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, menu_operacoes_flutuante #função para apresentar o menu das operações aritméticas de vírgula flutuante
	syscall
	
	li $v0, 5 #serviço do syscall para ler a escolha do utilizador
	syscall
	add $t0, $v0, 0 #guardar a escolha em t0
	
	beq $t0, $t1, adicao_virgula_flutuante #compara a opção com 1, se for igual executa o procedimento da adição
	beq $t0, $t2, subtracao_virgula_flutuante #compara a opção com 2, se for igual executa o procedimento da subtração
	beq $t0, $t3, multiplicacao_virgula_flutuante #compara a opção com 3, se for igual executa o procedimento da multiplicação
	beq $t0, $t4, divisao_virgula_flutuante #compara a opção com 4, se for igual executa o procedimento da divisão
	beq $t0, $t5, terminar_programa #compara a opção com 6, se for igual executa o procedimento para terminar o programa
	j operacoes_aritmeticas_flutuante
	
adicao_inteira:
	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, menu_adicao #função para apresentar o menu da adição
	syscall
	
	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, pedir_numero1 #função para pedir o primeiro número ao utilizador
	syscall
	
	li $v0, 5 #serviço do syscall para ler o número introduzido
	syscall
	sw $v0, 0($s0) #guardar o primeiro número na primeira posição do vetor

	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, pedir_numero2 #função para pedir o segundo número ao utilizador
	syscall
	
	li $v0, 5 #serviço do syscall para ler o número introduzido
	syscall
	sw $v0, 4($s0) #guardar o segundo número na segunda posição do vetor

	lw $t7, 0($s0) #carregar o primeiro número em t7
	lw $t8, 4($s0) #carregar o segundo número em t8
	add $t9, $t7, $t8 #soma os dois números e guarda em t9
	sw $t9, 8($s0) #guardar o resultado
	
	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, resultado_adicao #função para chamar a função para mostrar o resultado da adição
	syscall
	
	lw $a0, 8($s0)
	addi $v0, $0, 1 #serviço do syscall para imprimir um inteiro na consola
	syscall
	
	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, voltar_menu #função para avisar o utilizador que vai voltar ao menu
	syscall
	jr $ra

adicao_virgula_flutuante:
	li $v0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, menu_adicao #função para apresentar o menu da adição
	syscall
	
	li $v0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, pedir_ponto #função para alertar o utilizador para usar o ponto
	syscall

	li $v0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, pedir_numero1 #função para pedir o primeiro número ao utilizador
	syscall
	
	li $v0, 6 #serviço do syscall para ler o número de vírgula flutuante introduzido
	syscall
	s.s $f0, 0($s0) #guardar o primeiro número na primeira posição do vetor

	li $v0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, pedir_numero2 #função para pedir o segundo número ao utilizador
	syscall
	
	li $v0, 6 #serviço do syscall ler o número de vírgula flutuante introduzido
	syscall
	s.s $f0, 4($s0) #guardar o segundo número na segunda posição do vetor

	l.s $f4, 0($s0) #carregar o primeiro número em $f4
	l.s $f6, 4($s0) #carregar o segundo número em $f6
	add.s $f8, $f4, $f6 #somar os dois números e guardar em $f8
	s.s $f8, 8($s0) #guardar o resultado

	li $v0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, resultado_adicao #função para mostrar o resultado da adição ao utilizador
	syscall

	l.s $f12, 8($s0) #carregar o resultado em $f12
	li $v0, 2 #serviço para imprimir número de vírgula flutuante na consola
	syscall
	
	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, voltar_menu #função para avisar o utilizador que vai voltar ao menu
	syscall
	jr $ra

subtracao_inteira:
	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, menu_subtracao #função para apresentar o menu da subtração
	syscall
	
	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, pedir_numero1 #função para pedir o primeiro número ao utilizador
	
	syscall
	
	li $v0, 5 #serviço do syscall para ler o número introduzido
	syscall
	sw $v0, 0($s1) #guardar o primeiro número na primeira posição do vetor

	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, pedir_numero2 #função para pedir o segundo número ao utilizador
	syscall
	
	li $v0, 5 #serviço do syscall para ler o número introduzido
	syscall
	sw $v0, 4($s1) #guardar o segundo número na segunda posição do vetor

	lw $t7, 0($s1) #carregar o primeiro número em t7
	lw $t8, 4($s1) #carregar o segundo número em t8
	sub $t9, $t7, $t8 #subtrair os dois números e guarda em t9
	sw $t9, 8($s1) #guardar o resultado
	
	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, resultado_subtracao #função para mostrar o resultado da subtração
	syscall
	
	lw $a0, 8($s1)
	addi $v0, $0, 1 #serviço do syscall para imprimir um inteiro na consola
	syscall
	
	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, voltar_menu #função para avisar o utilizador que vai voltar ao menu
	syscall
	jr $ra
	
subtracao_virgula_flutuante:
	li $v0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, menu_subtracao #função para apresentar o menu da subtração
	syscall
	
	li $v0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, pedir_ponto #função para alertar o utilizador para usar o ponto
	syscall

	li $v0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, pedir_numero1 #função para pedir o primeiro número ao utilizador
	syscall

	li $v0, 6 #serviço do syscall para ler o número de vírgula flutuante
	syscall
	s.s $f0, 0($s0) #guardar o primeiro número na primeira posição do vetor

	li $v0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, pedir_numero2 #função para pedir o segundo número ao utilizador
	syscall
	
	li $v0, 6 #serviço do syscall ler o número de vírgula flutuante
	syscall
	s.s $f0, 4($s0) #guardar o segundo número na segunda posição do vetor

	l.s $f4, 0($s0) #carregar o primeiro número em $f4
	l.s $f6, 4($s0) #carregar o segundo número em $f6
	sub.s $f8, $f4, $f6 #subtrair os dois números e guardar em $f8
	s.s $f8, 8($s0) #guardar o resultado

	li $v0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, resultado_subtracao #função para mostrar o resultado ao utilizador
	syscall

	l.s $f12, 8($s0) #carregar o resultado em $f12
	li $v0, 2 #serviço do syscall para imprimir número de vírgula flutuante na consola
	syscall

	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, voltar_menu #função para avisar o utilizador que vai voltar ao menu
	syscall
	jr $ra
	
multiplicacao_inteira:
	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, menu_multiplicacao #função para apresentar o menu da multiplicação
	syscall
	
	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, pedir_numero1 #função para pedir o primeiro número ao utilizador
	syscall
	
	li $v0, 5 #serviço do syscall para ler o número introduzido
	syscall
	sw $v0, 0($s0) #guardar o primeiro número na primeira posição do vetor

	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, pedir_numero2 #função para pedir o segundo número ao utilizador
	syscall
	
	li $v0, 5 #serviço do syscall para ler o número introduzido
	syscall
	sw $v0, 4($s0) #guardar o segundo número na segunda posição do vetor

	lw $t7, 0($s0) #carregar o primeiro número em t7
	lw $t8, 4($s0) #carregar o segundo número em t8
	mul $t9, $t7, $t8 #multiplica os dois números e guarda em t9
	sw $t9, 8($s0) #guardar o resultado
	
	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, resultado_multiplicacao #função para mostrar o resultado da multiplicação
	syscall
	
	lw $a0, 8($s0)
	addi $v0, $0, 1 #serviço do syscall para imprimir um inteiro na consola
	syscall
	
	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, voltar_menu #função para avisar o utilizador que vai voltar ao menu
	syscall
	jr $ra

multiplicacao_virgula_flutuante:
	li $v0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, menu_multiplicacao #função para apresentar o menu da multiplicação
	syscall
	
	li $v0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, pedir_ponto #função para alertar o utilizador para usar o ponto
	syscall

	li $v0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, pedir_numero1 #função para pedir o primeiro número ao utilizador
	syscall
	
	li $v0, 6 #serviço do syscall para ler o número de vírgula flutuante
	syscall
	s.s $f0, 0($s0) #guardar o primeiro número na primeira posição do vetor

	li $v0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, pedir_numero2 #função para pedir o segundo número ao utilizador
	syscall
	
	li $v0, 6 #serviço do syscall ler o número de vírgula flutuante
	syscall
	s.s $f0, 4($s0) #guardar o segundo número na segunda posição do vetor

	l.s $f4, 0($s0) #carregar o primeiro número em $f4
	l.s $f6, 4($s0) #carregar o segundo número em $f6
	mul.s $f8, $f4, $f6 #multiplica os dois números e guardar em $f8
	s.s $f8, 8($s0) #guardar o resultado

	li $v0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, resultado_multiplicacao #função para mostrar o resultado ao utilizador
	syscall

	l.s $f12, 8($s0) #carregar o resultado em $f12
	li $v0, 2 #serviço para imprimir número de vírgula flutuante na consola
	syscall

	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, voltar_menu #função para avisar o utilizador que vai voltar ao menu
	syscall
	jr $ra

divisao_inteira:
	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, menu_divisao #função para apresentar o menu da divisão
	syscall
	
	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, pedir_numero1 #função para pedir o primeiro número ao utilizador
	syscall
	
	li $v0, 5 #serviço do syscall para ler o número introduzido
	syscall
	sw $v0, 0($s1) #guardar o primeiro número na primeira posição do vetor

	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, pedir_numero2 #função para pedir o segundo número ao utilizador
	syscall
	
	li $v0, 5 #serviço do syscall para ler o número introduzido
	syscall
	sw $v0, 4($s1) #guardar o segundo número na segunda posição do vetor

	lw $t7, 0($s1) #carregar o primeiro número em t7
	lw $t8, 4($s1) #carregar o segundo número em t8
	beq $t8, $0, divisao_zero #verificação se o segundo número é igual a zero
	div $t9, $t7, $t8 #divide os dois números e guarda em t9
	sw $t9, 8($s1) #guardar o resultado
	
	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, resultado_divisao #função para mostrar o resultado da divisão
	syscall
	
	lw $a0, 8($s1)
	addi $v0, $0, 1 #serviço do syscall para imprimir um inteiro na consola
	syscall
	
	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, voltar_menu #função para avisar o utilizador que vai voltar ao menu
	syscall
	jr $ra

divisao_zero:
	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, inseriu_zero #função para avisar o utilizador que vai voltar ao menu
	syscall
	j divisao_inteira

divisao_virgula_flutuante:
	li $v0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, menu_divisao #função para apresentar o menu da divisão
	syscall

	li $v0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, pedir_ponto #função para alertar o utilizador para usar o ponto
	syscall

	li $v0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, pedir_numero1 #função para pedir o primeiro número ao utilizador
	syscall

	li $v0, 6 #serviço do syscall para ler o número de vírgula flutuante
	syscall
	s.s $f0, 0($s0) #guardar o primeiro número na primeira posição do vetor

	li $v0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, pedir_numero2 #função para pedir o segundo número ao utilizador
	syscall

	li $v0, 6 #serviço do syscall ler o número de vírgula flutuante
	syscall
	s.s $f0, 4($s0) #guardar o segundo número na segunda posição do vetor

	l.s $f4, 0($s0) #carregar o primeiro número em $f4
	l.s $f6, 4($s0) #carregar o segundo número em $f6
	c.eq.s $f6, $f0 #comparar se $f6 é igual a zero
	bc1t divisao_zero_flutuante #se for igual a zero salta, com números de vírgula flutuante não se pode usar beq 
	div.s $f8, $f4, $f6 #divide os dois números e guardar em $f8
	s.s $f8, 8($s0) #guardar o resultado

	li $v0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, resultado_divisao #função para mostrar o resultado ao utilizador
	syscall

	l.s $f12, 8($s0) #carregar o resultado em $f12
	li $v0, 2 #serviço para imprimir número de vírgula flutuante na consola
	syscall

	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, voltar_menu #função para avisar o utilizador que vai voltar ao menu
	syscall
	jr $ra
	
divisao_zero_flutuante:
	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, inseriu_zero #função para avisar o utilizador que vai voltar ao menu
	syscall
	j divisao_virgula_flutuante

fatorial:
	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, menu_fatorial #função para apresentar o menu do fatorial
	syscall
	
	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
    la $a0, pedir_fatorial #função para pedir o número que o utilizador quer calcular o fatorial
    syscall
    
    li $v0, 5 #serviço do syscall para ler a escolha do utilizador
    syscall
    add $t0, $v0, 0 #guardar o número lido em t0

    blt $t0, $0, numero_negativo #se o número for menor que 0 mostra erro ao utilizador
    beq $t0, $zero, resultado_1 #verificar se o número introduzido pelo utilizador é 0
	li $t1, 1 #resultado do fatorial 1
    li $t2, 1 #iniciar a variável controlo

loop_fatorial:
    mul $t1, $t1, $t2 #calcular o fatorial
    addi $t2, $t2, 1 #incrementar a variável controlo
	bgt $t2, $t0, fim_fatorial #se t2 for maior que o número introduzido vai para o fim do fatorial
    j loop_fatorial

fim_fatorial:
    addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
    la $a0, resultado_fatorial #função para mostrar o resultado do fatorial
    syscall

    add $a0, $t1, 0 #guardar o valor do fatorial em a0
    addi $v0, $0, 1 #serviço do syscall para imprimir um inteiro
    syscall

    addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
    la $a0, voltar_menu #função para avisar o utilizador que vai voltar ao menu
    syscall
    jr $ra

numero_negativo:
    addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
    la $a0, num_negativo #função para mostrar erro ao utilizar e avisar que introduziu um número negativo
    syscall
    j fatorial #voltar ao fatorial
	
resultado_1:
    addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
    la $a0, resultado_fatorial #função para mostrar o resultado do fatorial
    syscall

    addi $v0, $0, 1 #serviço do syscall para imprimir um inteiro
    li $a0, 1 #valor do fatorial 0
    syscall

    addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
    la $a0, voltar_menu #função para avisar o utilizador que vai voltar ao menu
    syscall
    jr $ra

serie_fibonacci:
    addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
    la $a0, menu_fibonacci #função para apresentar o menu Fibonacci
    syscall
    
    addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
    la $a0, num_elementos #função para pedir o número de elementos 
    syscall
    
    li $v0, 5 #serviço do syscall para ler a escolha do utilizador
    syscall
	
    add $t0, $v0, 0 #carregar o número de elementos em t0
    add $s3, $s2, 0 #armazenar o endereço inicial do vetor de Fibonacci

    addi $t1, $0, 0 #primeiro termo
    addi $t2, $0, 1 #segundo termo
    addi $t4, $0, 2 #variável controlo
    sw $t1, 0($s2) #guardar o primeiro termo no endereço
    addi $s2, $s2, 4 #atualizar o endereço
    sw $t2, 0($s2) #guardar o segundo termo
    addi $s2, $s2, 4 #atualizar o endereço
        
calcular_elementos:
	beq $t0, $0, fim_mostrar_elementos #se o utilizador colocar que quer calcular 0 elementos
	beq $t0, $t2, mostrar_elementos_fibonacci #para calcular apenas 1 elemento
    beq $t0, $t4, mostrar_elementos_fibonacci #para calcular 2 ou mais elementos
    addi $t4, $t4, 1 #incrementar o controlo
    add $t3, $t1, $t2 #somar os primeiros 2 termos
    sw $t3, 0($s2) #guardar o valor
    addi $s2, $s2, 4 #atualizar o endereço
    addi $t1, $t2, 0 #atualizar os termos
    addi $t2, $t3, 0 #atualzar os termos
    j calcular_elementos
        
mostrar_elementos_fibonacci:
    add $s2, $s3, 0 #restaurar o endereço inicial do vetor de Fibonacci
    addi $t4, $0, 0 #colocar a variável controlo a 0
    add $t0, $v0, 0 #carregar o número de elementos em t0

loop_elementos:
    addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
    la $a0, elementos_fibonacci #função para mostrar os elementos da série de fibonacci
    syscall
	
    lw $t1, 0($s2) #carregar o próximo elemento
    addi $s2, $s2, 4 #atualizar o endereço

    addi $a0, $t1, 0 #o elemento de t1 é guardado em a0
    addi $v0, $0, 1 #serviço do syscall para mostrar número inteiro
    syscall

    addi $t4, $t4, 1 #incrementar a variável de controlo

    blt $t4, $t0, loop_elementos #blt porque o número de elementos é n-1, porque a posição do vetor começa em 0
    j fim_mostrar_elementos

fim_mostrar_elementos:
	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, voltar_menu #função para avisar o utilizador que vai voltar ao menu
	syscall
    jr $ra
	
lista_resultados:
	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, menu_lista #função para apresentar o menu da lista de resultados
	syscall
	
	addi $s5, $0, 1 #guardar o número de resultados que queremos apresentar
	addi $s6, $0, 0 #variável de controlo

mostrar_lista_resultados:
	beq $s6, $s5, fim_mostrar_lista #comparação da variável controlo
		
	lw $s7, 8($s0) #guardar em s7 o valor do vetor que guarda os resultados
	add $a0, $s7, 0
	addi $v0, $0, 1 #serviço do syscall para imprimir um número inteiro na consola
	syscall
	
	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, linha_branco #função para avisar criar uma linha em branco
	syscall
	
	lw $s7, 8($s1) #guardar em s7 o valor do vetor que guarda os resultados
	add $a0, $s7, 0
	addi $v0, $0, 1 #serviço do syscall para imprimir um número inteiro na consola
	syscall
	
	addi $s6, $s6, 1 #incrementar a variável controlo
	addi $s0, $s0, 12 #atualizar endereço de memória
	addi $s1, $s1, 12 #atualizar endereço de memória
	j mostrar_lista_resultados
	
fim_mostrar_lista:
	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, voltar_menu #função para avisar o utilizador que vai voltar ao menu
	syscall
    jr $ra
	
terminar_programa:
	addi $v0, $0, 4 #serviço do syscall para imprimir uma string na consola
	la $a0, voltar_menu #função para avisar o utilizador que vai voltar ao menu
	syscall
	jr $ra
