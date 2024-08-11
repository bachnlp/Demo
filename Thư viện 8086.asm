org 100h
.MODEL LARGE
.STACK 1000H
.DATA 

;VARIABLE
;VARIABLE
M1 DB 10,13,10,13,'    <<====================LIBRARY====================>>$',10,13 
M2 DB 10,13,10,13,'Enter your Choise $'    

;DECISION TO BUY
PURCHASE1 DB 10,13,'  XX                 DO YOU WANT TO PURCHASE THIS ?                XX$'
PURCHASE2 DB 10,13,'  XX                  |YES(1)|      or     |NO(0)|                 XX$'
THANKYOU1 DB 10,13,' XX       You have chosen!                                        XX$' 
THANKYOU2 DB 10,13,' XX          See you next time.Thank you!                         XX$'
                  

;DIRECTION    ' 
DIRx DB 10,13,'  XX Direction: >>>Get ready...              $' 
DIR0 DB 10,13,'  XX Direction: >>>Category                                        $'                                                     
DIR1 DB 10,13,'  XX Direction: >>>Category/Textbooks                              XX$'
DIR1a DB 10,13,'  XX Direction: >>>Category/Textbooks/Calculus                     XX$'
DIR1a1 DB 10,13,'  XX Direction: >>>Category/Textbooks/Calculus/LIMIT               XX$'
DIR1a2 DB 10,13,'  XX Direction: >>>Category/Textbooks/Calculus/INDETERMINANT FORM  XX$'
DIR1a3 DB 10,13,'  XX Direction: >>>Category/Textbooks/Calculus/ORDERS OF APPROXIMATION$'
DIR1b DB 10,13,'  XX Direction: >>>Category/Textbooks/Discrete Mathematics         XX$'
DIR1b1 DB 10,13,'  XX Direction: >>>Category/Textbooks/Discrete Mathematics/SETS,RELATIONS AND FUNCTIONS$'
DIR1b2 DB 10,13,'  XX Direction: >>>Category/Textbooks/Discrete Mathematics/MATHEMATICAL LOGIC$'
DIR1b3 DB 10,13,'  XX Direction: >>>Category/Textbooks/Discrete Mathematics/GRAPH THEORY$'  
DIR1c DB 10,13,'  XX Direction: >>>Category/Textbooks/Theory of Signals             XX$'
DIR1c1 DB 10,13,'  XX Direction: >>>Category/Textbooks/Theory of Signals/SIGNAL SPACE$'
DIR1c2 DB 10,13,'  XX Direction: >>>Category/Textbooks/Theory of Signals/INTERGRAL TRANSFORM$'                                
DIR1c3 DB 10,13,'  XX Direction: >>>Category/Textbooks/Theory of Signals/SIGNAL DETECTION$'


 
DIR2 DB 10,13,'  XX Direction: >>>Category/Science and Technology Books           XX$'
DIR2a DB 10,13,'  XX Direction: >>>Category/Science and Technology Books/Database system$'
DIR2a1 DB 10,13,'  XX Direction: >>>Category/Science and Technology Books/Database system/EBMS$'
DIR2a2 DB 10,13,'  XX Direction: >>>Category/Science and Technology Books/Database system/ORAD$'
DIR2b DB 10,13,'  XX Direction: >>>Category/Science and Technology Books/Assembly for x86$'
DIR2b1 DB 10,13,'  XX Direction: >>>Category/Science and Technology Books/Assembly for x86/Programming with a C Library$'
DIR2b2 DB 10,13,'  XX Direction: >>>Category/Science and Technology Books/Assembly for x86/Programming for macOS$'
DIR2b3 DB 10,13,'  XX Direction: >>>Category/Science and Technology Books/Assembly for x86/Programming for DOS$'
DIR2c DB 10,13,'  XX Direction: >>>Category/Science and Technology Books/Computer architecture$'
DIR2c1 DB 10,13,'  XX Direction: >>>Category/Science and Technology Books/Computer architecture/ALU, CPU$'
DIR2c2 DB 10,13,'  XX Direction: >>>Category/Science and Technology Books/Computer architecture/Instruction Pipelining$'


     
DIR3 DB 10,13,'  XX Direction: >>>Category/Foreign Language Books                 XX$'
DIR3a DB 10,13,'  XX Direction: >>>Category/Foreign Language Books/English         XX$'
DIR3a1 DB 10,13,'  XX Direction: >>>Category/Foreign Language Books/English/Vocabulary $'
DIR3a2 DB 10,13,'  XX Direction: >>>Category/Foreign Language Books/English/Grammar** *$'
DIR3a3 DB 10,13,'  XX Direction: >>>Category/Foreign Language Books/English/englishPronoun$'
DIR3b DB 10,13,'  XX Direction: >>>Category/Foreign Language Books/Vietnamese      XX$'
DIR3b1 DB 10,13,'  XX Direction: >>>Category/Foreign Language Books/Vietnamese/Vocabulary$'
DIR3b2 DB 10,13,'  XX Direction: >>>Category/Foreign Language Books/Vietnamese/vietnamesePronoun$'
DIR3c DB 10,13,'  XX Direction: >>>Category/Foreign Language Books/Chinese         XX$'
DIR3c1 DB 10,13,'  XX Direction: >>>Category/Foreign Language Books/Chinese/Vocabulary$'
DIR3c2 DB 10,13,'  XX Direction: >>>Category/Foreign Language Books/Chinese/Grammar$'

            


;ENTRANCE
E1 DB 10,13,'  XX                              1.JOIN                           XX$'
E2 DB 10,13,'  XX                              0.EXIT                           XX$'

M3 DB 10,13, '  XX            1.Textbooks-Curriculum                             XX$' 
M4 DB 10,13, '  XX            2.Science and Technology Books                     XX$'
M5 DB 10,13, '  XX            3.Foreign Language Books                           XX$'
M5X DB 10,13, '  XX            4.SEARCHING                                        XX$'                 

M8 DB 10,13,10,13,'***Choise your book categories from the menu***$'

;Textbooks-Curriculum  
M9 DB 10,13,'  XX            1.Calculus                                         XX$' 
M10 DB 10,13,'  XX            2.Discrete Mathematics                             XX$'
M11 DB 10,13,'  XX            3.Theory of Signals                                XX$'

;      Calculus-Textbooks-Curriculum 
A0 DB 10,13,'  XX            Number of topic: 2 (two)                           XX$'                                               
A1 DB 10,13,'  XX            Number of topic: 3 (three)                         XX$'
A2 DB 10,13,'  XX            ==========================                         XX$'
A3 DB 10,13,'  XX            1.LIMIT                                            XX$' 
A4 DB 10,13,'  XX            2.INDETERMINANT FORM                               XX$'
A5 DB 10,13,'  XX            3.ORDERS OF APPROXIMATION                          XX$'



;      discreteMath-Textbooks-Curriculum                                                                                                        
A6 DB 10,13,'  XX            1.SETS,RELATIONS AND FUNCTIONS                     XX$' 
A7 DB 10,13,'  XX            2.MATHEMATICAL LOGIC                               XX$'
A8 DB 10,13,'  XX            3.GRAPH THEORY                                     XX$'

;      Signal-Textbooks-Curriculum                                                                                                        
A9 DB 10,13,'  XX           1.SIGNAL SPACE                                      XX$' 
A10 DB 10,13,'  XX           2.INTERGRAL TRANSFORM                               XX$'
A11 DB 10,13,'  XX           3.SIGNAL DETECTION                                  XX$'
                                                                             
;Science and Technology Books
M12 DB 10,13,'  XX           1.database system                                   XX$' 
M13 DB 10,13,'  XX           2.assembly for x86                                  XX$'
M14 DB 10,13,'  XX           3.computer architecture                             XX$'                                                                             
                                                                                     
;       database system-Science and Technology Books
A12 DB 10,13,'  XX           1.Electricity Bill Management System                XX$' 
A13 DB 10,13,'  XX           2.online Retail Application Database                XX$'

;      assembly for x86-Science and Technology Books                                                                                                        
A14 DB 10,13,'  XX           1.Programming with a C Library                      XX$' 
A15 DB 10,13,'  XX           2.Programming for macOS                             XX$'
A16 DB 10,13,'  XX           3.Programming for DOS                               XX$'

;      computer architecture-Science and Technology Books                                                                                                        
A17 DB 10,13,'  XX           1.ALU, CPU                                          XX$' 
A18 DB 10,13,'  XX           2.Instruction Pipelining                            XX$' 


;Foreign Language Books
M15 DB 10,13,'  XX           1.English                                           XX$' 
M16 DB 10,13,'  XX           2.Vietnamese                                        XX$'
M17 DB 10,13,'  XX           3.Chinese                                           XX$'                                                                             
                                                                                     
;       English-Foreign Language Books
A19 DB 10,13,'  XX           1.Vocabulary                                        XX$' 
A20 DB 10,13,'  XX           2.Grammar                                           XX$' 
A21 DB 10,13,'  XX           3.englishPronoun                                    XX$'

;      Vietnamese -Foreign Language Bookss                                                                                                        
A22 DB 10,13,'  XX           1.Vocabulary                                        XX$' 
A23 DB 10,13,'  XX           2.vietnamesePronoun                                 XX$'
                                                                               
;      Chinese-Foreign Language Books                                                                                                       
A24 DB 10,13,'  XX           1.Vocabulary                                        XX$' 
A25 DB 10,13,'  XX           2.Grammar                                           XX$'
                                                                  
;INVALID
M55 DB 10,13,10,13,'***&&INVALID ENTRY&&***$'
M56 DB 10,13,'      ***&&Try Again&&***$'

M57 DB 10,13,10,13,'Enter your choice: $'

;DECIDE
M58 DB 10,13,10,13,'Press (1) -> Let reading other books !!!$'
M59 DB 10,13,'Press (2) -> Do not want to read !!!$'
M60 DB 10,13,'press (0) to TURN BACK$'  

;STAR RESIZE
                                                                                                                          

MR1 DB 10,13,'  XX                                                               XX $'
MR2 DB 10,13,'  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX $'
MRx DB 10,13,'  X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X $'
MR3 DB 10,13,'  XX                                                               XX $'
MR4 DB 10,13,'  XX                                                               XX $'
MR5 DB 10,13,'  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX $'
MR6 DB 10,13,'  XX                                                               XX $'
MR7 DB 10,13,'  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX $'  

SEJ DB 10,13,10,13,' $' 

;ADDITION 
    AD0 DB 10,13,'  XXXXXXXXXXXXXXXXXXXXXXXX_TABLE_OF_CONTENTS_XXXXXXXXXXXXXXXXXXXXXXX $'
    AD1 DB 10,13,' XXXX_____TEXTBOOK_________SCIENCE_&_TECHNO_________LANGUAGE_____XXXX$'
    AD2 DB 10,13,' XXXX  1.Calculus      X  2.DatabaseSys       X   3.English      XXXX $'
    AD3 DB 10,13,' XXXX  4.DiscrteMat    X  5.Assembly x86      X   6.Vietnamese   XXXX $'
    AD4 DB 10,13,' XXXX  7.Signal        X  8.ComputerArchit    X   9.Chinese      XXXX $'
    AD5 DB 10,13,'  XX                   X                      X                   XX $'
    AD6 DB 10,13,' XXXX__________________X______________________X__________________XXXX $'
    AD7 DB 10,13,' XXX         __________________________________                    XXX$'
    AD8 DB 10,13,' XXX===============================================================XXX$'
    AD9 DB 10,13,' XXX                              ------                           XXX$'
    
    ;LG
username     db "Hello$"
a            db 10,13,10,13,"          Please input username: $"
lg           db 21          ;<=== MAXIMUM NUMBER OF CHARS ALLOWED (20).
             db ?           ;<=== NUMBER OF CHARS THAT USER ENTERED (?).
             db 21 dup(0)   ;<=== ARRAY OF CHARS (FINISH WITH 0DH=13).
b            db 10,13, "          Please input password (6 characters): $"      
pswrd        db "888888"
buff         db 20 dup(?)
MMM2         db '  INVALID $'
MMM3         db '  Correct $'

MMM4         db 10, 13, '          Do you want to try again (Y/N) $'                                                                                                                                                                                                    

.CODE
MAIN PROC
;CREATE REGISTER
    MOV AX,@DATA
    MOV DS,AX    
; CODE enter user & password  
;LG

log:
mov ah, 09h
lea dx, a
int 21h

mov ah, 0ah
MOV DX, OFFSET lg     ;<=== TELL INT 21H TO STORE CAPTURED STRING HERE.
int 21h

MOV SI, OFFSET LG + 2 ;<=== POINT TO THE ARRAY OF CHARS.
MOV DI, OFFSET username      ;<=== POINT TO THE USER.

check_username:
;CHECK END OF USER.
MOV DH, [DI]
CMP DH, '$'
JE  hi                ;<=== END REACHED. ALL CHARS MATCH.

;CHECK END OF INPUT.
MOV DL, [SI]          ;<=== CURRENT ENTERED CHAR.
CMP DL, 13
JE  log               ;<=== END REACHED. INPUT IS SHORTER.

;COMPARE CURRENT ENTERED CHAR TO CURRENT USER CHAR.
CMP DL, DH
jne log               ;<=== CURRENT CHARS ARE DIFFERENT.
INC SI                ;<== NEXT ENTERED CHAR.
INC DI                ;<== NEXT USER CHAR.
JMP check_username:                ;<== REPEAT.


hi:
lea si, pswrd
lea di, buff

mov ah, 09h
lea dx, b
int 21h

mov cx, 6

XX:     mov ah, 07
int 21h

mov [di], al
inc di

mov ah, 2
mov dl, '*'
int 21h

loop XX

lea si, PSWRD
lea di, buff

mov cx, 6

mov bx, 0

YY:     mov bl, [si]
mov bh, [di]

inc si
inc di

cmp bl, bh
JMP   ENTRANCE
loop yy

mov ah, 9
lea dx, MMM3
int 21h

;jmp top


ZZ:
mov ah ,9
lea dx, MMM2
int 21h


tryagain:
mov ah, 9
lea dx, MMM4
int 21h

MOV AH,1
INT 21H
MOV BH,AL

CMP BH,89
JE hi
CMP BH, 78
JE bye

JMP ZZ

bye:
mov ah, 4ch
int 21h

ret

        
;Entrance    
  ENTRANCE:

;MAIN MENU  
    LEA DX,M1
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H               
    
    LEA DX,MRx
    MOV AH,9
    INT 21H
       
    LEA DX,MR2
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,DIRx
    MOV AH,9
    INT 21H    
    
    LEA DX,MR3                    
    MOV AH,9
    INT 21H 
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                  
    LEA DX,MR3
    MOV AH,9
    INT 21H
    
    LEA DX,MR3
    MOV AH,9
    INT 21H
    
    LEA DX,MR3
    MOV AH,9
    INT 21H        
    
    LEA DX,E1
    MOV AH,9
    INT 21H
    
    LEA DX,AD9
    MOV AH,9
    INT 21H
    
    LEA DX,MR3
    MOV AH,9
    INT 21H    
    
    LEA DX,E2
    MOV AH,9
    INT 21H
    
    LEA DX,AD9
    MOV AH,9
    INT 21H
    
    LEA DX,MR1
    MOV AH,9
    INT 21H  
    
    LEA DX,MR1
    MOV AH,9
    INT 21H
    
    LEA DX,MR2
    MOV AH,9
    INT 21H
    
    LEA DX,MRx
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H   
     
    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48

;JUMP TO ANOTHER OPTION    
    CMP BH,1
    JE TOP
    
    CMP BH,2
    JE ENTRANCE
    
    CMP BH,3
    JE ENTRANCE
    
    CMP BH,4
    JE ENTRANCE
    
    CMP BH,5
    JE ENTRANCE
    
    CMP BH,6
    JE ENTRANCE
    
    CMP BH,7
    JE ENTRANCE
    
    CMP BH,8
    JE ENTRANCE
    
    CMP BH,9
    JE ENTRANCE        
    
    CMP BH,0
    JE EXIT    
    
  TOP:

;MAIN MENU  
    LEA DX,M1
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR2
    MOV AH,9
    INT 21H
       
    LEA DX,MR2
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR3
    MOV AH,9
    INT 21H

    LEA DX,DIR0
    MOV AH,9
    INT 21H
    
    LEA DX,AD8
    MOV AH,9
    INT 21H    
    
    LEA DX,M3
    MOV AH,9
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H
    
    LEA DX,M4
    MOV AH,9
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H
    
    
    LEA DX,M5
    MOV AH,9
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H 
    
    LEA DX,M5X
    MOV AH,9
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H
    
    LEA DX,MR1
    MOV AH,9
    INT 21H
    
    LEA DX,MR2
    MOV AH,9
    INT 21H
    
    LEA DX,MR2
    MOV AH,9
    INT 21H
    
;NEXT-STEP DECIDE
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H   
     
    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48

;JUMP TO ANOTHER OPTION    
    CMP BH,1
    JE TEXTBOOK
    
    CMP BH,2
    JE SCITEC
    
    CMP BH,3
    JE forLan
    
    CMP BH,4
    JE SEARCH
    
    CMP BH,5
    JE TOP
    
    CMP BH,6
    JE TOP
    
    CMP BH,7
    JE TOP
    
    CMP BH,8
    JE TOP
    
    CMP BH,9
    JE TOP        
    
    CMP BH,0
    JE ENTRANCE
    
            
  
  
    
;===============================================================     
;===============================================================     
  
 TEXTBOOK:
 
;TOP_BORDER 
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT 
    LEA DX,DIR1    
    MOV AH,9
    INT 21H
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
    
    LEA DX,M9    
    MOV AH,9
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H 
       
    LEA DX,M10  
    MOV AH,9
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H
    
    LEA DX,M11
    MOV AH,9       
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H 
    
        
    
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
;NEXT-STEP DECIDE

    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
;OPTION DECIDE    
    
    CMP AL,0
    JE TOP
       
    CMP AL,1
    JE calculus
    
    CMP AL,2
    JE discreteMath
        
    CMP AL,3
    JE Signal 
    
    CMP AL,4
    JE TEXTBOOK
    
    CMP AL,5
    JE TEXTBOOK
    
    CMP AL,6
    JE TEXTBOOK
    
    CMP AL,7
    JE TEXTBOOK
    
    CMP AL,8
    JE TEXTBOOK
    
    CMP AL,9
    JE TEXTBOOK

        
    
;===============================================================      
 
 calculus:
 ;TOP_BORDER 
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT
    LEA DX,DIR1a    
    MOV AH,9
    INT 21H
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
  
    LEA DX,A1    
    MOV AH,9
    INT 21H
    
    
    LEA DX,A2    
    MOV AH,9
    INT 21H
    
    LEA DX,A3    
    MOV AH,9
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H
    
    LEA DX,A4    
    MOV AH,9
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H
    
    LEA DX,A5    
    MOV AH,9
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H
     
  
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H

;NEXT-STEP DECIDE
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48            
           
;OPTION DECIDE    
    
    CMP AL,1
    JE calculus1
    
    CMP AL,2
    JE calculus2
        
    CMP AL,3
    JE calculus3
        
    CMP AL,0
    JE TEXTBOOK
    
    CMP AL,4
    JE calculus 
    
    CMP AL,5
    JE calculus
    
    CMP AL,6
    JE calculus
    
    CMP AL,7
    JE calculus
    
    CMP AL,8
    JE calculus
    
    CMP AL,9
    JE calculus 

       
 calculus1:
 ;TOP_BORDER 
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT 

    LEA DX,DIR1a1    
    MOV AH,9
    INT 21H
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
  
    LEA DX,PURCHASE1    
    MOV AH,9
    INT 21H
    
    LEA DX,PURCHASE2    
    MOV AH,9
    INT 21H
    
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H

;NEXT-STEP DECIDE
       
    MOV AH,1
    INT 21H
    SUB AL,48            
           
;OPTION DECIDE    
    
    CMP AL,1
    JE THANKS
    
    CMP AL,0
    JE calculus
    
    CMP AL,2
    JE calculus1
    
    CMP AL,3
    JE calculus
    
    CMP AL,4
    JE calculus
    
    CMP AL,5
    JE calculus
    
    CMP AL,6
    JE calculus
    
    CMP AL,7
    JE calculus
    
    
   CMP AL,8
    JE calculus
    
    CMP AL,9
    JE calculus 

    
    

calculus2:
 ;TOP_BORDER 
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT

    LEA DX,DIR1a2    
    MOV AH,9
    INT 21H
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
  
    LEA DX,PURCHASE1    
    MOV AH,9
    INT 21H
    
    LEA DX,PURCHASE2    
    MOV AH,9
    INT 21H
    
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H

;NEXT-STEP DECIDE
       
    MOV AH,1
    INT 21H
    SUB AL,48            
           
;OPTION DECIDE    
    
    CMP AL,1
    JE THANKS
    
    CMP AL,0
    JE calculus
    
    CMP AL,2
    JE calculus2
    
    CMP AL,3
    JE calculus
    
    CMP AL,4
    JE calculus
    
    CMP AL,5
    JE calculus
    
    CMP AL,6
    JE calculus
    
    CMP AL,7
    JE calculus
    
    CMP AL,8
    JE calculus
    
    CMP AL,9
    JE calculus
   
    
 calculus3:
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT

    LEA DX,DIR1a3    
    MOV AH,9
    INT 21H
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
  
    LEA DX,PURCHASE1    
    MOV AH,9
    INT 21H
    
    LEA DX,PURCHASE2    
    MOV AH,9
    INT 21H
    
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H

;NEXT-STEP DECIDE
       
    MOV AH,1
    INT 21H
    SUB AL,48            
           
;OPTION DECIDE    
    
    CMP AL,1
    JE THANKS
    
    CMP AL,0
    JE calculus
    
    CMP AL,2
    JE calculus3 
    
    CMP AL,3
    JE calculus3
    
    CMP AL,4
    JE calculus3
    
    CMP AL,5
    JE calculus3
    
    CMP AL,6
    JE calculus3
    
    CMP AL,7
    JE calculus3
    
    CMP AL,8
    JE calculus3
    
    CMP AL,9
    JE calculus3
    
;===============================================================  

 discreteMath:
 ;TOP_BORDER 
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT
    LEA DX,DIR1b    
    MOV AH,9
    INT 21H
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
  
    LEA DX,A1    
    MOV AH,9
    INT 21H
    
    LEA DX,A2    
    MOV AH,9
    INT 21H
    
    LEA DX,A6    
    MOV AH,9
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H
    
    LEA DX,A7    
    MOV AH,9
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H
    
    LEA DX,A8    
    MOV AH,9
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H
     
  
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H

;NEXT-STEP DECIDE
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48            
           
;OPTION DECIDE    
    
    CMP AL,1
    JE discreteMath1
    
    CMP AL,2
    JE discreteMath2
        
    CMP AL,3
    JE discreteMath3
        
    CMP AL,0
    JE TEXTBOOK
    
    CMP AL,4
    JE discreteMath
    
    CMP AL,5
    JE discreteMath
    
    CMP AL,6
    JE discreteMath
    
    CMP AL,7
    JE discreteMath
    
    
    CMP AL,8
    JE discreteMath
    
    CMP AL,9
    JE discreteMath  

       
 discreteMath1:
 ;TOP_BORDER 
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT 

    LEA DX,DIR1b1    
    MOV AH,9
    INT 21H
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
  
    LEA DX,PURCHASE1    
    MOV AH,9
    INT 21H
    
    LEA DX,PURCHASE2    
    MOV AH,9
    INT 21H
    
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H

;NEXT-STEP DECIDE
       
    MOV AH,1
    INT 21H
    SUB AL,48            
           
;OPTION DECIDE    
    
    CMP AL,1
    JE THANKS
    
    CMP AL,0
    JE discreteMath
    
    CMP AL,2
    JE discreteMath1
    
    CMP AL,3
    JE discreteMath1
    
    CMP AL,4
    JE discreteMath1
    
    CMP AL,5
    JE discreteMath1
    
    
    CMP AL,6
    JE discreteMath1
    
    CMP AL,7
    JE discreteMath1
    
    CMP AL,8
    JE discreteMath1
    
    CMP AL,9
    JE discreteMath1 

    
    

 discreteMath2:
 ;TOP_BORDER 
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT

    LEA DX,DIR1b2    
    MOV AH,9
    INT 21H
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
  
    LEA DX,PURCHASE1    
    MOV AH,9
    INT 21H
    
    LEA DX,PURCHASE2    
    MOV AH,9
    INT 21H
    
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H

;NEXT-STEP DECIDE
       
    MOV AH,1
    INT 21H
    SUB AL,48            
           
;OPTION DECIDE    
    
    CMP AL,1
    JE THANKS
    
    CMP AL,0
    JE discreteMath
    
    CMP AL,2
    JE discreteMath2
    
    CMP AL,3
    JE discreteMath2
    
    CMP AL,4
    JE discreteMath2
    
    CMP AL,5
    JE discreteMath2
    
    CMP AL,6
    JE discreteMath2
    
    CMP AL,7
    JE discreteMath2
    
    CMP AL,8
    JE discreteMath2
    
    CMP AL,9
    JE discreteMath2
   
    
 discreteMath3:
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT

    LEA DX,DIR1b3    
    MOV AH,9
    INT 21H
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
  
    LEA DX,PURCHASE1    
    MOV AH,9
    INT 21H
    
    LEA DX,PURCHASE2    
    MOV AH,9
    INT 21H
    
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H

;NEXT-STEP DECIDE
       
    MOV AH,1
    INT 21H
    SUB AL,48            
           
;OPTION DECIDE    
    
    CMP AL,1
    JE THANKS
    
    CMP AL,0
    JE discreteMath
    
    CMP AL,2
    JE discreteMath3
    
    CMP AL,3
    JE discreteMath3
    
    CMP AL,4
    JE discreteMath3
    
    CMP AL,5
    JE discreteMath3
    
    CMP AL,6
    JE discreteMath3
    
    CMP AL,7
    JE discreteMath3
    
    
   CMP AL,8
    JE discreteMath3
    
    
    CMP AL,9
    JE discreteMath3 
    
    
;---------------------------------------------------------------


 Signal:
 ;TOP_BORDER 
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT
    LEA DX,DIR1c    
    MOV AH,9
    INT 21H
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
  
    LEA DX,A1    
    MOV AH,9
    INT 21H
    
    LEA DX,A2    
    MOV AH,9
    INT 21H
    
    LEA DX,A9    
    MOV AH,9
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H
    
    LEA DX,A10    
    MOV AH,9
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H
    
    LEA DX,A11    
    MOV AH,9
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H
     
  
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H

;NEXT-STEP DECIDE
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48            
           
;OPTION DECIDE    
    
    CMP AL,1
    JE Signal1
    
    CMP AL,2
    JE Signal2
        
    CMP AL,3
    JE Signal3
        
    CMP AL,0
    JE TEXTBOOK
    
    CMP AL,4
    JE Signal
    
    CMP AL,5
    JE Signal
    
    CMP AL,6
    JE Signal
    
    CMP AL,7
    JE Signal
    
    CMP AL,8
    JE Signal
            
    CMP AL,9
    JE Signal      

       
 Signal1:
 ;TOP_BORDER 
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT 

    LEA DX,DIR1c1    
    MOV AH,9
    INT 21H
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
  
    LEA DX,PURCHASE1    
    MOV AH,9
    INT 21H
    
    LEA DX,PURCHASE2    
    MOV AH,9
    INT 21H
    
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H

;NEXT-STEP DECIDE
       
    MOV AH,1
    INT 21H
    SUB AL,48            
           
;OPTION DECIDE    
    
    CMP AL,1
    JE THANKS
    
    CMP AL,0
    JE Signal
    
    CMP AL,2
    JE Signal1 

    CMP AL,3
    JE Signal1
    
    CMP AL,4
    JE Signal1
    
    CMP AL,5
    JE Signal1
    
    CMP AL,6
    JE Signal1
    
    CMP AL,7
    JE Signal1
           
    CMP AL,8
    JE Signal1
    
    CMP AL,9
    JE Signal1

 Signal2:
 ;TOP_BORDER 
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT

    LEA DX,DIR1c2    
    MOV AH,9
    INT 21H
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
  
    LEA DX,PURCHASE1    
    MOV AH,9
    INT 21H
    
    LEA DX,PURCHASE2    
    MOV AH,9
    INT 21H
    
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H

;NEXT-STEP DECIDE
       
    MOV AH,1
    INT 21H
    SUB AL,48            
           
;OPTION DECIDE    
    
    CMP AL,1
    JE THANKS
    
    CMP AL,0
    JE Signal
    
    CMP AL,2
    JE Signal2
    
    CMP AL,3
    JE Signal2
    
    CMP AL,4
    JE Signal2
    
    CMP AL,5
    JE Signal2
    
    CMP AL,6
    JE Signal2
    
    CMP AL,7
    JE Signal2
    
    CMP AL,8
    JE Signal2
    
    CMP AL,9
    JE Signal2
   
    
 Signal3:
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT

    LEA DX,DIR1c3    
    MOV AH,9
    INT 21H
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
  
    LEA DX,PURCHASE1    
    MOV AH,9
    INT 21H
    
    LEA DX,PURCHASE2    
    MOV AH,9
    INT 21H
    
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H

;NEXT-STEP DECIDE
       
    MOV AH,1
    INT 21H
    SUB AL,48            
           
;OPTION DECIDE    
    
    CMP AL,1
    JE THANKS
    
    CMP AL,0
    JE Signal
    
    CMP AL,2
    JE Signal3
    
    CMP AL,3
    JE Signal3
    
    CMP AL,4
    JE Signal3
    
    CMP AL,5
    JE Signal3
    
    CMP AL,6
    JE Signal3
    
    CMP AL,7
    JE Signal3
    
    CMP AL,8
    JE Signal3
    
    CMP AL,9
    JE Signal3
    
     
    
    
    
    
;===============================================================
;===============================================================

 SCITEC: 
 
;TOP_BORDER 
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT 
    LEA DX,DIR2    
    MOV AH,9
    INT 21H
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
    
    LEA DX,M12    
    MOV AH,9
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H 
       
    LEA DX,M13  
    MOV AH,9
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H
    
    LEA DX,M14
    MOV AH,9       
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H 
    
        
    
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
;NEXT-STEP DECIDE

    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
;OPTION DECIDE    
    
    CMP AL,0
    JE TOP
       
    CMP AL,1
    JE dataBase
    
    CMP AL,2
    JE asm
        
    CMP AL,3
    JE compArchi
    
    CMP AL,4
    JE SCITEC
    
    CMP AL,5
    JE SCITEC
    
    CMP AL,6
    JE SCITEC
    
    CMP AL,7
    JE SCITEC
    
    CMP AL,8
    JE SCITEC
    
    CMP AL,9
    JE SCITEC
       

    
    
    
    
;===============================================================      
 
 dataBase:
 ;TOP_BORDER 
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT
    LEA DX,DIR2a    
    MOV AH,9
    INT 21H
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
  
    LEA DX,A0    
    MOV AH,9
    INT 21H
    
    LEA DX,A2    
    MOV AH,9
    INT 21H
    
    LEA DX,A12    
    MOV AH,9
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H
    
    LEA DX,A13    
    MOV AH,9
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H
     
  
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H

;NEXT-STEP DECIDE
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48            
           
;OPTION DECIDE    
    
    CMP AL,1
    JE dataBase1
    
    CMP AL,2
    JE dataBase2
              
    CMP AL,0
    JE SCITEC
    
    CMP AL,3
    JE dataBase
    
    CMP AL,4
    JE dataBase
    
    CMP AL,5
    JE dataBase
    
    CMP AL,6
    JE dataBase
    
    CMP AL,7
    JE dataBase
    
    CMP AL,8
    JE dataBase
    
    CMP AL,9
    JE dataBase
    
     

       
 dataBase1:
 ;TOP_BORDER 
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT 

    LEA DX,DIR2a1    
    MOV AH,9
    INT 21H
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
  
    LEA DX,PURCHASE1    
    MOV AH,9
    INT 21H
    
    LEA DX,PURCHASE2    
    MOV AH,9
    INT 21H
    
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H

;NEXT-STEP DECIDE
       
    MOV AH,1
    INT 21H
    SUB AL,48            
           
;OPTION DECIDE    
    
    CMP AL,1
    JE THANKS
    
    CMP AL,0
    JE dataBase
    
    CMP AL,2
    JE dataBase1
    
    CMP AL,3
    JE dataBase1
    
    CMP AL,4
    JE dataBase1
    
    CMP AL,5
    JE dataBase1
    
    CMP AL,6
    JE dataBase1
    
    CMP AL,7
    JE dataBase1
    
    CMP AL,8
    JE dataBase1
    
    CMP AL,9
    JE dataBase1 

    
    

 dataBase2:
 ;TOP_BORDER 
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT

    LEA DX,DIR2a2    
    MOV AH,9
    INT 21H
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
  
    LEA DX,PURCHASE1    
    MOV AH,9
    INT 21H
    
    LEA DX,PURCHASE2    
    MOV AH,9
    INT 21H
    
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H

;NEXT-STEP DECIDE
       
    MOV AH,1
    INT 21H
    SUB AL,48            
           
;OPTION DECIDE    
    
    CMP AL,1
    JE THANKS
    
    CMP AL,0
    JE dataBase
    
    CMP AL,2
    JE dataBase2
    
    CMP AL,3
    JE dataBase2
    
    CMP AL,4
    JE dataBase2
    
    CMP AL,5
    JE dataBase2
    
    CMP AL,6
    JE dataBase2
    
    CMP AL,7
    JE dataBase2
    
    CMP AL,8
    JE dataBase2
    
    CMP AL,9
    JE dataBase2
   
    
    
;===============================================================  

 asm:
 ;TOP_BORDER 
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT
    LEA DX,DIR2b    
    MOV AH,9
    INT 21H
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
  
    LEA DX,A1    
    MOV AH,9
    INT 21H
    
    LEA DX,A2    
    MOV AH,9
    INT 21H
    
    LEA DX,A14    
    MOV AH,9
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H
    
    LEA DX,A15    
    MOV AH,9
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H
    
    LEA DX,A16    
    MOV AH,9
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H
     
  
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H

;NEXT-STEP DECIDE
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48            
           
;OPTION DECIDE    
    
    CMP AL,1
    JE asm1
    
    CMP AL,2
    JE asm2
        
    CMP AL,3
    JE asm3
        
    CMP AL,0
    JE SCITEC
    
    CMP AL,4
    JE asm
    
    CMP AL,5
    JE asm
    
    CMP AL,6
    JE asm
    
    CMP AL,7
    JE asm
    
    CMP AL,8
    JE asm
    
    CMP AL,9
    JE asm  

       
 asm1:
 ;TOP_BORDER 
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT 

    LEA DX,DIR2b1    
    MOV AH,9
    INT 21H 
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
  
    LEA DX,PURCHASE1    
    MOV AH,9
    INT 21H
    
    LEA DX,PURCHASE2    
    MOV AH,9
    INT 21H
    
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H

;NEXT-STEP DECIDE
       
    MOV AH,1
    INT 21H
    SUB AL,48            
           
;OPTION DECIDE    
    
    CMP AL,1
    JE THANKS
    
    CMP AL,0
    JE asm
    
    CMP AL,2
    JE asm1
    
    CMP AL,3
    JE asm1
    
    CMP AL,4
    JE asm1
    
    CMP AL,5
    JE asm1
    
    CMP AL,6
    JE asm1
    
    CMP AL,7
    JE asm1
    
    CMP AL,8
    JE asm1
    
    CMP AL,9
    JE asm1 

    
    

 asm2:
 ;TOP_BORDER 
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT

    LEA DX,DIR2b2    
    MOV AH,9
    INT 21H
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
  
    LEA DX,PURCHASE1    
    MOV AH,9
    INT 21H
    
    LEA DX,PURCHASE2    
    MOV AH,9
    INT 21H
    
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H

;NEXT-STEP DECIDE
       
    MOV AH,1
    INT 21H
    SUB AL,48            
           
;OPTION DECIDE    
    
    CMP AL,1
    JE THANKS
    
    CMP AL,0
    JE asm
    
    CMP AL,2
    JE asm2
    
    CMP AL,3
    JE asm2
    
    CMP AL,4
    JE asm2
    
    CMP AL,5
    JE asm2
    
    CMP AL,6
    JE asm2
    
    CMP AL,7
    JE asm2
    
    CMP AL,8
    JE asm2
    
    CMP AL,9
    JE asm2
    
   
    
 asm3:
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT

    LEA DX,DIR2b3    
    MOV AH,9
    INT 21H 
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
  
    LEA DX,PURCHASE1    
    MOV AH,9
    INT 21H
    
    LEA DX,PURCHASE2    
    MOV AH,9
    INT 21H
    
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H

;NEXT-STEP DECIDE
       
    MOV AH,1
    INT 21H
    SUB AL,48            
           
;OPTION DECIDE    
    
    CMP AL,1
    JE THANKS
    
    CMP AL,0
    JE asm
    
    CMP AL,2
    JE asm3
    
    CMP AL,3
    JE asm3
    
    CMP AL,4
    JE asm3
    
    CMP AL,5
    JE asm3
    
    
    CMP AL,6
    JE asm3
    
    CMP AL,7
    JE asm3
    
    CMP AL,8
    JE asm3
    
    CMP AL,9
    JE asm3 
    
    
;---------------------------------------------------------------


 compArchi:
 ;TOP_BORDER 
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT
    LEA DX,DIR2c    
    MOV AH,9
    INT 21H
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
  
    LEA DX,A0    
    MOV AH,9
    INT 21H
    
    LEA DX,A2    
    MOV AH,9
    INT 21H
    
    LEA DX,A17    
    MOV AH,9
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H
    
    LEA DX,A18    
    MOV AH,9
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H
         
  
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H

;NEXT-STEP DECIDE
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48            
           
;OPTION DECIDE    
    
    CMP AL,1
    JE compArchi1
    
    CMP AL,2
    JE compArchi2
    
    CMP AL,3
    JE compArchi
    
    CMP AL,4
    JE compArchi
    
    CMP AL,5
    JE compArchi
    
    CMP AL,6
    JE compArchi
    
    CMP AL,7
    JE compArchi
    
    CMP AL,8
    JE compArchi
    
    CMP AL,9
    JE compArchi
        
        
    CMP AL,0
    JE SCITEC  

       
 compArchi1:
 ;TOP_BORDER 
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT 

    LEA DX,DIR2c1    
    MOV AH,9
    INT 21H 
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
  
    LEA DX,PURCHASE1    
    MOV AH,9
    INT 21H
    
    LEA DX,PURCHASE2    
    MOV AH,9
    INT 21H
    
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H

;NEXT-STEP DECIDE
       
    MOV AH,1
    INT 21H
    SUB AL,48            
           
;OPTION DECIDE    
    
    CMP AL,1
    JE THANKS
    
    CMP AL,0
    JE compArchi
    
    CMP AL,2
    JE compArchi1
    
    CMP AL,3
    JE compArchi1
    
    CMP AL,4
    JE compArchi1
    
    CMP AL,5
    JE compArchi1
    
    CMP AL,6
    JE compArchi1
    
    CMP AL,7
    JE compArchi1
    
    CMP AL,8
    JE compArchi1
    
    CMP AL,9
    JE compArchi1 

    
    

 compArchi2:
 ;TOP_BORDER 
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT

    LEA DX,DIR2c2    
    MOV AH,9
    INT 21H 
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
  
    LEA DX,PURCHASE1    
    MOV AH,9
    INT 21H
    
    LEA DX,PURCHASE2    
    MOV AH,9
    INT 21H
    
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H

;NEXT-STEP DECIDE
       
    MOV AH,1
    INT 21H
    SUB AL,48            
           
;OPTION DECIDE    
    
    CMP AL,1
    JE THANKS
    
    CMP AL,0
    JE compArchi
    
    CMP AL,2
    JE compArchi2
    
    CMP AL,3
    JE compArchi2
    
    CMP AL,4
    JE compArchi2
    
    CMP AL,5
    JE compArchi2
    
    CMP AL,6
    JE compArchi2
        
    CMP AL,7
    JE compArchi2
    
    CMP AL,8
    JE compArchi2
    
    CMP AL,9
    JE compArchi2

;===============================================================
;===============================================================   
 forLan: 
 
;TOP_BORDER 
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT 
    LEA DX,DIR3    
    MOV AH,9
    INT 21H 
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
    
    LEA DX,M15    
    MOV AH,9
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H 
       
    LEA DX,M16  
    MOV AH,9
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H
    
    LEA DX,M17
    MOV AH,9       
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H 
    
        
    
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
;NEXT-STEP DECIDE

    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
;OPTION DECIDE    
    
    CMP AL,0
    JE TOP
       
    CMP AL,1
    JE English
    
    CMP AL,2
    JE Vietnamese
        
    CMP AL,3
    JE chinese
    
    CMP AL,4
    JE forLan
    
    CMP AL,5
    JE forLan
    
    CMP AL,6
    JE forLan
    
    CMP AL,7
    JE forLan
    
    CMP AL,8
    JE forLan
    
    CMP AL,9
    JE forLan
        
   
    
;===============================================================      
 
 English:
 ;TOP_BORDER 
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT
    LEA DX,DIR3a    
    MOV AH,9
    INT 21H 
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
  
    LEA DX,A1    
    MOV AH,9
    INT 21H
    
    LEA DX,A2    
    MOV AH,9
    INT 21H
    
    LEA DX,A19    
    MOV AH,9
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H
    
    LEA DX,A20    
    MOV AH,9
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H 

    LEA DX,A21    
    MOV AH,9
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H    
     
  
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H

;NEXT-STEP DECIDE
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48            
           
;OPTION DECIDE    
    
    CMP AL,1
    JE English1
    
    CMP AL,2
    JE English2
    
    CMP AL,3
    JE English3    
              
    CMP AL,0
    JE forLan
    
    CMP AL,4
    JE English
    
    CMP AL,5
    JE English
    
    CMP AL,6
    JE English
    
    CMP AL,7
    JE English
    
    CMP AL,8
    JE English
    
    CMP AL,9
    JE English
             
       
 English1:
 ;TOP_BORDER 
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT 

    LEA DX,DIR3a1    
    MOV AH,9
    INT 21H   
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
  
    LEA DX,PURCHASE1    
    MOV AH,9
    INT 21H
    
    LEA DX,PURCHASE2    
    MOV AH,9
    INT 21H
    
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H

;NEXT-STEP DECIDE
       
    MOV AH,1
    INT 21H
    SUB AL,48            
           
;OPTION DECIDE    
    
    CMP AL,1
    JE THANKS
    
    CMP AL,0
    JE English
    
    CMP AL,2
    JE English1
    
    CMP AL,3
    JE English1
    
    CMP AL,4
    JE English1
    
    CMP AL,5
    JE English1
    
    CMP AL,6
    JE English1
    CMP AL,7
    JE English1
    
    CMP AL,8
    JE English1
    
    CMP AL,9
    JE English1 

    
    

 English2:
 ;TOP_BORDER 
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT

    LEA DX,DIR3a2    
    MOV AH,9
    INT 21H 
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
  
    LEA DX,PURCHASE1    
    MOV AH,9
    INT 21H
    
    LEA DX,PURCHASE2    
    MOV AH,9
    INT 21H
    
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H

;NEXT-STEP DECIDE
       
    MOV AH,1
    INT 21H
    SUB AL,48            
           
;OPTION DECIDE    
    
    CMP AL,1
    JE THANKS
    
    CMP AL,0
    JE English 
    

 English3:
 ;TOP_BORDER 
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT

    LEA DX,DIR3a3    
    MOV AH,9
    INT 21H   
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
  
    LEA DX,PURCHASE1    
    MOV AH,9
    INT 21H
    
    LEA DX,PURCHASE2    
    MOV AH,9
    INT 21H
    
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H

;NEXT-STEP DECIDE
       
    MOV AH,1
    INT 21H
    SUB AL,48            
           
;OPTION DECIDE    
    
    CMP AL,1
    JE THANKS
    
    CMP AL,0
    JE English
    
    CMP AL,2
    JE English3 
    
    CMP AL,3
    JE English3
    
    CMP AL,4
    JE English3
    
    CMP AL,5
    JE English3
    
    CMP AL,6
    JE English3
    
    CMP AL,7
    JE English3
    
    CMP AL,8
    JE English3
    
    CMP AL,9
    JE English3   
   
    
    
;===============================================================  

 Vietnamese:
 ;TOP_BORDER 
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT
    LEA DX,DIR3b    
    MOV AH,9
    INT 21H 
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
  
    LEA DX,A0    
    MOV AH,9
    INT 21H
    
    LEA DX,A2    
    MOV AH,9
    INT 21H
    
    LEA DX,A22    
    MOV AH,9
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H
    
    LEA DX,A23    
    MOV AH,9
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H
     
  
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H

;NEXT-STEP DECIDE
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48            
           
;OPTION DECIDE    
    
    CMP AL,1
    JE Vietnamese1
    
    CMP AL,2
    JE Vietnamese2
        
        
    CMP AL,0
    JE forLan  
    
    CMP AL,3
    JE Vietnamese
    
    CMP AL,4
    JE Vietnamese
    
    CMP AL,5
    JE Vietnamese
    
    CMP AL,6
    JE Vietnamese
    
    CMP AL,7
    JE Vietnamese
    
    CMP AL,8
    JE Vietnamese
    
    CMP AL,9
    JE Vietnamese
    
      

       
 Vietnamese1:
 ;TOP_BORDER 
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT 

    LEA DX,DIR3b1    
    MOV AH,9
    INT 21H   
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
  
    LEA DX,PURCHASE1    
    MOV AH,9
    INT 21H
    
    LEA DX,PURCHASE2    
    MOV AH,9
    INT 21H
    
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H

;NEXT-STEP DECIDE
       
    MOV AH,1
    INT 21H
    SUB AL,48            
           
;OPTION DECIDE    
    
    CMP AL,1
    JE THANKS
    
    CMP AL,0
    JE Vietnamese
    
    CMP AL,2
    JE Vietnamese1
    
    CMP AL,3
    JE Vietnamese1
    
    CMP AL,4
    JE Vietnamese1
    
    CMP AL,5
    JE Vietnamese1
    
    CMP AL,6
    JE Vietnamese1
    
    CMP AL,7
    JE Vietnamese1
    
    CMP AL,8
    JE Vietnamese1
    
    CMP AL,9
    JE Vietnamese1 

    
    

 Vietnamese2:
 ;TOP_BORDER 
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT

    LEA DX,DIR3b2    
    MOV AH,9
    INT 21H 
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
  
    LEA DX,PURCHASE1    
    MOV AH,9
    INT 21H
    
    LEA DX,PURCHASE2    
    MOV AH,9
    INT 21H
    
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H

;NEXT-STEP DECIDE
       
    MOV AH,1
    INT 21H
    SUB AL,48            
           
;OPTION DECIDE    
    
    CMP AL,1
    JE THANKS
    
    CMP AL,0
    JE Vietnamese
    
    CMP AL,2
    JE Vietnamese2
    
    CMP AL,3
    JE Vietnamese2
    
    CMP AL,4
    JE Vietnamese2
    
    CMP AL,5
    JE Vietnamese2
    
    CMP AL,6
    JE Vietnamese2
    
    CMP AL,7
    JE Vietnamese2
    
    CMP AL,8
    JE Vietnamese2
    
    CMP AL,9
    JE Vietnamese2
   
 
    
    
;---------------------------------------------------------------


 Chinese:
 ;TOP_BORDER 
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT
    LEA DX,DIR3c    
    MOV AH,9
    INT 21H 
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
  
    LEA DX,A0    
    MOV AH,9
    INT 21H
    
    LEA DX,A2    
    MOV AH,9
    INT 21H
    
    LEA DX,A24    
    MOV AH,9
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H
    
    LEA DX,A25    
    MOV AH,9
    INT 21H
    
    LEA DX,AD7
    MOV AH,9
    INT 21H
         
  
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H

;NEXT-STEP DECIDE
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48            
           
;OPTION DECIDE    
    
    CMP AL,1
    JE Chinese1
    
    CMP AL,2
    JE Chinese2
             
    CMP AL,0
    JE forLan 
    
    
    CMP AL,3
    JE Chinese
    
    CMP AL,4
    JE Chinese
    
    CMP AL,5
    JE Chinese
    
    CMP AL,6
    JE Chinese
    
    CMP AL,7
    JE Chinese
    
    CMP AL,8
    JE Chinese
    
    CMP AL,9
    JE Chinese 

       
 Chinese1:
 ;TOP_BORDER 
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT 

    LEA DX,DIR3c1    
    MOV AH,9
    INT 21H  
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
  
    LEA DX,PURCHASE1    
    MOV AH,9
    INT 21H
    
    LEA DX,PURCHASE2    
    MOV AH,9
    INT 21H
    
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H

;NEXT-STEP DECIDE
       
    MOV AH,1
    INT 21H
    SUB AL,48            
           
;OPTION DECIDE    
    
    CMP AL,1
    JE THANKS
    
    CMP AL,0
    JE Chinese
    
    CMP AL,2
    JE Chinese1
    
    CMP AL,3
    JE Chinese1
    
    CMP AL,4
    JE Chinese1
    
    CMP AL,5
    JE Chinese1
    
    CMP AL,6
    JE Chinese1
    
    CMP AL,7
    JE Chinese1
    
    CMP AL,8
    JE Chinese1
    
    CMP AL,9
    JE Chinese1 

    
    

 Chinese2:
 ;TOP_BORDER 
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT

    LEA DX,DIR3c2    
    MOV AH,9
    INT 21H   
    
    LEA DX,AD8
    MOV AH,9
    INT 21H
  
    LEA DX,PURCHASE1    
    MOV AH,9
    INT 21H
    
    LEA DX,PURCHASE2    
    MOV AH,9
    INT 21H
    
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H

;NEXT-STEP DECIDE
       
    MOV AH,1
    INT 21H
    SUB AL,48            
           
;OPTION DECIDE    
    
    CMP AL,1
    JE THANKS
    
    CMP AL,0
    JE Chinese 
    
    CMP AL,2
    JE Chinese2
    
    CMP AL,3
    JE Chinese2
    
    CMP AL,4
    JE Chinese2
    
    CMP AL,5
    JE Chinese2
    
    CMP AL,6
    JE Chinese2
    
    CMP AL,7
    JE Chinese2
    
    CMP AL,8
    JE Chinese2
    
    CMP AL,9
    JE Chinese2    
                       
               
;===============================================================
;=============================================================== 

 SEARCH:
  
    LEA DX,M1
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ 
    MOV AH,9
    INT 21H               
    
    LEA DX,MRx
    MOV AH,9
    INT 21H
       
    LEA DX,MR2
    MOV AH,9
    INT 21H     
    
    LEA DX,AD0
    MOV AH,9
    INT 21H
    
    LEA DX,AD5
    MOV AH,9
    INT 21H
    
    LEA DX,AD1
    MOV AH,9
    INT 21H
    
    LEA DX,AD5
    MOV AH,9
    INT 21H
    
    LEA DX,AD2
    MOV AH,9
    INT 21H
    
    LEA DX,AD6
    MOV AH,9
    INT 21H
    
    LEA DX,AD5
    MOV AH,9
    INT 21H
    
    LEA DX,AD3
    MOV AH,9
    INT 21H
    
    LEA DX,AD6
    MOV AH,9
    INT 21H
    
    LEA DX,AD5
    MOV AH,9
    INT 21H
    
    LEA DX,AD4
    MOV AH,9
    INT 21H
    
    
    LEA DX,AD5
    MOV AH,9
    INT 21H 
    
    LEA DX,MRx
    MOV AH,9
    INT 21H
    
    LEA DX,M60
    MOV AH,9
    INT 21H  
    
    LEA DX,M2
    MOV AH,9
    INT 21H   
     
    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48

;JUMP TO ANOTHER OPTION    
    CMP BH,1
    JE calculus
    
    CMP BH,2
    JE dataBase
    
    CMP BH,3
    JE English
    
    CMP BH,4
    JE discreteMath
    
    CMP BH,5
    JE asm
    
    CMP BH,6
    JE Vietnamese
    
    CMP BH,7
    JE Signal
    
    CMP BH,8
    JE compArchi
    
    CMP BH,9
    JE Chinese        
    
    CMP BH,0
    JE TOP


 THANKS:

 ;TOP_BORDER 
    LEA DX,M8  
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
;CONTENT

    LEA DX,THANKYOU1
    MOV AH,9
    INT 21H
     
    LEA DX,THANKYOU2
    MOV AH,9
    INT 21H
             
;BOTTOM_BORDER    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H       
     
 EXIT:
;END PROGRAM    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN    
