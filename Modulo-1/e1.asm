
			.text
			.def ex1

ex1:
			mov.w	#0x2400,R4
			mov.b	#0x1A,0(R4)
			mov.b	#0x5C, 1(R4)
											;n�o podemos usar o modo @R4 como dst. logo, quebrar�
											;tentar fazer: mov.b	#0x5C,@R4
			mov.w	#0xCAFE, 2(R4)
			mov.w	#0x1A70, 3(R4)			;ele ir� substituir o 0xCAFE pois, j� que acaba virando um addr
											; �mpar, pela arquitetura ele ir� decrementar para virar par.
			jmp		$
