@R2
M=1
$WHILE(R1)
@mnozenje
0;JMP
(vrni)
@R1
M=M-1
$END

@END 
0;JMP

(mnozenje)
@R2
D=M
@n
M=D
@R2
M=0
$WHILE(n)
$SUM (R2,R0,R2)
@n
M=M-1
$END
@vrni
0;JMP

(END)
@END
0;JMP