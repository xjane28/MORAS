@MAIN
0; JMP

(MAIN)

	D=0          //set value of D register to 0
	
	@0			 //goto RAM[0]
	D=M		     //assign RAMs value to D
	D; JLT 
	
	@1			
	D = D + M    // valOfReg = valOfReg + RAMs value
	D; JLT 
	
	@2
	D = D + M
	D; JLT 
	
	@3
	D = D + M
	D; JLT 
	
	@4
	D = D + M
	D; JLT 
	
	@5
	M = D
	
(END)
@END
0; JMP