.MODEL SMALL
.STACK 100H
.DATA

    S DW ?
.CODE
    MAIN PROC
        
        MOV AX, @DATA 
        MOV DS, AX
        
        MOV AX, 1
        MOV BX, 1
        MOV CX, 8
        
        FNSLOOP:
        ADD AX, BX
        MOV DX, AX 
        MOV AX, BX
        MOV BX, DX
        LOOP FNSLOOP  
        
        SUB BX, 1
        MOV [S], BX
        
        
        MOV AH, 4CH
        INT 21H
        
        
        
        
        
    MAIN ENDP