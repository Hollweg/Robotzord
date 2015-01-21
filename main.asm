
_main:

;main.c,37 :: 		void main() {
;main.c,44 :: 		reset = 0;
	BCF         _reset+0, BitPos(_reset+0) 
;main.c,47 :: 		TRISB = 0b00000000;
	CLRF        TRISB+0 
;main.c,48 :: 		TRISC = 0b00000011;              //ENTRADA BOTÃO OK - OK - C0,C1 ----------  ENTRADA ENCODER : C4 ES ,C5 DR
	MOVLW       3
	MOVWF       TRISC+0 
;main.c,49 :: 		TRISD = 0b00001111;              //SAIDA PONTE H: D4,D5,D6,D7   ----------  D0,D1,D2,D3 - Botoes de Entrada - MENU
	MOVLW       15
	MOVWF       TRISD+0 
;main.c,51 :: 		PORTB = 0b00000000;
	CLRF        PORTB+0 
;main.c,52 :: 		PORTC = 0b00000000;
	CLRF        PORTC+0 
;main.c,53 :: 		PORTD = 0b00000000;
	CLRF        PORTD+0 
;main.c,55 :: 		ANSELA = 0;
	CLRF        ANSELA+0 
;main.c,56 :: 		ANSELB = 0;
	CLRF        ANSELB+0 
;main.c,57 :: 		ANSELC = 0;
	CLRF        ANSELC+0 
;main.c,58 :: 		ANSELD = 0;
	CLRF        ANSELD+0 
;main.c,60 :: 		Lcd_Init();                       //Inicia Display
	CALL        _Lcd_Init+0, 0
;main.c,61 :: 		Lcd_Cmd(_LCD_CLEAR);              //Limpa Display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;main.c,62 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);         //Desliga cursor display
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;main.c,63 :: 		delay_ms(20);
	MOVLW       130
	MOVWF       R12, 0
	MOVLW       221
	MOVWF       R13, 0
L_main0:
	DECFSZ      R13, 1, 1
	BRA         L_main0
	DECFSZ      R12, 1, 1
	BRA         L_main0
	NOP
	NOP
;main.c,65 :: 		instrucoes:
___main_instrucoes:
;main.c,67 :: 		Lcd_Cmd(_LCD_CLEAR);              //Limpa Display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;main.c,68 :: 		lcd_out(1,4, "Robozord");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr1_main+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr1_main+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;main.c,69 :: 		lcd_out(2,1, "Engenharia UFSM");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr2_main+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr2_main+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;main.c,71 :: 		for (i = 0; i<5; i++){
	CLRF        main_i_L0+0 
L_main1:
	MOVLW       128
	XORWF       main_i_L0+0, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       5
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main2
;main.c,72 :: 		delay_ms (500);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       175
	MOVWF       R12, 0
	MOVLW       182
	MOVWF       R13, 0
L_main4:
	DECFSZ      R13, 1, 1
	BRA         L_main4
	DECFSZ      R12, 1, 1
	BRA         L_main4
	DECFSZ      R11, 1, 1
	BRA         L_main4
	NOP
;main.c,71 :: 		for (i = 0; i<5; i++){
	INCF        main_i_L0+0, 1 
;main.c,73 :: 		}
	GOTO        L_main1
L_main2:
;main.c,74 :: 		executa_instrucoes();
	CALL        _executa_instrucoes+0, 0
;main.c,76 :: 		goto instrucoes;
	GOTO        ___main_instrucoes
;main.c,78 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
