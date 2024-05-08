ORG 0000H
	MOV R7, #04H ; five element to sort
	
	START:
		MOV R0, #30H
		MOV R6, #04H
		UP:
			MOV A, @R0
			INC R0
			MOV B, @R0
			CJNE A,B, NEXT
			
		NEXT:
			JC NO_EXCHANGE
			
			MOV @R0, A ; SWAP A,B
			DEC R0
			MOV @R0, B
			INC R0
			
		NO_EXCHANGE:
			DJNZ R6, UP
			DJNZ R7, START
END
