JP MAIN

; Variaveis
@ /100
X           k =0
Y           k =0
RESULT      k =0
CONST_16    k =16
CONST_3030  k /3030
CONST_A000  k /A000
CONST_A     k /000A
CONST_100   k /0100

; Main
@ /200
MAIN        GD /000
            SB CONST_3030
            mm X
            GD =0 ; Ignora os espacos entre numeros
            GD =0
            SB CONST_3030
            mm Y
            LD X
            AD Y
            MM RESULT
            SC IS_A
            LD RESULT
            AD CONST_3030
            MM RESULT
            PD /100
            HM =0

; Checa se digito menos significativo >= A e corrige se for
@ /300
IS_A        k =0
            LD RESULT
            ML CONST_16
            ML CONST_16
            ML CONST_16
            SB CONST_A000
            JN END_IS_A     ; se digito menos significativo >= A faz as contas
            LD RESULT
            SB CONST_A
            AD CONST_100
            MM RESULT
END_IS_A    RS IS_A
