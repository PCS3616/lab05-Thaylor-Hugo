JP START

@ /200
; Test 1
START       LD N1
            MM F_ARG_N
            SC FATORIAL
            LD F_RESULT
            MM RES1

; Test 2
            LD N2
            MM F_ARG_N
            SC FATORIAL
            LD F_RESULT
            MM RES2

; Test 3
            LD N3
            MM F_ARG_N
            SC FATORIAL
            LD F_RESULT
            MM RES3

; Test 4
            LD N4
            MM F_ARG_N
            SC FATORIAL
            LD F_RESULT
            MM RES4

; Test principal
            LD N
            MM F_ARG_N
            SC FATORIAL
            LD F_RESULT
            MM RES

END         HM /000

; Dados de Teste
@ /E00
N1          K /0007
RES1        K /0000

N2          K /0008
RES2        K /0000

N3          K /0009
RES3        K /0000

N4          K /0000
RES4        K /0000

@ /100
N           K /0000
RES         K /0000

; Subrotina fatorial
@ /F00
FATORIAL    K /0000
            LV /001
            MM S_ARG_Y
            MM F_RESULT
            LD F_ARG_N
            JZ F_RETURN
            MM F_RESULT
            MM S_ARG_X
LOOP        SC SUBTRACAO
            JZ F_RETURN
            ML F_RESULT
            MM F_RESULT
            LD S_RESULT
            MM S_ARG_X
            JP LOOP
F_RETURN    RS FATORIAL
F_ARG_N     K =0
F_RESULT    K =0

; Subrotina subtracao
@ /F30
SUBTRACAO   K /0000
            LD S_ARG_X
            SB S_ARG_Y
            MM S_RESULT
            RS SUBTRACAO
S_ARG_X     K =0
S_ARG_Y     K =0
S_RESULT    K =0