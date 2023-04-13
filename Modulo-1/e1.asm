
			.text
			.def ex1

ex1:
			mov.w	#0x2400,R4
			mov.b	#0x1A,0(R4)
			mov.b	#0x5C, 1(R4)
											;não podemos usar o modo @R4 como dst. logo, quebrará
											;tentar fazer: mov.b	#0x5C,@R4
			mov.w	#0xCAFE, 2(R4)
			mov.w	#0x1A70, 3(R4)			;ele irá substituir o 0xCAFE pois, já que acaba virando um addr
											; ímpar, pela arquitetura ele irá decrementar para virar par.
			jmp		$
