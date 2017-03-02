
_menu_instrucao:

;menu.c,26 :: 		unsigned short menu_instrucao(){
;menu.c,32 :: 		menu:
___menu_instrucao_menu:
;menu.c,34 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,35 :: 		lcd_out (1,1, "Rotinas");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr1_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr1_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,36 :: 		lcd_out (2,1, "Insira Instrucao");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr2_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr2_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,37 :: 		delay_ms (200);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_menu_instrucao0:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao0
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao0
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao0
	NOP
	NOP
;menu.c,39 :: 		if (Button (&PORTD, 0, 250, 1))
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
	GOTO        L_menu_instrucao1
;menu.c,41 :: 		rotinas = 1;                 //e sai da funcao menu, aguardando entrada do
	MOVLW       1
	MOVWF       _rotinas+0 
;menu.c,42 :: 		delay_ms(100);               //usuario em Main (rotina desejada)
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       138
	MOVWF       R12, 0
	MOVLW       85
	MOVWF       R13, 0
L_menu_instrucao2:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao2
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao2
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao2
	NOP
	NOP
;menu.c,43 :: 		return;
	GOTO        L_end_menu_instrucao
;menu.c,45 :: 		}
L_menu_instrucao1:
;menu.c,47 :: 		else if (Button (&PORTD, 1, 200, 1))   //Se pressionado botão 1, entra em Menu, solicitando
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       1
	MOVWF       FARG_Button_pin+0 
	MOVLW       200
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_menu_instrucao4
;menu.c,49 :: 		Menu_1:                             //Seja ela A-Z (Alfabeto Grego) ou Binário
___menu_instrucao_Menu_1:
;menu.c,51 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,52 :: 		lcd_out (1,1, "Insira");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr3_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr3_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,53 :: 		lcd_out (1,8, "instrucao");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr4_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr4_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,54 :: 		lcd_out (2,3, "A-Z");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr5_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr5_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,55 :: 		lcd_out (2,8, "Binario");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr6_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr6_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,56 :: 		delay_ms(250);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       88
	MOVWF       R12, 0
	MOVLW       89
	MOVWF       R13, 0
L_menu_instrucao5:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao5
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao5
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao5
	NOP
	NOP
;menu.c,58 :: 		if(Button (&PORTD, 0, 250, 1))             //Se pressionado o botão 0 do PORTD seleciona funcao do Menu para andar/rotacionar
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
	GOTO        L_menu_instrucao6
;menu.c,60 :: 		Menu_2:
___menu_instrucao_Menu_2:
;menu.c,62 :: 		delay_ms(700);
	MOVLW       18
	MOVWF       R11, 0
	MOVLW       194
	MOVWF       R12, 0
	MOVLW       102
	MOVWF       R13, 0
L_menu_instrucao7:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao7
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao7
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao7
	NOP
;menu.c,63 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,64 :: 		lcd_out (1,3, "Selecione");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr7_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr7_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,65 :: 		lcd_out (2,1, "Andar Rotacionar");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr8_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr8_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,68 :: 		if(Button (&PORTD, 0, 250, 1))                  //Se pressionado o botão 0 do PORTD seleciona funcao do Menu para Andar Frente/Tras
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
	GOTO        L_menu_instrucao8
;menu.c,70 :: 		Menu_3:
___menu_instrucao_Menu_3:
;menu.c,72 :: 		delay_ms(700);
	MOVLW       18
	MOVWF       R11, 0
	MOVLW       194
	MOVWF       R12, 0
	MOVLW       102
	MOVWF       R13, 0
L_menu_instrucao9:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao9
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao9
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao9
	NOP
;menu.c,73 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,74 :: 		lcd_out (1,2, "Selec. Andar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr9_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr9_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,75 :: 		lcd_out (2,2, "Frente Tras");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr10_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr10_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,78 :: 		if(Button (&PORTD, 0, 250, 1))              //Se pressionado o botão 0 do PORTD seleciona funcao do Menu para Andar Frente 15 - 30 - 45 - 60
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
	GOTO        L_menu_instrucao10
;menu.c,80 :: 		Menu_4:                                 //Usuario Seleciona através do botao 0,1,2,3
___menu_instrucao_Menu_4:
;menu.c,81 :: 		delay_ms(700);                    //Após selecionado, joga na tela a funcao selecionada e atribui a variável o respectivo valor
	MOVLW       18
	MOVWF       R11, 0
	MOVLW       194
	MOVWF       R12, 0
	MOVLW       102
	MOVWF       R13, 0
L_menu_instrucao11:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao11
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao11
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao11
	NOP
;menu.c,82 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,83 :: 		lcd_out (1,2, "Andar Frente");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr11_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr11_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,84 :: 		lcd_out (2,2, "15 30 45 60");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr12_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr12_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,86 :: 		if(Button (&PORTD, 0, 250, 1))
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
	GOTO        L_menu_instrucao12
;menu.c,88 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,89 :: 		lcd_out (1,2, "Selec. Andar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr13_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr13_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,90 :: 		lcd_out (2,2, "Frente 15'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr14_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr14_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,91 :: 		andar_frente = 0b00000001;
	MOVLW       1
	MOVWF       _andar_frente+0 
;menu.c,92 :: 		delay_ms(2000);
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_menu_instrucao13:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao13
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao13
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao13
	NOP
	NOP
;menu.c,94 :: 		}
	GOTO        L_menu_instrucao14
L_menu_instrucao12:
;menu.c,96 :: 		else if(Button (&PORTD, 1, 250, 1))
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
	GOTO        L_menu_instrucao15
;menu.c,98 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,99 :: 		lcd_out (1,2, "Selec. Andar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr15_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr15_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,100 :: 		lcd_out (2,2, "Frente 30'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr16_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr16_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,101 :: 		andar_frente = 0b00000010;
	MOVLW       2
	MOVWF       _andar_frente+0 
;menu.c,102 :: 		delay_ms(2000);
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_menu_instrucao16:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao16
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao16
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao16
	NOP
	NOP
;menu.c,104 :: 		}
	GOTO        L_menu_instrucao17
L_menu_instrucao15:
;menu.c,106 :: 		else if(Button (&PORTD, 2, 250, 1))
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
	GOTO        L_menu_instrucao18
;menu.c,108 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,109 :: 		lcd_out (1,2, "Selec. Andar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr17_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr17_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,110 :: 		lcd_out (2,2, "Frente 45'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr18_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr18_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,111 :: 		andar_frente = 0b00000011;
	MOVLW       3
	MOVWF       _andar_frente+0 
;menu.c,112 :: 		delay_ms(2000);
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_menu_instrucao19:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao19
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao19
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao19
	NOP
	NOP
;menu.c,113 :: 		}
	GOTO        L_menu_instrucao20
L_menu_instrucao18:
;menu.c,115 :: 		else if(Button (&PORTD, 3, 250, 1))
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
	GOTO        L_menu_instrucao21
;menu.c,117 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,118 :: 		lcd_out (1,2, "Selec. Andar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr19_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr19_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,119 :: 		lcd_out (2,2, "Frente 60'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr20_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr20_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,120 :: 		andar_frente = 0b00000100;
	MOVLW       4
	MOVWF       _andar_frente+0 
;menu.c,121 :: 		delay_ms(2000);
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_menu_instrucao22:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao22
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao22
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao22
	NOP
	NOP
;menu.c,122 :: 		}
	GOTO        L_menu_instrucao23
L_menu_instrucao21:
;menu.c,126 :: 		goto Menu_4;
	GOTO        ___menu_instrucao_Menu_4
;menu.c,127 :: 		}
L_menu_instrucao23:
L_menu_instrucao20:
L_menu_instrucao17:
L_menu_instrucao14:
;menu.c,129 :: 		}
	GOTO        L_menu_instrucao24
L_menu_instrucao10:
;menu.c,131 :: 		else if(Button (&PORTD, 1, 250, 1))              //Se pressionado o botão 0 do PORTD seleciona funcao do Menu para Andar Tras 15 - 30 - 45 - 60
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
	GOTO        L_menu_instrucao25
;menu.c,133 :: 		Menu_5:                                     //Usuario Seleciona através do botao 0,1,2,3
___menu_instrucao_Menu_5:
;menu.c,134 :: 		delay_ms(700);                        //Após selecionado, joga na tela a funcao selecionada e atribui a variável o respectivo valor
	MOVLW       18
	MOVWF       R11, 0
	MOVLW       194
	MOVWF       R12, 0
	MOVLW       102
	MOVWF       R13, 0
L_menu_instrucao26:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao26
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao26
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao26
	NOP
;menu.c,135 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,136 :: 		lcd_out (1,2, "Andar Tras");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr21_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr21_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,137 :: 		lcd_out (2,1, "30' 45' 60' 90'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr22_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr22_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,139 :: 		if(Button (&PORTD, 0, 250, 1))
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
	GOTO        L_menu_instrucao27
;menu.c,141 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,142 :: 		lcd_out (1,2, "Selec. Andar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr23_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr23_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,143 :: 		lcd_out (2,2, "Tras 15'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr24_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr24_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,144 :: 		andar_tras = 0b00000001;
	MOVLW       1
	MOVWF       _andar_tras+0 
;menu.c,145 :: 		delay_ms(2000);
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_menu_instrucao28:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao28
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao28
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao28
	NOP
	NOP
;menu.c,147 :: 		}
	GOTO        L_menu_instrucao29
L_menu_instrucao27:
;menu.c,149 :: 		else if(Button (&PORTD, 1, 250, 1))
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
	GOTO        L_menu_instrucao30
;menu.c,151 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,152 :: 		lcd_out (1,2, "Selec. Andar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr25_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr25_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,153 :: 		lcd_out (2,2, "Tras 30'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr26_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr26_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,154 :: 		andar_tras = 0b00000010;
	MOVLW       2
	MOVWF       _andar_tras+0 
;menu.c,155 :: 		delay_ms(2000);
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_menu_instrucao31:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao31
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao31
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao31
	NOP
	NOP
;menu.c,157 :: 		}
	GOTO        L_menu_instrucao32
L_menu_instrucao30:
;menu.c,159 :: 		else if(Button (&PORTD, 2, 250, 1))
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
	GOTO        L_menu_instrucao33
;menu.c,161 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,162 :: 		lcd_out (1,2, "Selec. Andar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr27_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr27_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,163 :: 		lcd_out (2,2, "Tras 45'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr28_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr28_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,164 :: 		andar_tras = 0b00000011;
	MOVLW       3
	MOVWF       _andar_tras+0 
;menu.c,165 :: 		delay_ms(2000);
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_menu_instrucao34:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao34
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao34
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao34
	NOP
	NOP
;menu.c,166 :: 		}
	GOTO        L_menu_instrucao35
L_menu_instrucao33:
;menu.c,168 :: 		else if(Button (&PORTD, 3, 250, 1))
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
	GOTO        L_menu_instrucao36
;menu.c,170 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,171 :: 		lcd_out (1,2, "Selec. Andar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr29_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr29_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,172 :: 		lcd_out (2,2, "Tras 60'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr30_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr30_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,173 :: 		andar_tras = 0b00000100;
	MOVLW       4
	MOVWF       _andar_tras+0 
;menu.c,174 :: 		delay_ms(2000);
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_menu_instrucao37:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao37
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao37
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao37
	NOP
	NOP
;menu.c,175 :: 		}
	GOTO        L_menu_instrucao38
L_menu_instrucao36:
;menu.c,179 :: 		goto Menu_5;
	GOTO        ___menu_instrucao_Menu_5
;menu.c,180 :: 		}
L_menu_instrucao38:
L_menu_instrucao35:
L_menu_instrucao32:
L_menu_instrucao29:
;menu.c,182 :: 		}
	GOTO        L_menu_instrucao39
L_menu_instrucao25:
;menu.c,186 :: 		goto Menu_3;
	GOTO        ___menu_instrucao_Menu_3
;menu.c,187 :: 		}
L_menu_instrucao39:
L_menu_instrucao24:
;menu.c,188 :: 		}
	GOTO        L_menu_instrucao40
L_menu_instrucao8:
;menu.c,190 :: 		else if(Button (&PORTD, 1, 250, 1))            //Segue a mesma lógica da escolha anterior, mas agora com esquerda/direita
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
	GOTO        L_menu_instrucao41
;menu.c,192 :: 		Menu_6:                                   //conforme selecionado
___menu_instrucao_Menu_6:
;menu.c,193 :: 		delay_ms(700);
	MOVLW       18
	MOVWF       R11, 0
	MOVLW       194
	MOVWF       R12, 0
	MOVLW       102
	MOVWF       R13, 0
L_menu_instrucao42:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao42
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao42
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao42
	NOP
;menu.c,194 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,195 :: 		lcd_out (1,2, "Selec. Rotac.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr31_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr31_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,196 :: 		lcd_out (2,3, "Esqu. Dir.");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr32_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr32_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,198 :: 		if(Button (&PORTD, 0, 250, 1))
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
	GOTO        L_menu_instrucao43
;menu.c,200 :: 		Menu_7:
___menu_instrucao_Menu_7:
;menu.c,201 :: 		delay_ms(700);
	MOVLW       18
	MOVWF       R11, 0
	MOVLW       194
	MOVWF       R12, 0
	MOVLW       102
	MOVWF       R13, 0
L_menu_instrucao44:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao44
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao44
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao44
	NOP
;menu.c,202 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,203 :: 		lcd_out (1,2, "Rotac. Esqu.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr33_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr33_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,204 :: 		lcd_out (2,1, "30' 45' 60' 90'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr34_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr34_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,206 :: 		if(Button (&PORTD, 0, 250, 1))
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
	GOTO        L_menu_instrucao45
;menu.c,208 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,209 :: 		lcd_out (1,2, "Selec. Rotac.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr35_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr35_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,210 :: 		lcd_out (2,3, "Esqu. 30'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr36_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr36_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,211 :: 		rotac_esq = 0b00000001;
	MOVLW       1
	MOVWF       _rotac_esq+0 
;menu.c,212 :: 		delay_ms(2000);
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_menu_instrucao46:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao46
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao46
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao46
	NOP
	NOP
;menu.c,213 :: 		}
	GOTO        L_menu_instrucao47
L_menu_instrucao45:
;menu.c,215 :: 		else if(Button (&PORTD, 1, 250, 1))
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
	GOTO        L_menu_instrucao48
;menu.c,217 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,218 :: 		lcd_out (1,2, "Selec. Rotac.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr37_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr37_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,219 :: 		lcd_out (2,3, "Esqu. 45'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr38_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr38_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,220 :: 		rotac_esq = 0b00000010;
	MOVLW       2
	MOVWF       _rotac_esq+0 
;menu.c,221 :: 		delay_ms(2000);
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_menu_instrucao49:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao49
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao49
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao49
	NOP
	NOP
;menu.c,222 :: 		}
	GOTO        L_menu_instrucao50
L_menu_instrucao48:
;menu.c,224 :: 		else if(Button (&PORTD, 2, 250, 1))
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
	GOTO        L_menu_instrucao51
;menu.c,226 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,227 :: 		lcd_out (1,2, "Selec. Rotac.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr39_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr39_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,228 :: 		lcd_out (2,3, "Esqu. 60'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr40_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr40_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,229 :: 		rotac_esq = 0b00000011;
	MOVLW       3
	MOVWF       _rotac_esq+0 
;menu.c,230 :: 		delay_ms(2000);
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_menu_instrucao52:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao52
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao52
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao52
	NOP
	NOP
;menu.c,231 :: 		}
	GOTO        L_menu_instrucao53
L_menu_instrucao51:
;menu.c,233 :: 		else if(Button (&PORTD, 3, 250, 1))
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
	GOTO        L_menu_instrucao54
;menu.c,235 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,236 :: 		lcd_out (1,2, "Selec. Rotac.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr41_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr41_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,237 :: 		lcd_out (2,3, "Esqu. 90'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr42_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr42_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,238 :: 		rotac_esq = 0b00000100;
	MOVLW       4
	MOVWF       _rotac_esq+0 
;menu.c,239 :: 		delay_ms(2000);
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_menu_instrucao55:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao55
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao55
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao55
	NOP
	NOP
;menu.c,240 :: 		}
	GOTO        L_menu_instrucao56
L_menu_instrucao54:
;menu.c,243 :: 		goto Menu_7;
	GOTO        ___menu_instrucao_Menu_7
L_menu_instrucao56:
L_menu_instrucao53:
L_menu_instrucao50:
L_menu_instrucao47:
;menu.c,246 :: 		}
	GOTO        L_menu_instrucao57
L_menu_instrucao43:
;menu.c,248 :: 		else if(Button (&PORTD, 1, 250, 1))
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
	GOTO        L_menu_instrucao58
;menu.c,250 :: 		Menu_8:
___menu_instrucao_Menu_8:
;menu.c,251 :: 		delay_ms(700);
	MOVLW       18
	MOVWF       R11, 0
	MOVLW       194
	MOVWF       R12, 0
	MOVLW       102
	MOVWF       R13, 0
L_menu_instrucao59:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao59
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao59
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao59
	NOP
;menu.c,252 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,253 :: 		lcd_out (1,2, "Rotac. Dir.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr43_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr43_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,254 :: 		lcd_out (2,1, "30' 45' 60' 90'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr44_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr44_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,256 :: 		if(Button (&PORTD, 0, 250, 1))
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
	GOTO        L_menu_instrucao60
;menu.c,258 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,259 :: 		lcd_out (1,2, "Selec. Rotac.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr45_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr45_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,260 :: 		lcd_out (2,3, "Dir. 30'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr46_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr46_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,261 :: 		rotac_dir = 0b00000001;
	MOVLW       1
	MOVWF       _rotac_dir+0 
;menu.c,262 :: 		delay_ms(2000);
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_menu_instrucao61:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao61
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao61
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao61
	NOP
	NOP
;menu.c,263 :: 		}
	GOTO        L_menu_instrucao62
L_menu_instrucao60:
;menu.c,265 :: 		else if(Button (&PORTD, 1, 250, 1))
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
	GOTO        L_menu_instrucao63
;menu.c,267 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,268 :: 		lcd_out (1,2, "Selec. Rotac.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr47_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr47_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,269 :: 		lcd_out (2,3, "Dir. 45'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr48_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr48_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,270 :: 		rotac_dir = 0b00000010;
	MOVLW       2
	MOVWF       _rotac_dir+0 
;menu.c,271 :: 		delay_ms(2000);
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_menu_instrucao64:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao64
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao64
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao64
	NOP
	NOP
;menu.c,272 :: 		}
	GOTO        L_menu_instrucao65
L_menu_instrucao63:
;menu.c,274 :: 		else if(Button (&PORTD, 2, 250, 1))
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
	GOTO        L_menu_instrucao66
;menu.c,276 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,277 :: 		lcd_out (1,2, "Selec. Rotac.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr49_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr49_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,278 :: 		lcd_out (2,3, "Dir. 60'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr50_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr50_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,279 :: 		rotac_dir = 0b00000011;
	MOVLW       3
	MOVWF       _rotac_dir+0 
;menu.c,280 :: 		delay_ms(2000);
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_menu_instrucao67:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao67
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao67
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao67
	NOP
	NOP
;menu.c,281 :: 		}
	GOTO        L_menu_instrucao68
L_menu_instrucao66:
;menu.c,283 :: 		else if(Button (&PORTD, 3, 250, 1))
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
	GOTO        L_menu_instrucao69
;menu.c,285 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,286 :: 		lcd_out (1,2, "Selec. Rotac.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr51_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr51_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,287 :: 		lcd_out (2,3, "Dir. 90'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr52_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr52_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,288 :: 		rotac_dir = 0b00000100;
	MOVLW       4
	MOVWF       _rotac_dir+0 
;menu.c,289 :: 		delay_ms(2000);
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_menu_instrucao70:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao70
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao70
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao70
	NOP
	NOP
;menu.c,290 :: 		}
	GOTO        L_menu_instrucao71
L_menu_instrucao69:
;menu.c,293 :: 		goto Menu_8;
	GOTO        ___menu_instrucao_Menu_8
L_menu_instrucao71:
L_menu_instrucao68:
L_menu_instrucao65:
L_menu_instrucao62:
;menu.c,295 :: 		}
	GOTO        L_menu_instrucao72
L_menu_instrucao58:
;menu.c,299 :: 		goto Menu_6;
	GOTO        ___menu_instrucao_Menu_6
;menu.c,300 :: 		}
L_menu_instrucao72:
L_menu_instrucao57:
;menu.c,301 :: 		}
	GOTO        L_menu_instrucao73
L_menu_instrucao41:
;menu.c,305 :: 		goto Menu_2;
	GOTO        ___menu_instrucao_Menu_2
;menu.c,306 :: 		}
L_menu_instrucao73:
L_menu_instrucao40:
;menu.c,307 :: 		}
	GOTO        L_menu_instrucao74
L_menu_instrucao6:
;menu.c,309 :: 		else if(Button (&PORTD, 1, 250, 1))         //Funcao selecionada caso o usuario resolva
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
	GOTO        L_menu_instrucao75
;menu.c,314 :: 		x1 = 48;
	MOVLW       48
	MOVWF       menu_instrucao_x1_L0+0 
	MOVLW       0
	MOVWF       menu_instrucao_x1_L0+1 
;menu.c,315 :: 		x2 = 48;
	MOVLW       48
	MOVWF       menu_instrucao_x2_L0+0 
	MOVLW       0
	MOVWF       menu_instrucao_x2_L0+1 
;menu.c,316 :: 		x3 = 48;
	MOVLW       48
	MOVWF       menu_instrucao_x3_L0+0 
	MOVLW       0
	MOVWF       menu_instrucao_x3_L0+1 
;menu.c,317 :: 		x4 = 48;
	MOVLW       48
	MOVWF       menu_instrucao_x4_L0+0 
	MOVLW       0
	MOVWF       menu_instrucao_x4_L0+1 
;menu.c,319 :: 		y1 = 0;
	CLRF        menu_instrucao_y1_L0+0 
;menu.c,320 :: 		y2 = 0;
	CLRF        menu_instrucao_y2_L0+0 
;menu.c,321 :: 		y3 = 0;
	CLRF        menu_instrucao_y3_L0+0 
;menu.c,322 :: 		y4 = 0;
	CLRF        menu_instrucao_y4_L0+0 
;menu.c,324 :: 		teste1= 0;
	BCF         menu_instrucao_teste1_L0+0, BitPos(menu_instrucao_teste1_L0+0) 
;menu.c,325 :: 		teste2= 0;
	BCF         menu_instrucao_teste2_L0+0, BitPos(menu_instrucao_teste2_L0+0) 
;menu.c,326 :: 		teste3= 0;
	BCF         menu_instrucao_teste3_L0+0, BitPos(menu_instrucao_teste3_L0+0) 
;menu.c,327 :: 		teste4= 0;
	BCF         menu_instrucao_teste4_L0+0, BitPos(menu_instrucao_teste4_L0+0) 
;menu.c,329 :: 		do {
L_menu_instrucao76:
;menu.c,330 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;menu.c,331 :: 		Lcd_Out (1,2, "Selec. Posicao");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr53_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr53_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,332 :: 		Lcd_Out (2,8, "0000");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr54_menu+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr54_menu+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;menu.c,334 :: 		if ((Button (&PORTD, 0, 150, 1))  && (teste1 == 0))
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       150
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_menu_instrucao81
	BTFSC       menu_instrucao_teste1_L0+0, BitPos(menu_instrucao_teste1_L0+0) 
	GOTO        L_menu_instrucao81
L__menu_instrucao123:
;menu.c,336 :: 		x1 = 49;
	MOVLW       49
	MOVWF       menu_instrucao_x1_L0+0 
	MOVLW       0
	MOVWF       menu_instrucao_x1_L0+1 
;menu.c,337 :: 		teste1 = !teste1;
	BTG         menu_instrucao_teste1_L0+0, BitPos(menu_instrucao_teste1_L0+0) 
;menu.c,338 :: 		y1 = 128;
	MOVLW       128
	MOVWF       menu_instrucao_y1_L0+0 
;menu.c,339 :: 		}
	GOTO        L_menu_instrucao82
L_menu_instrucao81:
;menu.c,341 :: 		else if ((Button (&PORTD, 0, 150, 1)) && (teste1== 1))
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       150
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_menu_instrucao85
	BTFSS       menu_instrucao_teste1_L0+0, BitPos(menu_instrucao_teste1_L0+0) 
	GOTO        L_menu_instrucao85
L__menu_instrucao122:
;menu.c,343 :: 		x1 = 48;
	MOVLW       48
	MOVWF       menu_instrucao_x1_L0+0 
	MOVLW       0
	MOVWF       menu_instrucao_x1_L0+1 
;menu.c,344 :: 		teste1 = !teste1;
	BTG         menu_instrucao_teste1_L0+0, BitPos(menu_instrucao_teste1_L0+0) 
;menu.c,345 :: 		y1 = 0;
	CLRF        menu_instrucao_y1_L0+0 
;menu.c,346 :: 		}
	GOTO        L_menu_instrucao86
L_menu_instrucao85:
;menu.c,348 :: 		else if ((Button (&PORTD, 1, 150, 1)) && (teste2 == 0))
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       1
	MOVWF       FARG_Button_pin+0 
	MOVLW       150
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_menu_instrucao89
	BTFSC       menu_instrucao_teste2_L0+0, BitPos(menu_instrucao_teste2_L0+0) 
	GOTO        L_menu_instrucao89
L__menu_instrucao121:
;menu.c,350 :: 		x2 = 49;
	MOVLW       49
	MOVWF       menu_instrucao_x2_L0+0 
	MOVLW       0
	MOVWF       menu_instrucao_x2_L0+1 
;menu.c,351 :: 		teste2 = !teste2;
	BTG         menu_instrucao_teste2_L0+0, BitPos(menu_instrucao_teste2_L0+0) 
;menu.c,352 :: 		y2 = 64;
	MOVLW       64
	MOVWF       menu_instrucao_y2_L0+0 
;menu.c,353 :: 		}
	GOTO        L_menu_instrucao90
L_menu_instrucao89:
;menu.c,355 :: 		else if ((Button (&PORTD, 1, 150, 1))  && (teste2== 1))
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       1
	MOVWF       FARG_Button_pin+0 
	MOVLW       150
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_menu_instrucao93
	BTFSS       menu_instrucao_teste2_L0+0, BitPos(menu_instrucao_teste2_L0+0) 
	GOTO        L_menu_instrucao93
L__menu_instrucao120:
;menu.c,357 :: 		x2 = 48;
	MOVLW       48
	MOVWF       menu_instrucao_x2_L0+0 
	MOVLW       0
	MOVWF       menu_instrucao_x2_L0+1 
;menu.c,358 :: 		teste2 = !teste2;
	BTG         menu_instrucao_teste2_L0+0, BitPos(menu_instrucao_teste2_L0+0) 
;menu.c,359 :: 		y2 = 0;
	CLRF        menu_instrucao_y2_L0+0 
;menu.c,360 :: 		}
	GOTO        L_menu_instrucao94
L_menu_instrucao93:
;menu.c,362 :: 		else if ((Button (&PORTD, 2, 150, 1))  && (teste3 == 0))
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       150
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_menu_instrucao97
	BTFSC       menu_instrucao_teste3_L0+0, BitPos(menu_instrucao_teste3_L0+0) 
	GOTO        L_menu_instrucao97
L__menu_instrucao119:
;menu.c,364 :: 		x3 = 49;
	MOVLW       49
	MOVWF       menu_instrucao_x3_L0+0 
	MOVLW       0
	MOVWF       menu_instrucao_x3_L0+1 
;menu.c,365 :: 		teste3 = !teste3;
	BTG         menu_instrucao_teste3_L0+0, BitPos(menu_instrucao_teste3_L0+0) 
;menu.c,366 :: 		y3 = 32;
	MOVLW       32
	MOVWF       menu_instrucao_y3_L0+0 
;menu.c,367 :: 		}
	GOTO        L_menu_instrucao98
L_menu_instrucao97:
;menu.c,369 :: 		else if ((Button (&PORTD, 2, 150, 1))  && (teste3== 1))
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       150
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_menu_instrucao101
	BTFSS       menu_instrucao_teste3_L0+0, BitPos(menu_instrucao_teste3_L0+0) 
	GOTO        L_menu_instrucao101
L__menu_instrucao118:
;menu.c,371 :: 		x3 = 48;
	MOVLW       48
	MOVWF       menu_instrucao_x3_L0+0 
	MOVLW       0
	MOVWF       menu_instrucao_x3_L0+1 
;menu.c,372 :: 		teste3 = !teste3;
	BTG         menu_instrucao_teste3_L0+0, BitPos(menu_instrucao_teste3_L0+0) 
;menu.c,373 :: 		y3 = 0;
	CLRF        menu_instrucao_y3_L0+0 
;menu.c,374 :: 		}
	GOTO        L_menu_instrucao102
L_menu_instrucao101:
;menu.c,376 :: 		else if ((Button (&PORTD, 3, 150, 1)) && (teste4 == 0))
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       3
	MOVWF       FARG_Button_pin+0 
	MOVLW       150
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_menu_instrucao105
	BTFSC       menu_instrucao_teste4_L0+0, BitPos(menu_instrucao_teste4_L0+0) 
	GOTO        L_menu_instrucao105
L__menu_instrucao117:
;menu.c,378 :: 		x4 = 49;
	MOVLW       49
	MOVWF       menu_instrucao_x4_L0+0 
	MOVLW       0
	MOVWF       menu_instrucao_x4_L0+1 
;menu.c,379 :: 		teste4 = !teste4;
	BTG         menu_instrucao_teste4_L0+0, BitPos(menu_instrucao_teste4_L0+0) 
;menu.c,380 :: 		y4 = 16;
	MOVLW       16
	MOVWF       menu_instrucao_y4_L0+0 
;menu.c,381 :: 		}
	GOTO        L_menu_instrucao106
L_menu_instrucao105:
;menu.c,383 :: 		else if ((Button (&PORTD, 3, 150, 1))  && (teste4== 1))
	MOVLW       PORTD+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       3
	MOVWF       FARG_Button_pin+0 
	MOVLW       150
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_menu_instrucao109
	BTFSS       menu_instrucao_teste4_L0+0, BitPos(menu_instrucao_teste4_L0+0) 
	GOTO        L_menu_instrucao109
L__menu_instrucao116:
;menu.c,385 :: 		x4 = 48;
	MOVLW       48
	MOVWF       menu_instrucao_x4_L0+0 
	MOVLW       0
	MOVWF       menu_instrucao_x4_L0+1 
;menu.c,386 :: 		teste4  = !teste4;
	BTG         menu_instrucao_teste4_L0+0, BitPos(menu_instrucao_teste4_L0+0) 
;menu.c,387 :: 		y4 = 0;
	CLRF        menu_instrucao_y4_L0+0 
;menu.c,388 :: 		}
L_menu_instrucao109:
L_menu_instrucao106:
L_menu_instrucao102:
L_menu_instrucao98:
L_menu_instrucao94:
L_menu_instrucao90:
L_menu_instrucao86:
L_menu_instrucao82:
;menu.c,390 :: 		instrucao = ((y1 + y2) + (y3 + y4));
	MOVF        menu_instrucao_y2_L0+0, 0 
	ADDWF       menu_instrucao_y1_L0+0, 0 
	MOVWF       _instrucao+0 
	MOVF        menu_instrucao_y4_L0+0, 0 
	ADDWF       menu_instrucao_y3_L0+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	ADDWF       _instrucao+0, 1 
;menu.c,392 :: 		lcd_chr (2,4, x1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVF        menu_instrucao_x1_L0+0, 0 
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;menu.c,393 :: 		lcd_chr (2,5, x2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVF        menu_instrucao_x2_L0+0, 0 
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;menu.c,394 :: 		lcd_chr (2,6, x3);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVF        menu_instrucao_x3_L0+0, 0 
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;menu.c,395 :: 		lcd_chr (2,7, x4);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVF        menu_instrucao_x4_L0+0, 0 
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;menu.c,396 :: 		delay_ms (150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       207
	MOVWF       R12, 0
	MOVLW       1
	MOVWF       R13, 0
L_menu_instrucao110:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao110
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao110
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao110
	NOP
	NOP
;menu.c,398 :: 		}while (!(Button(&PORTC, 0, 250, 1)));
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
	GOTO        L_menu_instrucao76
;menu.c,399 :: 		}
	GOTO        L_menu_instrucao111
L_menu_instrucao75:
;menu.c,403 :: 		goto Menu_1;
	GOTO        ___menu_instrucao_Menu_1
;menu.c,404 :: 		}
L_menu_instrucao111:
L_menu_instrucao74:
;menu.c,405 :: 		}
L_menu_instrucao4:
;menu.c,407 :: 		if ((rotinas == 0) && (instrucao == 0) && (andar_frente == 0) && (andar_tras == 0) && (rotac_esq == 0) && (rotac_dir == 0)) {
	MOVF        _rotinas+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_menu_instrucao114
	MOVF        _instrucao+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_menu_instrucao114
	MOVF        _andar_frente+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_menu_instrucao114
	MOVF        _andar_tras+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_menu_instrucao114
	MOVF        _rotac_esq+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_menu_instrucao114
	MOVF        _rotac_dir+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_menu_instrucao114
L__menu_instrucao115:
;menu.c,409 :: 		goto menu;
	GOTO        ___menu_instrucao_menu
;menu.c,410 :: 		}
L_menu_instrucao114:
;menu.c,412 :: 		}//~~
L_end_menu_instrucao:
	RETURN      0
; end of _menu_instrucao
