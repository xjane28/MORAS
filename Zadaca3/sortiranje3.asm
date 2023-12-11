//bubble sort 
/*
for(int i = 0 ;i<a.size();i++){
    for(int j = 0 ;j<a.size();j++){
        if(a[i]<a[j]){
            swap (a[i],a[j]);
*/


//---MAIN---
//----------------------------

//postavi n (vanjska petlja)
@R0
D=M-1  //jer krecemo od 0 
@n
M=D

$WHILE(n) 
    //postavi i ("adresar")
    @100  
    D=A
    @i
    M=D

    //postavi j (unutarnja petlja)
    @R0
    D=M-1
    @j
    M=D

    //unutranji loop
    @INLOOP
    0;JMP
    (INLOOPEND)

    //dekrementiraj n
    @n
    M=M-1
$END

@END
0;JMP
//----------------------------


//---UNUTRANJI LOOP---
//----------------------------
(INLOOP)
$WHILE(j)
    //ucitaj a[i]
    @i
    A=M  
    D=M 

    //ucitaj a[i+1]
    @i 
    A=M+1 
    D=D-M // D = a[i] - a[i+1]  razlika

    // if(a[i]<a[j])
    @SWAP
    D;JGT

    (back)
    //iduca adresa
    @i
    M=M+1
    
    @j
    M=M-1
$END
@INLOOPEND
0;JMP
//----------------------------


//---FUNKCIJA SWAP---
//----------------------------
(SWAP)
//ucitaj a[i]
@i                  
A=M 
D=M 

//spremi a[i] u temp
@temp
M=D 

//ucitaj a[i+1]
@i 
A=M+1
D=M 

//pristupi a[i] i zamijeni sa a[i+1]
@i                  
A=M 
M=D 

//pristupi temp i zamijeni a[i+1] sa a[i]
@temp
D=M
@i 
A=M+1
M=D 

@back
0;JMP
//----------------------------

(END)
@END
0;JMP