JP START

@ /200
START       SC QUADRADO
            HM =0

@ /300
QUADRADO    k =0
            LV =0
            MM RESULT
            MM N
            JZ ARMAZ
            ; Checa se n < 64
LOOP        LV =64
            SB N
            JZ END_Q
            ; Função resul = result + (2*n-1)
            LV =2
            ML N
            SB CONST_1
            AD RESULT
            MM RESULT
ARMAZ       SC ARMAZENA
            SC INCREMENTA
            JP LOOP
END_Q       RS QUADRADO

@ /400
ARMAZENA    K =0 ; Armazena o valor do result em 0x1yy onde yy=2*n
            LV =2
            ML N
            AD INSTR_MM
            MM GUARDA
            LD RESULT
GUARDA      k =0
            RS ARMAZENA

@ /500
INCREMENTA  k =0
            LV =1
            AD N
            MM N
            RS INCREMENTA

; Variaveis
@ /600
N           K =0
RESULT      K =0
CONST_1     k =1
INSTR_MM    K /9100 ; Parte superior da instrucao MM no conjunto de enderecos 0x100