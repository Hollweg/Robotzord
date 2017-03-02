
_quadrado:

;Instrucoes.c,20 :: 		void quadrado(){
;Instrucoes.c,24 :: 		for (i=0; i<4; i++)
	CLRF        quadrado_i_L0+0 
L_quadrado0:
	MOVLW       128
	XORWF       quadrado_i_L0+0, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       4
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_quadrado1
;Instrucoes.c,26 :: 		for (j=0; j<600; j++)
	CLRF        quadrado_j_L0+0 
L_quadrado3:
	MOVLW       128
	BTFSC       quadrado_j_L0+0, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	XORLW       2
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__quadrado133
	MOVLW       88
	SUBWF       quadrado_j_L0+0, 0 
L__quadrado133:
	BTFSC       STATUS+0, 0 
	GOTO        L_quadrado4
;Instrucoes.c,28 :: 		portd = 0b10100000;
	MOVLW       160
	MOVWF       PORTD+0 
;Instrucoes.c,29 :: 		delay_ms(50);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       69
	MOVWF       R12, 0
	MOVLW       169
	MOVWF       R13, 0
L_quadrado6:
	DECFSZ      R13, 1, 1
	BRA         L_quadrado6
	DECFSZ      R12, 1, 1
	BRA         L_quadrado6
	DECFSZ      R11, 1, 1
	BRA         L_quadrado6
	NOP
	NOP
;Instrucoes.c,26 :: 		for (j=0; j<600; j++)
	INCF        quadrado_j_L0+0, 1 
;Instrucoes.c,30 :: 		}
	GOTO        L_quadrado3
L_quadrado4:
;Instrucoes.c,32 :: 		for (k=0; k<680; k++)
	CLRF        quadrado_k_L0+0 
L_quadrado7:
	MOVLW       128
	BTFSC       quadrado_k_L0+0, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	XORLW       2
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__quadrado134
	MOVLW       168
	SUBWF       quadrado_k_L0+0, 0 
L__quadrado134:
	BTFSC       STATUS+0, 0 
	GOTO        L_quadrado8
;Instrucoes.c,34 :: 		portd = 0b10010000;
	MOVLW       144
	MOVWF       PORTD+0 
;Instrucoes.c,35 :: 		delay_ms(50);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       69
	MOVWF       R12, 0
	MOVLW       169
	MOVWF       R13, 0
L_quadrado10:
	DECFSZ      R13, 1, 1
	BRA         L_quadrado10
	DECFSZ      R12, 1, 1
	BRA         L_quadrado10
	DECFSZ      R11, 1, 1
	BRA         L_quadrado10
	NOP
	NOP
;Instrucoes.c,32 :: 		for (k=0; k<680; k++)
	INCF        quadrado_k_L0+0, 1 
;Instrucoes.c,36 :: 		}
	GOTO        L_quadrado7
L_quadrado8:
;Instrucoes.c,24 :: 		for (i=0; i<4; i++)
	INCF        quadrado_i_L0+0, 1 
;Instrucoes.c,38 :: 		}//~~
	GOTO        L_quadrado0
L_quadrado1:
;Instrucoes.c,39 :: 		}
L_end_quadrado:
	RETURN      0
; end of _quadrado

_triangulo:

;Instrucoes.c,54 :: 		void triangulo(){
;Instrucoes.c,58 :: 		for (i = 0; i<500; i++)
	CLRF        triangulo_i_L0+0 
L_triangulo11:
	MOVLW       128
	BTFSC       triangulo_i_L0+0, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	XORLW       1
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__triangulo136
	MOVLW       244
	SUBWF       triangulo_i_L0+0, 0 
L__triangulo136:
	BTFSC       STATUS+0, 0 
	GOTO        L_triangulo12
;Instrucoes.c,60 :: 		portd = 0b10100000;
	MOVLW       160
	MOVWF       PORTD+0 
;Instrucoes.c,61 :: 		delay_ms(10);
	MOVLW       65
	MOVWF       R12, 0
	MOVLW       238
	MOVWF       R13, 0
L_triangulo14:
	DECFSZ      R13, 1, 1
	BRA         L_triangulo14
	DECFSZ      R12, 1, 1
	BRA         L_triangulo14
	NOP
;Instrucoes.c,58 :: 		for (i = 0; i<500; i++)
	INCF        triangulo_i_L0+0, 1 
;Instrucoes.c,62 :: 		}
	GOTO        L_triangulo11
L_triangulo12:
;Instrucoes.c,63 :: 		for (i = 0; i<678; i++)
	CLRF        triangulo_i_L0+0 
L_triangulo15:
	MOVLW       128
	BTFSC       triangulo_i_L0+0, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	XORLW       2
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__triangulo137
	MOVLW       166
	SUBWF       triangulo_i_L0+0, 0 
L__triangulo137:
	BTFSC       STATUS+0, 0 
	GOTO        L_triangulo16
;Instrucoes.c,65 :: 		portd = 0b10010000;
	MOVLW       144
	MOVWF       PORTD+0 
;Instrucoes.c,66 :: 		delay_ms(10);
	MOVLW       65
	MOVWF       R12, 0
	MOVLW       238
	MOVWF       R13, 0
L_triangulo18:
	DECFSZ      R13, 1, 1
	BRA         L_triangulo18
	DECFSZ      R12, 1, 1
	BRA         L_triangulo18
	NOP
;Instrucoes.c,63 :: 		for (i = 0; i<678; i++)
	INCF        triangulo_i_L0+0, 1 
;Instrucoes.c,67 :: 		}
	GOTO        L_triangulo15
L_triangulo16:
;Instrucoes.c,69 :: 		for (i = 0; i<500; i++)
	CLRF        triangulo_i_L0+0 
L_triangulo19:
	MOVLW       128
	BTFSC       triangulo_i_L0+0, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	XORLW       1
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__triangulo138
	MOVLW       244
	SUBWF       triangulo_i_L0+0, 0 
L__triangulo138:
	BTFSC       STATUS+0, 0 
	GOTO        L_triangulo20
;Instrucoes.c,71 :: 		portd = 0b10100000;
	MOVLW       160
	MOVWF       PORTD+0 
;Instrucoes.c,72 :: 		delay_ms(10);
	MOVLW       65
	MOVWF       R12, 0
	MOVLW       238
	MOVWF       R13, 0
L_triangulo22:
	DECFSZ      R13, 1, 1
	BRA         L_triangulo22
	DECFSZ      R12, 1, 1
	BRA         L_triangulo22
	NOP
;Instrucoes.c,69 :: 		for (i = 0; i<500; i++)
	INCF        triangulo_i_L0+0, 1 
;Instrucoes.c,73 :: 		}
	GOTO        L_triangulo19
L_triangulo20:
;Instrucoes.c,75 :: 		}//~~
L_end_triangulo:
	RETURN      0
; end of _triangulo

_circulo:

;Instrucoes.c,91 :: 		void circulo(){
;Instrucoes.c,94 :: 		for (i=0; i<4; i++){
	CLRF        R1 
	CLRF        R2 
L_circulo23:
	MOVLW       128
	XORWF       R2, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__circulo140
	MOVLW       4
	SUBWF       R1, 0 
L__circulo140:
	BTFSC       STATUS+0, 0 
	GOTO        L_circulo24
;Instrucoes.c,96 :: 		for (j = 0; j<202; j++)
	CLRF        R3 
	CLRF        R4 
L_circulo26:
	MOVLW       128
	XORWF       R4, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__circulo141
	MOVLW       202
	SUBWF       R3, 0 
L__circulo141:
	BTFSC       STATUS+0, 0 
	GOTO        L_circulo27
;Instrucoes.c,98 :: 		portd = 0b10010000;
	MOVLW       144
	MOVWF       PORTD+0 
;Instrucoes.c,99 :: 		delay_ms(67);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       180
	MOVWF       R12, 0
	MOVLW       13
	MOVWF       R13, 0
L_circulo29:
	DECFSZ      R13, 1, 1
	BRA         L_circulo29
	DECFSZ      R12, 1, 1
	BRA         L_circulo29
	DECFSZ      R11, 1, 1
	BRA         L_circulo29
;Instrucoes.c,96 :: 		for (j = 0; j<202; j++)
	INFSNZ      R3, 1 
	INCF        R4, 1 
;Instrucoes.c,100 :: 		}
	GOTO        L_circulo26
L_circulo27:
;Instrucoes.c,102 :: 		for (k = 0; k<202; k++)
	CLRF        R5 
	CLRF        R6 
L_circulo30:
	MOVLW       128
	XORWF       R6, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__circulo142
	MOVLW       202
	SUBWF       R5, 0 
L__circulo142:
	BTFSC       STATUS+0, 0 
	GOTO        L_circulo31
;Instrucoes.c,104 :: 		portd = 0b01100000;
	MOVLW       96
	MOVWF       PORTD+0 
;Instrucoes.c,105 :: 		delay_ms(67);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       180
	MOVWF       R12, 0
	MOVLW       13
	MOVWF       R13, 0
L_circulo33:
	DECFSZ      R13, 1, 1
	BRA         L_circulo33
	DECFSZ      R12, 1, 1
	BRA         L_circulo33
	DECFSZ      R11, 1, 1
	BRA         L_circulo33
;Instrucoes.c,102 :: 		for (k = 0; k<202; k++)
	INFSNZ      R5, 1 
	INCF        R6, 1 
;Instrucoes.c,106 :: 		}
	GOTO        L_circulo30
L_circulo31:
;Instrucoes.c,94 :: 		for (i=0; i<4; i++){
	INFSNZ      R1, 1 
	INCF        R2, 1 
;Instrucoes.c,107 :: 		}
	GOTO        L_circulo23
L_circulo24:
;Instrucoes.c,108 :: 		}//~~
L_end_circulo:
	RETURN      0
; end of _circulo

_senoide:

;Instrucoes.c,124 :: 		void senoide(){
;Instrucoes.c,127 :: 		for (i=0; i<4; i++){
	CLRF        R1 
	CLRF        R2 
L_senoide34:
	MOVLW       128
	XORWF       R2, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__senoide144
	MOVLW       4
	SUBWF       R1, 0 
L__senoide144:
	BTFSC       STATUS+0, 0 
	GOTO        L_senoide35
;Instrucoes.c,129 :: 		portd = 0b10100000;
	MOVLW       160
	MOVWF       PORTD+0 
;Instrucoes.c,131 :: 		for(j = 0; j<300; j++)
	CLRF        R3 
	CLRF        R4 
L_senoide37:
	MOVLW       128
	XORWF       R4, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       1
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__senoide145
	MOVLW       44
	SUBWF       R3, 0 
L__senoide145:
	BTFSC       STATUS+0, 0 
	GOTO        L_senoide38
;Instrucoes.c,133 :: 		delay_ms(10);
	MOVLW       65
	MOVWF       R12, 0
	MOVLW       238
	MOVWF       R13, 0
L_senoide40:
	DECFSZ      R13, 1, 1
	BRA         L_senoide40
	DECFSZ      R12, 1, 1
	BRA         L_senoide40
	NOP
;Instrucoes.c,131 :: 		for(j = 0; j<300; j++)
	INFSNZ      R3, 1 
	INCF        R4, 1 
;Instrucoes.c,134 :: 		}
	GOTO        L_senoide37
L_senoide38:
;Instrucoes.c,136 :: 		portd = 0b10010000;
	MOVLW       144
	MOVWF       PORTD+0 
;Instrucoes.c,138 :: 		for(j = 0; j<300; j++)
	CLRF        R3 
	CLRF        R4 
L_senoide41:
	MOVLW       128
	XORWF       R4, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       1
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__senoide146
	MOVLW       44
	SUBWF       R3, 0 
L__senoide146:
	BTFSC       STATUS+0, 0 
	GOTO        L_senoide42
;Instrucoes.c,140 :: 		delay_ms(10);
	MOVLW       65
	MOVWF       R12, 0
	MOVLW       238
	MOVWF       R13, 0
L_senoide44:
	DECFSZ      R13, 1, 1
	BRA         L_senoide44
	DECFSZ      R12, 1, 1
	BRA         L_senoide44
	NOP
;Instrucoes.c,138 :: 		for(j = 0; j<300; j++)
	INFSNZ      R3, 1 
	INCF        R4, 1 
;Instrucoes.c,141 :: 		}
	GOTO        L_senoide41
L_senoide42:
;Instrucoes.c,127 :: 		for (i=0; i<4; i++){
	INFSNZ      R1, 1 
	INCF        R2, 1 
;Instrucoes.c,143 :: 		}
	GOTO        L_senoide34
L_senoide35:
;Instrucoes.c,144 :: 		}//~~
L_end_senoide:
	RETURN      0
; end of _senoide

_executa_instrucoes:

;Instrucoes.c,161 :: 		void executa_instrucoes(){
;Instrucoes.c,163 :: 		if ((Button (&PORTC, 0, 250, 1)))
	MOVLW       PORTC+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTC+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       250
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes45
;Instrucoes.c,166 :: 		Lcd_Cmd(_LCD_CLEAR);                                       //Limpa Display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Instrucoes.c,168 :: 		menu_instrucao();                                          // Chama função de inicialização MENU
	CALL        _menu_instrucao+0, 0
;Instrucoes.c,180 :: 		if (rotinas == 1){
	MOVF        _rotinas+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_executa_instrucoes46
;Instrucoes.c,182 :: 		do{
L_executa_instrucoes47:
;Instrucoes.c,183 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Instrucoes.c,184 :: 		lcd_out (1,1, "Quad.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr1_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr1_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,185 :: 		lcd_out (1,9, "Triang.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr2_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr2_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,186 :: 		lcd_out (2,1, "Circ.");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr3_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr3_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,187 :: 		lcd_out (2,9, "Senoide");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr4_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr4_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,188 :: 		delay_ms (230);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       214
	MOVWF       R12, 0
	MOVLW       123
	MOVWF       R13, 0
L_executa_instrucoes50:
	DECFSZ      R13, 1, 1
	BRA         L_executa_instrucoes50
	DECFSZ      R12, 1, 1
	BRA         L_executa_instrucoes50
	DECFSZ      R11, 1, 1
	BRA         L_executa_instrucoes50
	NOP
	NOP
;Instrucoes.c,191 :: 		if ((Button (&PORTD, 0, 250, 1))) {
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       250
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes51
;Instrucoes.c,192 :: 		Lcd_Cmd(_LCD_CLEAR);                                       //Limpa Display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Instrucoes.c,193 :: 		lcd_out (1,4, "Executando");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr5_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr5_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,194 :: 		lcd_out (2,5, "Quadrado");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr6_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr6_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,195 :: 		quadrado();
	CALL        _quadrado+0, 0
;Instrucoes.c,196 :: 		delay_ms(10);
	MOVLW       65
	MOVWF       R12, 0
	MOVLW       238
	MOVWF       R13, 0
L_executa_instrucoes52:
	DECFSZ      R13, 1, 1
	BRA         L_executa_instrucoes52
	DECFSZ      R12, 1, 1
	BRA         L_executa_instrucoes52
	NOP
;Instrucoes.c,197 :: 		PORTD = 0b00000000;
	CLRF        PORTD+0 
;Instrucoes.c,198 :: 		}
	GOTO        L_executa_instrucoes53
L_executa_instrucoes51:
;Instrucoes.c,200 :: 		else if ((Button (&PORTD, 1, 250, 1)))  {
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       1
	MOVWF       FARG_Button_pin+0 
	MOVLW       250
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes54
;Instrucoes.c,201 :: 		Lcd_Cmd(_LCD_CLEAR);                                       //Limpa Display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Instrucoes.c,202 :: 		lcd_out (1,4, "Executando");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr7_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr7_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,203 :: 		lcd_out (2,4, "Triangulo");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr8_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr8_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,204 :: 		triangulo();
	CALL        _triangulo+0, 0
;Instrucoes.c,205 :: 		delay_ms(10);
	MOVLW       65
	MOVWF       R12, 0
	MOVLW       238
	MOVWF       R13, 0
L_executa_instrucoes55:
	DECFSZ      R13, 1, 1
	BRA         L_executa_instrucoes55
	DECFSZ      R12, 1, 1
	BRA         L_executa_instrucoes55
	NOP
;Instrucoes.c,206 :: 		PORTD = 0b00000000;
	CLRF        PORTD+0 
;Instrucoes.c,207 :: 		}
	GOTO        L_executa_instrucoes56
L_executa_instrucoes54:
;Instrucoes.c,210 :: 		else if ((Button (&PORTD, 2, 250, 1)))  {
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       250
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes57
;Instrucoes.c,211 :: 		Lcd_Cmd(_LCD_CLEAR);                                       //Limpa Display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Instrucoes.c,212 :: 		lcd_out (1,4, "Executando");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr9_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr9_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,213 :: 		lcd_out (2,4, "Circulo");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr10_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr10_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,214 :: 		circulo();
	CALL        _circulo+0, 0
;Instrucoes.c,215 :: 		delay_ms(10);
	MOVLW       65
	MOVWF       R12, 0
	MOVLW       238
	MOVWF       R13, 0
L_executa_instrucoes58:
	DECFSZ      R13, 1, 1
	BRA         L_executa_instrucoes58
	DECFSZ      R12, 1, 1
	BRA         L_executa_instrucoes58
	NOP
;Instrucoes.c,216 :: 		PORTD = 0b00000000;
	CLRF        PORTD+0 
;Instrucoes.c,217 :: 		}
	GOTO        L_executa_instrucoes59
L_executa_instrucoes57:
;Instrucoes.c,219 :: 		else if ((Button (&PORTD, 3, 250, 1)))  {
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       3
	MOVWF       FARG_Button_pin+0 
	MOVLW       250
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes60
;Instrucoes.c,220 :: 		Lcd_Cmd(_LCD_CLEAR);                                       //Limpa Display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Instrucoes.c,221 :: 		lcd_out (1,4, "Executando");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr11_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr11_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,222 :: 		lcd_out (2,4, "Senoide");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr12_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr12_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,223 :: 		senoide();
	CALL        _senoide+0, 0
;Instrucoes.c,224 :: 		delay_ms(10);
	MOVLW       65
	MOVWF       R12, 0
	MOVLW       238
	MOVWF       R13, 0
L_executa_instrucoes61:
	DECFSZ      R13, 1, 1
	BRA         L_executa_instrucoes61
	DECFSZ      R12, 1, 1
	BRA         L_executa_instrucoes61
	NOP
;Instrucoes.c,225 :: 		PORTD = 0b00000000;
	CLRF        PORTD+0 
;Instrucoes.c,226 :: 		}
L_executa_instrucoes60:
L_executa_instrucoes59:
L_executa_instrucoes56:
L_executa_instrucoes53:
;Instrucoes.c,228 :: 		}while (PORTC.B0 == 0);
	BTFSS       PORTC+0, 0 
	GOTO        L_executa_instrucoes47
;Instrucoes.c,230 :: 		rotinas = 0;
	CLRF        _rotinas+0 
;Instrucoes.c,232 :: 		}
	GOTO        L_executa_instrucoes62
L_executa_instrucoes46:
;Instrucoes.c,234 :: 		else if (instrucao > 0){
	MOVLW       128
	XORLW       0
	MOVWF       R0 
	MOVLW       128
	XORWF       _instrucao+0, 0 
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_executa_instrucoes63
;Instrucoes.c,236 :: 		delay_ms(500);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       175
	MOVWF       R12, 0
	MOVLW       182
	MOVWF       R13, 0
L_executa_instrucoes64:
	DECFSZ      R13, 1, 1
	BRA         L_executa_instrucoes64
	DECFSZ      R12, 1, 1
	BRA         L_executa_instrucoes64
	DECFSZ      R11, 1, 1
	BRA         L_executa_instrucoes64
	NOP
;Instrucoes.c,237 :: 		Lcd_Cmd(_LCD_CLEAR);                                       //Limpa Display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Instrucoes.c,239 :: 		switch (instrucao){
	GOTO        L_executa_instrucoes65
;Instrucoes.c,241 :: 		case 0b00010000:
L_executa_instrucoes67:
;Instrucoes.c,242 :: 		portd = 0b00010000;
	MOVLW       16
	MOVWF       PORTD+0 
;Instrucoes.c,243 :: 		break;
	GOTO        L_executa_instrucoes66
;Instrucoes.c,245 :: 		case 0b00100000:
L_executa_instrucoes68:
;Instrucoes.c,246 :: 		portd = 0b00010000;
	MOVLW       16
	MOVWF       PORTD+0 
;Instrucoes.c,247 :: 		break;
	GOTO        L_executa_instrucoes66
;Instrucoes.c,250 :: 		case 0b00110000:
L_executa_instrucoes69:
;Instrucoes.c,251 :: 		portd = 0b00110000;
	MOVLW       48
	MOVWF       PORTD+0 
;Instrucoes.c,252 :: 		break;
	GOTO        L_executa_instrucoes66
;Instrucoes.c,254 :: 		case 0b01000000:
L_executa_instrucoes70:
;Instrucoes.c,255 :: 		portd = 0b01000000;
	MOVLW       64
	MOVWF       PORTD+0 
;Instrucoes.c,256 :: 		break;
	GOTO        L_executa_instrucoes66
;Instrucoes.c,258 :: 		case 0b01010000:
L_executa_instrucoes71:
;Instrucoes.c,259 :: 		portd = 0b01010000;
	MOVLW       80
	MOVWF       PORTD+0 
;Instrucoes.c,260 :: 		break;
	GOTO        L_executa_instrucoes66
;Instrucoes.c,262 :: 		case 0b01110000:
L_executa_instrucoes72:
;Instrucoes.c,263 :: 		portd = 0b01110000;
	MOVLW       112
	MOVWF       PORTD+0 
;Instrucoes.c,264 :: 		break;
	GOTO        L_executa_instrucoes66
;Instrucoes.c,266 :: 		case 0b10000000:
L_executa_instrucoes73:
;Instrucoes.c,267 :: 		portd = 0b10000000;
	MOVLW       128
	MOVWF       PORTD+0 
;Instrucoes.c,268 :: 		break;
	GOTO        L_executa_instrucoes66
;Instrucoes.c,270 :: 		case 0b10010000:
L_executa_instrucoes74:
;Instrucoes.c,271 :: 		portd = 0b10010000;
	MOVLW       144
	MOVWF       PORTD+0 
;Instrucoes.c,272 :: 		break;
	GOTO        L_executa_instrucoes66
;Instrucoes.c,274 :: 		case 0b10100000:
L_executa_instrucoes75:
;Instrucoes.c,275 :: 		portd = 0b10100000;
	MOVLW       160
	MOVWF       PORTD+0 
;Instrucoes.c,276 :: 		break;
	GOTO        L_executa_instrucoes66
;Instrucoes.c,278 :: 		case 0b10110000:
L_executa_instrucoes76:
;Instrucoes.c,279 :: 		portd = 0b10110000;
	MOVLW       176
	MOVWF       PORTD+0 
;Instrucoes.c,280 :: 		break;
	GOTO        L_executa_instrucoes66
;Instrucoes.c,282 :: 		case 0b11000000:
L_executa_instrucoes77:
;Instrucoes.c,283 :: 		portd = 0b11000000;
	MOVLW       192
	MOVWF       PORTD+0 
;Instrucoes.c,284 :: 		break;
	GOTO        L_executa_instrucoes66
;Instrucoes.c,286 :: 		case 0b11010000:
L_executa_instrucoes78:
;Instrucoes.c,287 :: 		portd = 0b11010000;
	MOVLW       208
	MOVWF       PORTD+0 
;Instrucoes.c,288 :: 		break;
	GOTO        L_executa_instrucoes66
;Instrucoes.c,290 :: 		case 0b11100000:
L_executa_instrucoes79:
;Instrucoes.c,291 :: 		portd = 0b11100000;
	MOVLW       224
	MOVWF       PORTD+0 
;Instrucoes.c,292 :: 		break;
	GOTO        L_executa_instrucoes66
;Instrucoes.c,294 :: 		case 0b11110000:
L_executa_instrucoes80:
;Instrucoes.c,295 :: 		portd = 0b11110000;
	MOVLW       240
	MOVWF       PORTD+0 
;Instrucoes.c,296 :: 		break;
	GOTO        L_executa_instrucoes66
;Instrucoes.c,298 :: 		}
L_executa_instrucoes65:
	MOVF        _instrucao+0, 0 
	XORLW       16
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes67
	MOVF        _instrucao+0, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes68
	MOVF        _instrucao+0, 0 
	XORLW       48
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes69
	MOVF        _instrucao+0, 0 
	XORLW       64
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes70
	MOVF        _instrucao+0, 0 
	XORLW       80
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes71
	MOVF        _instrucao+0, 0 
	XORLW       112
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes72
	MOVLW       0
	BTFSC       _instrucao+0, 7 
	MOVLW       255
	MOVWF       R0 
	MOVLW       0
	XORWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__executa_instrucoes148
	MOVLW       128
	XORWF       _instrucao+0, 0 
L__executa_instrucoes148:
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes73
	MOVLW       0
	BTFSC       _instrucao+0, 7 
	MOVLW       255
	MOVWF       R0 
	MOVLW       0
	XORWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__executa_instrucoes149
	MOVLW       144
	XORWF       _instrucao+0, 0 
L__executa_instrucoes149:
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes74
	MOVLW       0
	BTFSC       _instrucao+0, 7 
	MOVLW       255
	MOVWF       R0 
	MOVLW       0
	XORWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__executa_instrucoes150
	MOVLW       160
	XORWF       _instrucao+0, 0 
L__executa_instrucoes150:
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes75
	MOVLW       0
	BTFSC       _instrucao+0, 7 
	MOVLW       255
	MOVWF       R0 
	MOVLW       0
	XORWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__executa_instrucoes151
	MOVLW       176
	XORWF       _instrucao+0, 0 
L__executa_instrucoes151:
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes76
	MOVLW       0
	BTFSC       _instrucao+0, 7 
	MOVLW       255
	MOVWF       R0 
	MOVLW       0
	XORWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__executa_instrucoes152
	MOVLW       192
	XORWF       _instrucao+0, 0 
L__executa_instrucoes152:
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes77
	MOVLW       0
	BTFSC       _instrucao+0, 7 
	MOVLW       255
	MOVWF       R0 
	MOVLW       0
	XORWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__executa_instrucoes153
	MOVLW       208
	XORWF       _instrucao+0, 0 
L__executa_instrucoes153:
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes78
	MOVLW       0
	BTFSC       _instrucao+0, 7 
	MOVLW       255
	MOVWF       R0 
	MOVLW       0
	XORWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__executa_instrucoes154
	MOVLW       224
	XORWF       _instrucao+0, 0 
L__executa_instrucoes154:
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes79
	MOVLW       0
	BTFSC       _instrucao+0, 7 
	MOVLW       255
	MOVWF       R0 
	MOVLW       0
	XORWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__executa_instrucoes155
	MOVLW       240
	XORWF       _instrucao+0, 0 
L__executa_instrucoes155:
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes80
L_executa_instrucoes66:
;Instrucoes.c,301 :: 		do {
L_executa_instrucoes81:
;Instrucoes.c,302 :: 		lcd_out (1,4, "Executando");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr13_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr13_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,303 :: 		lcd_out (2,5, "Instrucao");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr14_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr14_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,304 :: 		}while (PORTC.B0 == 0);
	BTFSS       PORTC+0, 0 
	GOTO        L_executa_instrucoes81
;Instrucoes.c,307 :: 		}
	GOTO        L_executa_instrucoes84
L_executa_instrucoes63:
;Instrucoes.c,309 :: 		else if (andar_frente > 0)
	MOVLW       128
	XORLW       0
	MOVWF       R0 
	MOVLW       128
	XORWF       _andar_frente+0, 0 
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_executa_instrucoes85
;Instrucoes.c,311 :: 		switch(andar_frente){
	GOTO        L_executa_instrucoes86
;Instrucoes.c,313 :: 		case 0b00000001:
L_executa_instrucoes88:
;Instrucoes.c,314 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Instrucoes.c,315 :: 		lcd_out (1,2, "Executando Andar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr15_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr15_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,316 :: 		lcd_out (2,2, "Frente 15'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr16_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr16_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,317 :: 		portd = 0b01010000;
	MOVLW       80
	MOVWF       PORTD+0 
;Instrucoes.c,318 :: 		delay_ms(2500);
	MOVLW       64
	MOVWF       R11, 0
	MOVLW       106
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_executa_instrucoes89:
	DECFSZ      R13, 1, 1
	BRA         L_executa_instrucoes89
	DECFSZ      R12, 1, 1
	BRA         L_executa_instrucoes89
	DECFSZ      R11, 1, 1
	BRA         L_executa_instrucoes89
	NOP
	NOP
;Instrucoes.c,319 :: 		break;
	GOTO        L_executa_instrucoes87
;Instrucoes.c,321 :: 		case 0b00000010:
L_executa_instrucoes90:
;Instrucoes.c,322 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Instrucoes.c,323 :: 		lcd_out (1,2, "Executando Andar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr17_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr17_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,324 :: 		lcd_out (2,2, "Frente 30'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr18_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr18_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,325 :: 		portd = 0b01010000;
	MOVLW       80
	MOVWF       PORTD+0 
;Instrucoes.c,326 :: 		delay_ms(5000);
	MOVLW       127
	MOVWF       R11, 0
	MOVLW       212
	MOVWF       R12, 0
	MOVLW       49
	MOVWF       R13, 0
L_executa_instrucoes91:
	DECFSZ      R13, 1, 1
	BRA         L_executa_instrucoes91
	DECFSZ      R12, 1, 1
	BRA         L_executa_instrucoes91
	DECFSZ      R11, 1, 1
	BRA         L_executa_instrucoes91
	NOP
	NOP
;Instrucoes.c,327 :: 		break;
	GOTO        L_executa_instrucoes87
;Instrucoes.c,329 :: 		case 0b00000011:
L_executa_instrucoes92:
;Instrucoes.c,330 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Instrucoes.c,331 :: 		lcd_out (1,2, "Executando Andar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr19_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr19_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,332 :: 		lcd_out (2,2, "Frente 45'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr20_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr20_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,333 :: 		portd = 0b01010000;
	MOVLW       80
	MOVWF       PORTD+0 
;Instrucoes.c,334 :: 		delay_ms(7500);
	MOVLW       191
	MOVWF       R11, 0
	MOVLW       61
	MOVWF       R12, 0
	MOVLW       203
	MOVWF       R13, 0
L_executa_instrucoes93:
	DECFSZ      R13, 1, 1
	BRA         L_executa_instrucoes93
	DECFSZ      R12, 1, 1
	BRA         L_executa_instrucoes93
	DECFSZ      R11, 1, 1
	BRA         L_executa_instrucoes93
	NOP
	NOP
;Instrucoes.c,335 :: 		break;
	GOTO        L_executa_instrucoes87
;Instrucoes.c,337 :: 		case 0b00000100:
L_executa_instrucoes94:
;Instrucoes.c,338 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Instrucoes.c,339 :: 		lcd_out (1,2, "Executando Andar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr21_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr21_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,340 :: 		lcd_out (2,2, "Frente 60'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr22_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr22_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,341 :: 		portd = 0b01010000;
	MOVLW       80
	MOVWF       PORTD+0 
;Instrucoes.c,342 :: 		delay_ms(10000);
	MOVLW       254
	MOVWF       R11, 0
	MOVLW       167
	MOVWF       R12, 0
	MOVLW       101
	MOVWF       R13, 0
L_executa_instrucoes95:
	DECFSZ      R13, 1, 1
	BRA         L_executa_instrucoes95
	DECFSZ      R12, 1, 1
	BRA         L_executa_instrucoes95
	DECFSZ      R11, 1, 1
	BRA         L_executa_instrucoes95
	NOP
	NOP
;Instrucoes.c,343 :: 		break;
	GOTO        L_executa_instrucoes87
;Instrucoes.c,345 :: 		}
L_executa_instrucoes86:
	MOVF        _andar_frente+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes88
	MOVF        _andar_frente+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes90
	MOVF        _andar_frente+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes92
	MOVF        _andar_frente+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes94
L_executa_instrucoes87:
;Instrucoes.c,347 :: 		}
	GOTO        L_executa_instrucoes96
L_executa_instrucoes85:
;Instrucoes.c,350 :: 		else if (andar_tras > 0)
	MOVLW       128
	XORLW       0
	MOVWF       R0 
	MOVLW       128
	XORWF       _andar_tras+0, 0 
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_executa_instrucoes97
;Instrucoes.c,352 :: 		switch(andar_tras){
	GOTO        L_executa_instrucoes98
;Instrucoes.c,354 :: 		case 0b00000001:
L_executa_instrucoes100:
;Instrucoes.c,355 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Instrucoes.c,356 :: 		lcd_out (1,2, "Executando Andar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr23_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr23_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,357 :: 		lcd_out (2,2, "Tras 15'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr24_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr24_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,358 :: 		portd = 0b10100000;
	MOVLW       160
	MOVWF       PORTD+0 
;Instrucoes.c,359 :: 		delay_ms(2500);
	MOVLW       64
	MOVWF       R11, 0
	MOVLW       106
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_executa_instrucoes101:
	DECFSZ      R13, 1, 1
	BRA         L_executa_instrucoes101
	DECFSZ      R12, 1, 1
	BRA         L_executa_instrucoes101
	DECFSZ      R11, 1, 1
	BRA         L_executa_instrucoes101
	NOP
	NOP
;Instrucoes.c,360 :: 		break;
	GOTO        L_executa_instrucoes99
;Instrucoes.c,362 :: 		case 0b00000010:
L_executa_instrucoes102:
;Instrucoes.c,363 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Instrucoes.c,364 :: 		lcd_out (1,2, "Executando Andar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr25_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr25_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,365 :: 		lcd_out (2,2, "Tras 30'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr26_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr26_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,366 :: 		portd = 0b10100000;
	MOVLW       160
	MOVWF       PORTD+0 
;Instrucoes.c,367 :: 		delay_ms(5000);
	MOVLW       127
	MOVWF       R11, 0
	MOVLW       212
	MOVWF       R12, 0
	MOVLW       49
	MOVWF       R13, 0
L_executa_instrucoes103:
	DECFSZ      R13, 1, 1
	BRA         L_executa_instrucoes103
	DECFSZ      R12, 1, 1
	BRA         L_executa_instrucoes103
	DECFSZ      R11, 1, 1
	BRA         L_executa_instrucoes103
	NOP
	NOP
;Instrucoes.c,368 :: 		break;
	GOTO        L_executa_instrucoes99
;Instrucoes.c,370 :: 		case 0b00000011:
L_executa_instrucoes104:
;Instrucoes.c,371 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Instrucoes.c,372 :: 		lcd_out (1,2, "Executando Andar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr27_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr27_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,373 :: 		lcd_out (2,2, "Tras 45'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr28_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr28_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,374 :: 		portd = 0b10100000;
	MOVLW       160
	MOVWF       PORTD+0 
;Instrucoes.c,375 :: 		delay_ms(7500);
	MOVLW       191
	MOVWF       R11, 0
	MOVLW       61
	MOVWF       R12, 0
	MOVLW       203
	MOVWF       R13, 0
L_executa_instrucoes105:
	DECFSZ      R13, 1, 1
	BRA         L_executa_instrucoes105
	DECFSZ      R12, 1, 1
	BRA         L_executa_instrucoes105
	DECFSZ      R11, 1, 1
	BRA         L_executa_instrucoes105
	NOP
	NOP
;Instrucoes.c,376 :: 		break;
	GOTO        L_executa_instrucoes99
;Instrucoes.c,378 :: 		case 0b00000100:
L_executa_instrucoes106:
;Instrucoes.c,379 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Instrucoes.c,380 :: 		lcd_out (1,2, "Executando Andar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr29_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr29_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,381 :: 		lcd_out (2,2, "Tras 60'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr30_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr30_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,382 :: 		portd = 0b10100000;
	MOVLW       160
	MOVWF       PORTD+0 
;Instrucoes.c,383 :: 		delay_ms(10000);
	MOVLW       254
	MOVWF       R11, 0
	MOVLW       167
	MOVWF       R12, 0
	MOVLW       101
	MOVWF       R13, 0
L_executa_instrucoes107:
	DECFSZ      R13, 1, 1
	BRA         L_executa_instrucoes107
	DECFSZ      R12, 1, 1
	BRA         L_executa_instrucoes107
	DECFSZ      R11, 1, 1
	BRA         L_executa_instrucoes107
	NOP
	NOP
;Instrucoes.c,384 :: 		break;
	GOTO        L_executa_instrucoes99
;Instrucoes.c,386 :: 		}
L_executa_instrucoes98:
	MOVF        _andar_tras+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes100
	MOVF        _andar_tras+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes102
	MOVF        _andar_tras+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes104
	MOVF        _andar_tras+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes106
L_executa_instrucoes99:
;Instrucoes.c,389 :: 		}
	GOTO        L_executa_instrucoes108
L_executa_instrucoes97:
;Instrucoes.c,391 :: 		else if (rotac_esq > 0)
	MOVLW       128
	XORLW       0
	MOVWF       R0 
	MOVLW       128
	XORWF       _rotac_esq+0, 0 
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_executa_instrucoes109
;Instrucoes.c,393 :: 		switch(rotac_esq){
	GOTO        L_executa_instrucoes110
;Instrucoes.c,395 :: 		case 0b00000001:
L_executa_instrucoes112:
;Instrucoes.c,396 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Instrucoes.c,397 :: 		lcd_out (1,2, "Exec. Rotac.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr31_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr31_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,398 :: 		lcd_out (2,3, "Esqu. 30'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr32_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr32_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,399 :: 		portd = 0b10010000;
	MOVLW       144
	MOVWF       PORTD+0 
;Instrucoes.c,400 :: 		delay_ms(1000);
	MOVLW       26
	MOVWF       R11, 0
	MOVLW       94
	MOVWF       R12, 0
	MOVLW       110
	MOVWF       R13, 0
L_executa_instrucoes113:
	DECFSZ      R13, 1, 1
	BRA         L_executa_instrucoes113
	DECFSZ      R12, 1, 1
	BRA         L_executa_instrucoes113
	DECFSZ      R11, 1, 1
	BRA         L_executa_instrucoes113
	NOP
;Instrucoes.c,401 :: 		break;
	GOTO        L_executa_instrucoes111
;Instrucoes.c,403 :: 		case 0b00000010:
L_executa_instrucoes114:
;Instrucoes.c,404 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Instrucoes.c,405 :: 		lcd_out (1,2, "Exec. Rotac.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr33_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr33_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,406 :: 		lcd_out (2,3, "Esqu. 45'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr34_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr34_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,407 :: 		portd = 0b10010000;
	MOVLW       144
	MOVWF       PORTD+0 
;Instrucoes.c,408 :: 		delay_ms(2000);
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_executa_instrucoes115:
	DECFSZ      R13, 1, 1
	BRA         L_executa_instrucoes115
	DECFSZ      R12, 1, 1
	BRA         L_executa_instrucoes115
	DECFSZ      R11, 1, 1
	BRA         L_executa_instrucoes115
	NOP
	NOP
;Instrucoes.c,409 :: 		break;
	GOTO        L_executa_instrucoes111
;Instrucoes.c,411 :: 		case 0b00000011:
L_executa_instrucoes116:
;Instrucoes.c,412 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Instrucoes.c,413 :: 		lcd_out (1,2, "Exec. Rotac.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr35_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr35_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,414 :: 		lcd_out (2,3, "Esqu. 60'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr36_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr36_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,415 :: 		portd = 0b10010000;
	MOVLW       144
	MOVWF       PORTD+0 
;Instrucoes.c,416 :: 		delay_ms(3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_executa_instrucoes117:
	DECFSZ      R13, 1, 1
	BRA         L_executa_instrucoes117
	DECFSZ      R12, 1, 1
	BRA         L_executa_instrucoes117
	DECFSZ      R11, 1, 1
	BRA         L_executa_instrucoes117
	NOP
	NOP
;Instrucoes.c,417 :: 		break;
	GOTO        L_executa_instrucoes111
;Instrucoes.c,419 :: 		case 0b00000100:
L_executa_instrucoes118:
;Instrucoes.c,420 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Instrucoes.c,421 :: 		lcd_out (1,2, "Exec. Rotac.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr37_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr37_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,422 :: 		lcd_out (2,3, "Esqu. 90'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr38_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr38_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,423 :: 		portd = 0b10010000;
	MOVLW       144
	MOVWF       PORTD+0 
;Instrucoes.c,424 :: 		delay_ms(4000);
	MOVLW       102
	MOVWF       R11, 0
	MOVLW       118
	MOVWF       R12, 0
	MOVLW       193
	MOVWF       R13, 0
L_executa_instrucoes119:
	DECFSZ      R13, 1, 1
	BRA         L_executa_instrucoes119
	DECFSZ      R12, 1, 1
	BRA         L_executa_instrucoes119
	DECFSZ      R11, 1, 1
	BRA         L_executa_instrucoes119
;Instrucoes.c,425 :: 		break;
	GOTO        L_executa_instrucoes111
;Instrucoes.c,427 :: 		}
L_executa_instrucoes110:
	MOVF        _rotac_esq+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes112
	MOVF        _rotac_esq+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes114
	MOVF        _rotac_esq+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes116
	MOVF        _rotac_esq+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes118
L_executa_instrucoes111:
;Instrucoes.c,431 :: 		}
	GOTO        L_executa_instrucoes120
L_executa_instrucoes109:
;Instrucoes.c,433 :: 		else if (rotac_dir > 0)
	MOVLW       128
	XORLW       0
	MOVWF       R0 
	MOVLW       128
	XORWF       _rotac_dir+0, 0 
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_executa_instrucoes121
;Instrucoes.c,435 :: 		switch(rotac_dir){
	GOTO        L_executa_instrucoes122
;Instrucoes.c,437 :: 		case 0b00000001:
L_executa_instrucoes124:
;Instrucoes.c,438 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Instrucoes.c,439 :: 		lcd_out (1,2, "Exec. Rotac.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr39_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr39_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,440 :: 		lcd_out (2,3, "Dir. 30'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr40_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr40_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,441 :: 		portd = 0b01100000;
	MOVLW       96
	MOVWF       PORTD+0 
;Instrucoes.c,442 :: 		delay_ms(1000);
	MOVLW       26
	MOVWF       R11, 0
	MOVLW       94
	MOVWF       R12, 0
	MOVLW       110
	MOVWF       R13, 0
L_executa_instrucoes125:
	DECFSZ      R13, 1, 1
	BRA         L_executa_instrucoes125
	DECFSZ      R12, 1, 1
	BRA         L_executa_instrucoes125
	DECFSZ      R11, 1, 1
	BRA         L_executa_instrucoes125
	NOP
;Instrucoes.c,443 :: 		break;
	GOTO        L_executa_instrucoes123
;Instrucoes.c,445 :: 		case 0b00000010:
L_executa_instrucoes126:
;Instrucoes.c,446 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Instrucoes.c,447 :: 		lcd_out (1,2, "Exec. Rotac.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr41_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr41_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,448 :: 		lcd_out (2,3, "Dir. 45'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr42_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr42_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,449 :: 		portd = 0b01100000;
	MOVLW       96
	MOVWF       PORTD+0 
;Instrucoes.c,450 :: 		delay_ms(2000);
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_executa_instrucoes127:
	DECFSZ      R13, 1, 1
	BRA         L_executa_instrucoes127
	DECFSZ      R12, 1, 1
	BRA         L_executa_instrucoes127
	DECFSZ      R11, 1, 1
	BRA         L_executa_instrucoes127
	NOP
	NOP
;Instrucoes.c,451 :: 		break;
	GOTO        L_executa_instrucoes123
;Instrucoes.c,453 :: 		case 0b00000011:
L_executa_instrucoes128:
;Instrucoes.c,454 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Instrucoes.c,455 :: 		lcd_out (1,2, "Exec. Rotac.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr43_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr43_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,456 :: 		lcd_out (2,3, "Dir. 60'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr44_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr44_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,457 :: 		portd = 0b01100000;
	MOVLW       96
	MOVWF       PORTD+0 
;Instrucoes.c,458 :: 		delay_ms(3000);
	MOVLW       77
	MOVWF       R11, 0
	MOVLW       25
	MOVWF       R12, 0
	MOVLW       79
	MOVWF       R13, 0
L_executa_instrucoes129:
	DECFSZ      R13, 1, 1
	BRA         L_executa_instrucoes129
	DECFSZ      R12, 1, 1
	BRA         L_executa_instrucoes129
	DECFSZ      R11, 1, 1
	BRA         L_executa_instrucoes129
	NOP
	NOP
;Instrucoes.c,459 :: 		break;
	GOTO        L_executa_instrucoes123
;Instrucoes.c,461 :: 		case 0b00000100:
L_executa_instrucoes130:
;Instrucoes.c,462 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Instrucoes.c,463 :: 		lcd_out (1,2, "Exec. Rotac.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr45_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr45_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,464 :: 		lcd_out (2,3, "Dir. 90'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr46_Instrucoes+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr46_Instrucoes+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Instrucoes.c,465 :: 		portd = 0b01100000;
	MOVLW       96
	MOVWF       PORTD+0 
;Instrucoes.c,466 :: 		delay_ms(4000);
	MOVLW       102
	MOVWF       R11, 0
	MOVLW       118
	MOVWF       R12, 0
	MOVLW       193
	MOVWF       R13, 0
L_executa_instrucoes131:
	DECFSZ      R13, 1, 1
	BRA         L_executa_instrucoes131
	DECFSZ      R12, 1, 1
	BRA         L_executa_instrucoes131
	DECFSZ      R11, 1, 1
	BRA         L_executa_instrucoes131
;Instrucoes.c,467 :: 		break;
	GOTO        L_executa_instrucoes123
;Instrucoes.c,469 :: 		}
L_executa_instrucoes122:
	MOVF        _rotac_dir+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes124
	MOVF        _rotac_dir+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes126
	MOVF        _rotac_dir+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes128
	MOVF        _rotac_dir+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_executa_instrucoes130
L_executa_instrucoes123:
;Instrucoes.c,471 :: 		}
L_executa_instrucoes121:
L_executa_instrucoes120:
L_executa_instrucoes108:
L_executa_instrucoes96:
L_executa_instrucoes84:
L_executa_instrucoes62:
;Instrucoes.c,474 :: 		instrucao = 0;
	CLRF        _instrucao+0 
;Instrucoes.c,475 :: 		rotinas = 0;
	CLRF        _rotinas+0 
;Instrucoes.c,476 :: 		andar_frente = 0;
	CLRF        _andar_frente+0 
;Instrucoes.c,477 :: 		andar_tras = 0;
	CLRF        _andar_tras+0 
;Instrucoes.c,478 :: 		rotac_dir = 0;
	CLRF        _rotac_dir+0 
;Instrucoes.c,479 :: 		rotac_esq = 0;
	CLRF        _rotac_esq+0 
;Instrucoes.c,480 :: 		PORTD = 0b00000000;
	CLRF        PORTD+0 
;Instrucoes.c,482 :: 		}
L_executa_instrucoes45:
;Instrucoes.c,484 :: 		}
L_end_executa_instrucoes:
	RETURN      0
; end of _executa_instrucoes
