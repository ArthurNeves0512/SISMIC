
			.text
			.def divisao

divisao:
			mov.w 	#0x08, R12
			mov.w 	#0x02, R13
			push R4
			clr R4
divisaoloop:
			sub R13,R12
			inc R4
			cmp R13,R12
			jhs divisaoloop
			mov R4,R13
			pop R4

			ret

