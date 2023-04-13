
			.text
			.def ex5

ex5:
			mov.b	#0x12,R4
			mov.b	#0x20,R5
			add		R4,R5

			jmp $
			nop
