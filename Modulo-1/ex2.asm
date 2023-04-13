
			.text
			.def ex2

ex2:
			mov.w	#vetor,R4
			mov.b	@R4+, R5	;0x12
			mov.b   @R4+, R6	;0x34
			mov.w 	@R4, R7 ;;os bits irao ficar 0x7856 por causa da arquitetura
							;byte =7856 n->56 n+1->78

			jmp		$
			nop



			.data
vetor:		.byte	0x12,0x34, 0x56, 0x78, 0x9A, 0xBC, 0xDE
