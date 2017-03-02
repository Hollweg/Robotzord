
_contador:

;encoder.c,26 :: 		void contador(int esl,int drl){
;encoder.c,28 :: 		int es = 0,dr = 0 ;
	CLRF        contador_es_L0+0 
	CLRF        contador_es_L0+1 
	CLRF        contador_dr_L0+0 
	CLRF        contador_dr_L0+1 
;encoder.c,31 :: 		one1 = 0;
	BCF         contador_one1_L0+0, BitPos(contador_one1_L0+0) 
;encoder.c,32 :: 		one2 = 0;
	BCF         contador_one2_L0+0, BitPos(contador_one2_L0+0) 
;encoder.c,33 :: 		brkes = 1;
	BSF         contador_brkes_L0+0, BitPos(contador_brkes_L0+0) 
;encoder.c,34 :: 		brkdr = 1;
	BSF         contador_brkdr_L0+0, BitPos(contador_brkdr_L0+0) 
;encoder.c,36 :: 		if(reset == 1){
	BTFSS       _reset+0, BitPos(_reset+0) 
	GOTO        L_contador0
;encoder.c,38 :: 		one1 = 1;
	BSF         contador_one1_L0+0, BitPos(contador_one1_L0+0) 
;encoder.c,39 :: 		one2 = 1;
	BSF         contador_one2_L0+0, BitPos(contador_one2_L0+0) 
;encoder.c,41 :: 		}
L_contador0:
;encoder.c,43 :: 		while ( (es < esl || dr < drl)  ||  ((brkes || brkdr) == 1)){
L_contador1:
	MOVLW       128
	XORWF       contador_es_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_contador_esl+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__contador52
	MOVF        FARG_contador_esl+0, 0 
	SUBWF       contador_es_L0+0, 0 
L__contador52:
	BTFSS       STATUS+0, 0 
	GOTO        L__contador49
	MOVLW       128
	XORWF       contador_dr_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_contador_drl+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__contador53
	MOVF        FARG_contador_drl+0, 0 
	SUBWF       contador_dr_L0+0, 0 
L__contador53:
	BTFSS       STATUS+0, 0 
	GOTO        L__contador49
L__contador50:
	BTFSC       contador_brkes_L0+0, BitPos(contador_brkes_L0+0) 
	GOTO        L_contador6
	BTFSC       contador_brkdr_L0+0, BitPos(contador_brkdr_L0+0) 
	GOTO        L_contador6
	CLRF        R1 
	GOTO        L_contador5
L_contador6:
	MOVLW       1
	MOVWF       R1 
L_contador5:
	MOVF        R1, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__contador49
	GOTO        L_contador2
L__contador49:
;encoder.c,45 :: 		if(es < esl){
	MOVLW       128
	XORWF       contador_es_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_contador_esl+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__contador54
	MOVF        FARG_contador_esl+0, 0 
	SUBWF       contador_es_L0+0, 0 
L__contador54:
	BTFSC       STATUS+0, 0 
	GOTO        L_contador9
;encoder.c,46 :: 		if(one1 == 0){
	BTFSC       contador_one1_L0+0, BitPos(contador_one1_L0+0) 
	GOTO        L_contador10
;encoder.c,47 :: 		if (portc.f4 == 1) {
	BTFSS       PORTC+0, 4 
	GOTO        L_contador11
;encoder.c,48 :: 		es = es +1;
	INFSNZ      contador_es_L0+0, 1 
	INCF        contador_es_L0+1, 1 
;encoder.c,49 :: 		one1 = 1;
	BSF         contador_one1_L0+0, BitPos(contador_one1_L0+0) 
;encoder.c,50 :: 		}
L_contador11:
;encoder.c,51 :: 		}
L_contador10:
;encoder.c,53 :: 		if(one1 = 1)
	BSF         contador_one1_L0+0, BitPos(contador_one1_L0+0) 
	BTFSS       contador_one1_L0+0, BitPos(contador_one1_L0+0) 
	GOTO        L_contador12
;encoder.c,54 :: 		one1 = portc.f4;
	BTFSC       PORTC+0, 4 
	GOTO        L__contador55
	BCF         contador_one1_L0+0, BitPos(contador_one1_L0+0) 
	GOTO        L__contador56
L__contador55:
	BSF         contador_one1_L0+0, BitPos(contador_one1_L0+0) 
L__contador56:
L_contador12:
;encoder.c,60 :: 		}
	GOTO        L_contador13
L_contador9:
;encoder.c,63 :: 		portd.f7 = 0;
	BCF         PORTD+0, 7 
;encoder.c,64 :: 		portd.f6 = 0;
	BCF         PORTD+0, 6 
;encoder.c,65 :: 		brkes = 0;
	BCF         contador_brkes_L0+0, BitPos(contador_brkes_L0+0) 
;encoder.c,66 :: 		}
L_contador13:
;encoder.c,68 :: 		if(dr <drl){
	MOVLW       128
	XORWF       contador_dr_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_contador_drl+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__contador57
	MOVF        FARG_contador_drl+0, 0 
	SUBWF       contador_dr_L0+0, 0 
L__contador57:
	BTFSC       STATUS+0, 0 
	GOTO        L_contador14
;encoder.c,70 :: 		if(one2 == 0){
	BTFSC       contador_one2_L0+0, BitPos(contador_one2_L0+0) 
	GOTO        L_contador15
;encoder.c,71 :: 		if (portc.f5 == 1){
	BTFSS       PORTC+0, 5 
	GOTO        L_contador16
;encoder.c,72 :: 		dr = dr + 1;
	INFSNZ      contador_dr_L0+0, 1 
	INCF        contador_dr_L0+1, 1 
;encoder.c,73 :: 		one2 = 1;
	BSF         contador_one2_L0+0, BitPos(contador_one2_L0+0) 
;encoder.c,74 :: 		}
L_contador16:
;encoder.c,75 :: 		}
L_contador15:
;encoder.c,77 :: 		if(one2 = 1)
	BSF         contador_one2_L0+0, BitPos(contador_one2_L0+0) 
	BTFSS       contador_one2_L0+0, BitPos(contador_one2_L0+0) 
	GOTO        L_contador17
;encoder.c,78 :: 		one2 = portc.f5;
	BTFSC       PORTC+0, 5 
	GOTO        L__contador58
	BCF         contador_one2_L0+0, BitPos(contador_one2_L0+0) 
	GOTO        L__contador59
L__contador58:
	BSF         contador_one2_L0+0, BitPos(contador_one2_L0+0) 
L__contador59:
L_contador17:
;encoder.c,83 :: 		}
	GOTO        L_contador18
L_contador14:
;encoder.c,86 :: 		portd.f5 = 0;
	BCF         PORTD+0, 5 
;encoder.c,87 :: 		portd.f4 = 0;
	BCF         PORTD+0, 4 
;encoder.c,88 :: 		brkdr = 0;
	BCF         contador_brkdr_L0+0, BitPos(contador_brkdr_L0+0) 
;encoder.c,89 :: 		}
L_contador18:
;encoder.c,90 :: 		}
	GOTO        L_contador1
L_contador2:
;encoder.c,91 :: 		reset = 1;
	BSF         _reset+0, BitPos(_reset+0) 
;encoder.c,93 :: 		}//~~
L_end_contador:
	RETURN      0
; end of _contador

_codec:

;encoder.c,108 :: 		void codec(int inst){
;encoder.c,110 :: 		if ((inst & 0b10000000)>0){
	MOVLW       128
	ANDWF       FARG_codec_inst+0, 0 
	MOVWF       R1 
	MOVF        FARG_codec_inst+1, 0 
	MOVWF       R2 
	MOVLW       0
	ANDWF       R2, 1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec61
	MOVF        R1, 0 
	SUBLW       0
L__codec61:
	BTFSC       STATUS+0, 0 
	GOTO        L_codec19
;encoder.c,112 :: 		if((inst & 0b01000000)>0){                       //testa o segundo bit,caso seja 1 deslocamento
	MOVLW       64
	ANDWF       FARG_codec_inst+0, 0 
	MOVWF       R1 
	MOVF        FARG_codec_inst+1, 0 
	MOVWF       R2 
	MOVLW       0
	ANDWF       R2, 1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec62
	MOVF        R1, 0 
	SUBLW       0
L__codec62:
	BTFSC       STATUS+0, 0 
	GOTO        L_codec20
;encoder.c,114 :: 		portd = 0b10100000;
	MOVLW       160
	MOVWF       PORTD+0 
;encoder.c,115 :: 		switch(inst) {                           //indentifica o modulo do deslocamento para frente.
	GOTO        L_codec21
;encoder.c,116 :: 		case(0b11110000):{
L_codec23:
;encoder.c,117 :: 		esl = 47;
	MOVLW       47
	MOVWF       _esl+0 
	MOVLW       0
	MOVWF       _esl+1 
;encoder.c,118 :: 		drl = 47;
	MOVLW       47
	MOVWF       _drl+0 
	MOVLW       0
	MOVWF       _drl+1 
;encoder.c,119 :: 		break;
	GOTO        L_codec22
;encoder.c,122 :: 		case(0b11100000):{
L_codec24:
;encoder.c,123 :: 		esl = 35;
	MOVLW       35
	MOVWF       _esl+0 
	MOVLW       0
	MOVWF       _esl+1 
;encoder.c,124 :: 		drl = 35;
	MOVLW       35
	MOVWF       _drl+0 
	MOVLW       0
	MOVWF       _drl+1 
;encoder.c,125 :: 		break;
	GOTO        L_codec22
;encoder.c,129 :: 		case(0b11010000):{
L_codec25:
;encoder.c,130 :: 		esl = 24;
	MOVLW       24
	MOVWF       _esl+0 
	MOVLW       0
	MOVWF       _esl+1 
;encoder.c,131 :: 		drl = 24;
	MOVLW       24
	MOVWF       _drl+0 
	MOVLW       0
	MOVWF       _drl+1 
;encoder.c,132 :: 		break;
	GOTO        L_codec22
;encoder.c,135 :: 		case(0b11000000): {
L_codec26:
;encoder.c,136 :: 		esl = 12;
	MOVLW       12
	MOVWF       _esl+0 
	MOVLW       0
	MOVWF       _esl+1 
;encoder.c,137 :: 		drl = 12;
	MOVLW       12
	MOVWF       _drl+0 
	MOVLW       0
	MOVWF       _drl+1 
;encoder.c,138 :: 		break;
	GOTO        L_codec22
;encoder.c,141 :: 		}
L_codec21:
	MOVLW       0
	XORWF       FARG_codec_inst+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec63
	MOVLW       240
	XORWF       FARG_codec_inst+0, 0 
L__codec63:
	BTFSC       STATUS+0, 2 
	GOTO        L_codec23
	MOVLW       0
	XORWF       FARG_codec_inst+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec64
	MOVLW       224
	XORWF       FARG_codec_inst+0, 0 
L__codec64:
	BTFSC       STATUS+0, 2 
	GOTO        L_codec24
	MOVLW       0
	XORWF       FARG_codec_inst+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec65
	MOVLW       208
	XORWF       FARG_codec_inst+0, 0 
L__codec65:
	BTFSC       STATUS+0, 2 
	GOTO        L_codec25
	MOVLW       0
	XORWF       FARG_codec_inst+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec66
	MOVLW       192
	XORWF       FARG_codec_inst+0, 0 
L__codec66:
	BTFSC       STATUS+0, 2 
	GOTO        L_codec26
L_codec22:
;encoder.c,143 :: 		}
	GOTO        L_codec27
L_codec20:
;encoder.c,145 :: 		portd = 0b01010000;
	MOVLW       80
	MOVWF       PORTD+0 
;encoder.c,146 :: 		switch(inst){             //indentifica o modulo do deslocamento para tras.
	GOTO        L_codec28
;encoder.c,148 :: 		case(0b10110000):{
L_codec30:
;encoder.c,149 :: 		esl = 47;
	MOVLW       47
	MOVWF       _esl+0 
	MOVLW       0
	MOVWF       _esl+1 
;encoder.c,150 :: 		drl = 47;
	MOVLW       47
	MOVWF       _drl+0 
	MOVLW       0
	MOVWF       _drl+1 
;encoder.c,151 :: 		break;
	GOTO        L_codec29
;encoder.c,153 :: 		case(0b10100000):{
L_codec31:
;encoder.c,154 :: 		esl = 35;
	MOVLW       35
	MOVWF       _esl+0 
	MOVLW       0
	MOVWF       _esl+1 
;encoder.c,155 :: 		drl = 35;
	MOVLW       35
	MOVWF       _drl+0 
	MOVLW       0
	MOVWF       _drl+1 
;encoder.c,156 :: 		break;
	GOTO        L_codec29
;encoder.c,159 :: 		case(0b10010000):{
L_codec32:
;encoder.c,160 :: 		esl = 24;
	MOVLW       24
	MOVWF       _esl+0 
	MOVLW       0
	MOVWF       _esl+1 
;encoder.c,161 :: 		drl = 24;
	MOVLW       24
	MOVWF       _drl+0 
	MOVLW       0
	MOVWF       _drl+1 
;encoder.c,162 :: 		break;
	GOTO        L_codec29
;encoder.c,165 :: 		case(0b10000000):{
L_codec33:
;encoder.c,166 :: 		esl = 12;
	MOVLW       12
	MOVWF       _esl+0 
	MOVLW       0
	MOVWF       _esl+1 
;encoder.c,167 :: 		drl = 12;
	MOVLW       12
	MOVWF       _drl+0 
	MOVLW       0
	MOVWF       _drl+1 
;encoder.c,168 :: 		break;
	GOTO        L_codec29
;encoder.c,170 :: 		}
L_codec28:
	MOVLW       0
	XORWF       FARG_codec_inst+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec67
	MOVLW       176
	XORWF       FARG_codec_inst+0, 0 
L__codec67:
	BTFSC       STATUS+0, 2 
	GOTO        L_codec30
	MOVLW       0
	XORWF       FARG_codec_inst+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec68
	MOVLW       160
	XORWF       FARG_codec_inst+0, 0 
L__codec68:
	BTFSC       STATUS+0, 2 
	GOTO        L_codec31
	MOVLW       0
	XORWF       FARG_codec_inst+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec69
	MOVLW       144
	XORWF       FARG_codec_inst+0, 0 
L__codec69:
	BTFSC       STATUS+0, 2 
	GOTO        L_codec32
	MOVLW       0
	XORWF       FARG_codec_inst+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec70
	MOVLW       128
	XORWF       FARG_codec_inst+0, 0 
L__codec70:
	BTFSC       STATUS+0, 2 
	GOTO        L_codec33
L_codec29:
;encoder.c,172 :: 		}
L_codec27:
;encoder.c,174 :: 		}
	GOTO        L_codec34
L_codec19:
;encoder.c,177 :: 		if((inst & 0b01000000)>0)    {                                 //indentifica o segundo bit,caso seja 1 rotação
	MOVLW       64
	ANDWF       FARG_codec_inst+0, 0 
	MOVWF       R1 
	MOVF        FARG_codec_inst+1, 0 
	MOVWF       R2 
	MOVLW       0
	ANDWF       R2, 1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec71
	MOVF        R1, 0 
	SUBLW       0
L__codec71:
	BTFSC       STATUS+0, 0 
	GOTO        L_codec35
;encoder.c,178 :: 		portd = 0b01100000;                                 //para a esquerda.
	MOVLW       96
	MOVWF       PORTD+0 
;encoder.c,179 :: 		switch(inst)   {                                    //seleciona o angulo de rotação para a esquerda.
	GOTO        L_codec36
;encoder.c,181 :: 		case(0b01110000):                  {
L_codec38:
;encoder.c,182 :: 		esl = 22;
	MOVLW       22
	MOVWF       _esl+0 
	MOVLW       0
	MOVWF       _esl+1 
;encoder.c,183 :: 		drl = 22;
	MOVLW       22
	MOVWF       _drl+0 
	MOVLW       0
	MOVWF       _drl+1 
;encoder.c,184 :: 		break;                 }
	GOTO        L_codec37
;encoder.c,186 :: 		case(0b01100000):                   {
L_codec39:
;encoder.c,187 :: 		esl = 16;
	MOVLW       16
	MOVWF       _esl+0 
	MOVLW       0
	MOVWF       _esl+1 
;encoder.c,188 :: 		drl = 16;
	MOVLW       16
	MOVWF       _drl+0 
	MOVLW       0
	MOVWF       _drl+1 
;encoder.c,189 :: 		break;            }
	GOTO        L_codec37
;encoder.c,192 :: 		case(0b01010000):                   {
L_codec40:
;encoder.c,193 :: 		esl = 11;
	MOVLW       11
	MOVWF       _esl+0 
	MOVLW       0
	MOVWF       _esl+1 
;encoder.c,194 :: 		drl = 11;
	MOVLW       11
	MOVWF       _drl+0 
	MOVLW       0
	MOVWF       _drl+1 
;encoder.c,195 :: 		break;            }
	GOTO        L_codec37
;encoder.c,197 :: 		case(0b01000000):                   {
L_codec41:
;encoder.c,198 :: 		esl = 5;
	MOVLW       5
	MOVWF       _esl+0 
	MOVLW       0
	MOVWF       _esl+1 
;encoder.c,199 :: 		drl = 5;
	MOVLW       5
	MOVWF       _drl+0 
	MOVLW       0
	MOVWF       _drl+1 
;encoder.c,200 :: 		break;            }
	GOTO        L_codec37
;encoder.c,202 :: 		}
L_codec36:
	MOVLW       0
	XORWF       FARG_codec_inst+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec72
	MOVLW       112
	XORWF       FARG_codec_inst+0, 0 
L__codec72:
	BTFSC       STATUS+0, 2 
	GOTO        L_codec38
	MOVLW       0
	XORWF       FARG_codec_inst+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec73
	MOVLW       96
	XORWF       FARG_codec_inst+0, 0 
L__codec73:
	BTFSC       STATUS+0, 2 
	GOTO        L_codec39
	MOVLW       0
	XORWF       FARG_codec_inst+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec74
	MOVLW       80
	XORWF       FARG_codec_inst+0, 0 
L__codec74:
	BTFSC       STATUS+0, 2 
	GOTO        L_codec40
	MOVLW       0
	XORWF       FARG_codec_inst+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec75
	MOVLW       64
	XORWF       FARG_codec_inst+0, 0 
L__codec75:
	BTFSC       STATUS+0, 2 
	GOTO        L_codec41
L_codec37:
;encoder.c,203 :: 		}
	GOTO        L_codec42
L_codec35:
;encoder.c,207 :: 		portd = 0b10010000;
	MOVLW       144
	MOVWF       PORTD+0 
;encoder.c,208 :: 		switch(inst)    {                       //selecona o angulo de rotação para a direita.
	GOTO        L_codec43
;encoder.c,210 :: 		case(0b00110000):                  {
L_codec45:
;encoder.c,211 :: 		esl = 22;
	MOVLW       22
	MOVWF       _esl+0 
	MOVLW       0
	MOVWF       _esl+1 
;encoder.c,212 :: 		drl = 22;
	MOVLW       22
	MOVWF       _drl+0 
	MOVLW       0
	MOVWF       _drl+1 
;encoder.c,213 :: 		break;           }
	GOTO        L_codec44
;encoder.c,215 :: 		case(0b00100000):                   {
L_codec46:
;encoder.c,216 :: 		esl = 16;
	MOVLW       16
	MOVWF       _esl+0 
	MOVLW       0
	MOVWF       _esl+1 
;encoder.c,217 :: 		drl = 16;
	MOVLW       16
	MOVWF       _drl+0 
	MOVLW       0
	MOVWF       _drl+1 
;encoder.c,218 :: 		break;            }
	GOTO        L_codec44
;encoder.c,220 :: 		case(0b00010000):                   {
L_codec47:
;encoder.c,221 :: 		esl = 11;
	MOVLW       11
	MOVWF       _esl+0 
	MOVLW       0
	MOVWF       _esl+1 
;encoder.c,222 :: 		drl = 11;
	MOVLW       11
	MOVWF       _drl+0 
	MOVLW       0
	MOVWF       _drl+1 
;encoder.c,223 :: 		break;            }
	GOTO        L_codec44
;encoder.c,225 :: 		case(0b00000000):                   {
L_codec48:
;encoder.c,226 :: 		esl = 5;
	MOVLW       5
	MOVWF       _esl+0 
	MOVLW       0
	MOVWF       _esl+1 
;encoder.c,227 :: 		drl = 5;
	MOVLW       5
	MOVWF       _drl+0 
	MOVLW       0
	MOVWF       _drl+1 
;encoder.c,228 :: 		break;          }
	GOTO        L_codec44
;encoder.c,229 :: 		}
L_codec43:
	MOVLW       0
	XORWF       FARG_codec_inst+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec76
	MOVLW       48
	XORWF       FARG_codec_inst+0, 0 
L__codec76:
	BTFSC       STATUS+0, 2 
	GOTO        L_codec45
	MOVLW       0
	XORWF       FARG_codec_inst+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec77
	MOVLW       32
	XORWF       FARG_codec_inst+0, 0 
L__codec77:
	BTFSC       STATUS+0, 2 
	GOTO        L_codec46
	MOVLW       0
	XORWF       FARG_codec_inst+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec78
	MOVLW       16
	XORWF       FARG_codec_inst+0, 0 
L__codec78:
	BTFSC       STATUS+0, 2 
	GOTO        L_codec47
	MOVLW       0
	XORWF       FARG_codec_inst+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec79
	MOVLW       0
	XORWF       FARG_codec_inst+0, 0 
L__codec79:
	BTFSC       STATUS+0, 2 
	GOTO        L_codec48
L_codec44:
;encoder.c,230 :: 		}
L_codec42:
;encoder.c,231 :: 		}
L_codec34:
;encoder.c,232 :: 		}//~~
L_end_codec:
	RETURN      0
; end of _codec
