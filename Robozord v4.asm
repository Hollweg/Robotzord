
_contador:

;Robozord v3.c,53 :: 		void contador(int esl,int drl){
;Robozord v3.c,55 :: 		int es = 0,dr = 0 ;
	CLRF        contador_es_L0+0 
	CLRF        contador_es_L0+1 
	CLRF        contador_dr_L0+0 
	CLRF        contador_dr_L0+1 
;Robozord v3.c,58 :: 		one1 = 0;
	BCF         contador_one1_L0+0, BitPos(contador_one1_L0+0) 
;Robozord v3.c,59 :: 		one2 = 0;
	BCF         contador_one2_L0+0, BitPos(contador_one2_L0+0) 
;Robozord v3.c,60 :: 		brkes = 1;
	BSF         contador_brkes_L0+0, BitPos(contador_brkes_L0+0) 
;Robozord v3.c,61 :: 		brkdr = 1;
	BSF         contador_brkdr_L0+0, BitPos(contador_brkdr_L0+0) 
;Robozord v3.c,63 :: 		if(reset == 1){
	BTFSS       _reset+0, BitPos(_reset+0) 
	GOTO        L_contador0
;Robozord v3.c,65 :: 		one1 = 1;
	BSF         contador_one1_L0+0, BitPos(contador_one1_L0+0) 
;Robozord v3.c,66 :: 		one2 = 1;
	BSF         contador_one2_L0+0, BitPos(contador_one2_L0+0) 
;Robozord v3.c,68 :: 		}
L_contador0:
;Robozord v3.c,70 :: 		while ( (es < esl || dr < drl)  ||  ((brkes || brkdr) == 1)){
L_contador1:
	MOVLW       128
	XORWF       contador_es_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_contador_esl+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__contador282
	MOVF        FARG_contador_esl+0, 0 
	SUBWF       contador_es_L0+0, 0 
L__contador282:
	BTFSS       STATUS+0, 0 
	GOTO        L__contador270
	MOVLW       128
	XORWF       contador_dr_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_contador_drl+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__contador283
	MOVF        FARG_contador_drl+0, 0 
	SUBWF       contador_dr_L0+0, 0 
L__contador283:
	BTFSS       STATUS+0, 0 
	GOTO        L__contador270
L__contador271:
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
	GOTO        L__contador270
	GOTO        L_contador2
L__contador270:
;Robozord v3.c,72 :: 		if(es < esl){
	MOVLW       128
	XORWF       contador_es_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_contador_esl+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__contador284
	MOVF        FARG_contador_esl+0, 0 
	SUBWF       contador_es_L0+0, 0 
L__contador284:
	BTFSC       STATUS+0, 0 
	GOTO        L_contador9
;Robozord v3.c,73 :: 		if(one1 == 0){
	BTFSC       contador_one1_L0+0, BitPos(contador_one1_L0+0) 
	GOTO        L_contador10
;Robozord v3.c,74 :: 		if (portc.f4 == 1) {
	BTFSS       PORTC+0, 4 
	GOTO        L_contador11
;Robozord v3.c,75 :: 		es = es +1;
	INFSNZ      contador_es_L0+0, 1 
	INCF        contador_es_L0+1, 1 
;Robozord v3.c,76 :: 		one1 = 1;
	BSF         contador_one1_L0+0, BitPos(contador_one1_L0+0) 
;Robozord v3.c,77 :: 		}
L_contador11:
;Robozord v3.c,78 :: 		}
L_contador10:
;Robozord v3.c,80 :: 		if(one1 = 1)
	BSF         contador_one1_L0+0, BitPos(contador_one1_L0+0) 
	BTFSS       contador_one1_L0+0, BitPos(contador_one1_L0+0) 
	GOTO        L_contador12
;Robozord v3.c,81 :: 		one1 = portc.f4;
	BTFSC       PORTC+0, 4 
	GOTO        L__contador285
	BCF         contador_one1_L0+0, BitPos(contador_one1_L0+0) 
	GOTO        L__contador286
L__contador285:
	BSF         contador_one1_L0+0, BitPos(contador_one1_L0+0) 
L__contador286:
L_contador12:
;Robozord v3.c,87 :: 		}
	GOTO        L_contador13
L_contador9:
;Robozord v3.c,90 :: 		portd.f7 = 0;
	BCF         PORTD+0, 7 
;Robozord v3.c,91 :: 		portd.f6 = 0;
	BCF         PORTD+0, 6 
;Robozord v3.c,92 :: 		brkes = 0;
	BCF         contador_brkes_L0+0, BitPos(contador_brkes_L0+0) 
;Robozord v3.c,93 :: 		}
L_contador13:
;Robozord v3.c,95 :: 		if(dr <drl){
	MOVLW       128
	XORWF       contador_dr_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_contador_drl+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__contador287
	MOVF        FARG_contador_drl+0, 0 
	SUBWF       contador_dr_L0+0, 0 
L__contador287:
	BTFSC       STATUS+0, 0 
	GOTO        L_contador14
;Robozord v3.c,97 :: 		if(one2 == 0){
	BTFSC       contador_one2_L0+0, BitPos(contador_one2_L0+0) 
	GOTO        L_contador15
;Robozord v3.c,98 :: 		if (portc.f5 == 1){
	BTFSS       PORTC+0, 5 
	GOTO        L_contador16
;Robozord v3.c,99 :: 		dr = dr + 1;
	INFSNZ      contador_dr_L0+0, 1 
	INCF        contador_dr_L0+1, 1 
;Robozord v3.c,100 :: 		one2 = 1;
	BSF         contador_one2_L0+0, BitPos(contador_one2_L0+0) 
;Robozord v3.c,101 :: 		}
L_contador16:
;Robozord v3.c,102 :: 		}
L_contador15:
;Robozord v3.c,104 :: 		if(one2 = 1)
	BSF         contador_one2_L0+0, BitPos(contador_one2_L0+0) 
	BTFSS       contador_one2_L0+0, BitPos(contador_one2_L0+0) 
	GOTO        L_contador17
;Robozord v3.c,105 :: 		one2 = portc.f5;
	BTFSC       PORTC+0, 5 
	GOTO        L__contador288
	BCF         contador_one2_L0+0, BitPos(contador_one2_L0+0) 
	GOTO        L__contador289
L__contador288:
	BSF         contador_one2_L0+0, BitPos(contador_one2_L0+0) 
L__contador289:
L_contador17:
;Robozord v3.c,110 :: 		}
	GOTO        L_contador18
L_contador14:
;Robozord v3.c,113 :: 		portd.f5 = 0;
	BCF         PORTD+0, 5 
;Robozord v3.c,114 :: 		portd.f4 = 0;
	BCF         PORTD+0, 4 
;Robozord v3.c,115 :: 		brkdr = 0;
	BCF         contador_brkdr_L0+0, BitPos(contador_brkdr_L0+0) 
;Robozord v3.c,116 :: 		}
L_contador18:
;Robozord v3.c,117 :: 		}
	GOTO        L_contador1
L_contador2:
;Robozord v3.c,118 :: 		reset = 1;
	BSF         _reset+0, BitPos(_reset+0) 
;Robozord v3.c,120 :: 		}//~~
L_end_contador:
	RETURN      0
; end of _contador

_codec:

;Robozord v3.c,135 :: 		void codec(int inst){
;Robozord v3.c,137 :: 		if ((inst & 0b10000000)>0){                                //testa o primeiro bit ,casso seja 1 andará em linha reta.
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
	GOTO        L__codec291
	MOVF        R1, 0 
	SUBLW       0
L__codec291:
	BTFSC       STATUS+0, 0 
	GOTO        L_codec19
;Robozord v3.c,138 :: 		if((inst & 0b01000000)>0){                       //testa o segundo bit,caso seja 1 deslocamento
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
	GOTO        L__codec292
	MOVF        R1, 0 
	SUBLW       0
L__codec292:
	BTFSC       STATUS+0, 0 
	GOTO        L_codec20
;Robozord v3.c,140 :: 		portd = 0b10100000;
	MOVLW       160
	MOVWF       PORTD+0 
;Robozord v3.c,141 :: 		switch(inst) {                           //indentifica o modulo do deslocamento para frente.
	GOTO        L_codec21
;Robozord v3.c,142 :: 		case(0b11110000):{
L_codec23:
;Robozord v3.c,143 :: 		esl = 47;
	MOVLW       47
	MOVWF       _esl+0 
	MOVLW       0
	MOVWF       _esl+1 
;Robozord v3.c,144 :: 		drl = 47;
	MOVLW       47
	MOVWF       _drl+0 
	MOVLW       0
	MOVWF       _drl+1 
;Robozord v3.c,145 :: 		break;
	GOTO        L_codec22
;Robozord v3.c,148 :: 		case(0b11100000):{
L_codec24:
;Robozord v3.c,149 :: 		esl = 35;
	MOVLW       35
	MOVWF       _esl+0 
	MOVLW       0
	MOVWF       _esl+1 
;Robozord v3.c,150 :: 		drl = 35;
	MOVLW       35
	MOVWF       _drl+0 
	MOVLW       0
	MOVWF       _drl+1 
;Robozord v3.c,151 :: 		break;
	GOTO        L_codec22
;Robozord v3.c,155 :: 		case(0b11010000):{
L_codec25:
;Robozord v3.c,156 :: 		esl = 24;
	MOVLW       24
	MOVWF       _esl+0 
	MOVLW       0
	MOVWF       _esl+1 
;Robozord v3.c,157 :: 		drl = 24;
	MOVLW       24
	MOVWF       _drl+0 
	MOVLW       0
	MOVWF       _drl+1 
;Robozord v3.c,158 :: 		break;
	GOTO        L_codec22
;Robozord v3.c,161 :: 		case(0b11000000): {
L_codec26:
;Robozord v3.c,162 :: 		esl = 12;
	MOVLW       12
	MOVWF       _esl+0 
	MOVLW       0
	MOVWF       _esl+1 
;Robozord v3.c,163 :: 		drl = 12;
	MOVLW       12
	MOVWF       _drl+0 
	MOVLW       0
	MOVWF       _drl+1 
;Robozord v3.c,164 :: 		break;
	GOTO        L_codec22
;Robozord v3.c,167 :: 		}
L_codec21:
	MOVLW       0
	XORWF       FARG_codec_inst+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec293
	MOVLW       240
	XORWF       FARG_codec_inst+0, 0 
L__codec293:
	BTFSC       STATUS+0, 2 
	GOTO        L_codec23
	MOVLW       0
	XORWF       FARG_codec_inst+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec294
	MOVLW       224
	XORWF       FARG_codec_inst+0, 0 
L__codec294:
	BTFSC       STATUS+0, 2 
	GOTO        L_codec24
	MOVLW       0
	XORWF       FARG_codec_inst+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec295
	MOVLW       208
	XORWF       FARG_codec_inst+0, 0 
L__codec295:
	BTFSC       STATUS+0, 2 
	GOTO        L_codec25
	MOVLW       0
	XORWF       FARG_codec_inst+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec296
	MOVLW       192
	XORWF       FARG_codec_inst+0, 0 
L__codec296:
	BTFSC       STATUS+0, 2 
	GOTO        L_codec26
L_codec22:
;Robozord v3.c,169 :: 		}
	GOTO        L_codec27
L_codec20:
;Robozord v3.c,171 :: 		portd = 0b01010000;
	MOVLW       80
	MOVWF       PORTD+0 
;Robozord v3.c,172 :: 		switch(inst){             //indentifica o modulo do deslocamento para tras.
	GOTO        L_codec28
;Robozord v3.c,174 :: 		case(0b10110000):{
L_codec30:
;Robozord v3.c,175 :: 		esl = 47;
	MOVLW       47
	MOVWF       _esl+0 
	MOVLW       0
	MOVWF       _esl+1 
;Robozord v3.c,176 :: 		drl = 47;
	MOVLW       47
	MOVWF       _drl+0 
	MOVLW       0
	MOVWF       _drl+1 
;Robozord v3.c,177 :: 		break;
	GOTO        L_codec29
;Robozord v3.c,179 :: 		case(0b10100000):{
L_codec31:
;Robozord v3.c,180 :: 		esl = 35;
	MOVLW       35
	MOVWF       _esl+0 
	MOVLW       0
	MOVWF       _esl+1 
;Robozord v3.c,181 :: 		drl = 35;
	MOVLW       35
	MOVWF       _drl+0 
	MOVLW       0
	MOVWF       _drl+1 
;Robozord v3.c,182 :: 		break;
	GOTO        L_codec29
;Robozord v3.c,185 :: 		case(0b10010000):{
L_codec32:
;Robozord v3.c,186 :: 		esl = 24;
	MOVLW       24
	MOVWF       _esl+0 
	MOVLW       0
	MOVWF       _esl+1 
;Robozord v3.c,187 :: 		drl = 24;
	MOVLW       24
	MOVWF       _drl+0 
	MOVLW       0
	MOVWF       _drl+1 
;Robozord v3.c,188 :: 		break;
	GOTO        L_codec29
;Robozord v3.c,191 :: 		case(0b10000000):{
L_codec33:
;Robozord v3.c,192 :: 		esl = 12;
	MOVLW       12
	MOVWF       _esl+0 
	MOVLW       0
	MOVWF       _esl+1 
;Robozord v3.c,193 :: 		drl = 12;
	MOVLW       12
	MOVWF       _drl+0 
	MOVLW       0
	MOVWF       _drl+1 
;Robozord v3.c,194 :: 		break;
	GOTO        L_codec29
;Robozord v3.c,196 :: 		}
L_codec28:
	MOVLW       0
	XORWF       FARG_codec_inst+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec297
	MOVLW       176
	XORWF       FARG_codec_inst+0, 0 
L__codec297:
	BTFSC       STATUS+0, 2 
	GOTO        L_codec30
	MOVLW       0
	XORWF       FARG_codec_inst+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec298
	MOVLW       160
	XORWF       FARG_codec_inst+0, 0 
L__codec298:
	BTFSC       STATUS+0, 2 
	GOTO        L_codec31
	MOVLW       0
	XORWF       FARG_codec_inst+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec299
	MOVLW       144
	XORWF       FARG_codec_inst+0, 0 
L__codec299:
	BTFSC       STATUS+0, 2 
	GOTO        L_codec32
	MOVLW       0
	XORWF       FARG_codec_inst+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec300
	MOVLW       128
	XORWF       FARG_codec_inst+0, 0 
L__codec300:
	BTFSC       STATUS+0, 2 
	GOTO        L_codec33
L_codec29:
;Robozord v3.c,198 :: 		}
L_codec27:
;Robozord v3.c,200 :: 		}
	GOTO        L_codec34
L_codec19:
;Robozord v3.c,203 :: 		if((inst & 0b01000000)>0)    {                                 //indentifica o segundo bit,caso seja 1 rotação
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
	GOTO        L__codec301
	MOVF        R1, 0 
	SUBLW       0
L__codec301:
	BTFSC       STATUS+0, 0 
	GOTO        L_codec35
;Robozord v3.c,204 :: 		portd = 0b01100000;                                 //para a esquerda.
	MOVLW       96
	MOVWF       PORTD+0 
;Robozord v3.c,205 :: 		switch(inst)   {                                    //seleciona o angulo de rotação para a esquerda.
	GOTO        L_codec36
;Robozord v3.c,207 :: 		case(0b01110000):                  {
L_codec38:
;Robozord v3.c,208 :: 		esl = 22;
	MOVLW       22
	MOVWF       _esl+0 
	MOVLW       0
	MOVWF       _esl+1 
;Robozord v3.c,209 :: 		drl = 22;
	MOVLW       22
	MOVWF       _drl+0 
	MOVLW       0
	MOVWF       _drl+1 
;Robozord v3.c,210 :: 		break;                 }
	GOTO        L_codec37
;Robozord v3.c,212 :: 		case(0b01100000):                   {
L_codec39:
;Robozord v3.c,213 :: 		esl = 16;
	MOVLW       16
	MOVWF       _esl+0 
	MOVLW       0
	MOVWF       _esl+1 
;Robozord v3.c,214 :: 		drl = 16;
	MOVLW       16
	MOVWF       _drl+0 
	MOVLW       0
	MOVWF       _drl+1 
;Robozord v3.c,215 :: 		break;            }
	GOTO        L_codec37
;Robozord v3.c,218 :: 		case(0b01010000):                   {
L_codec40:
;Robozord v3.c,219 :: 		esl = 11;
	MOVLW       11
	MOVWF       _esl+0 
	MOVLW       0
	MOVWF       _esl+1 
;Robozord v3.c,220 :: 		drl = 11;
	MOVLW       11
	MOVWF       _drl+0 
	MOVLW       0
	MOVWF       _drl+1 
;Robozord v3.c,221 :: 		break;            }
	GOTO        L_codec37
;Robozord v3.c,223 :: 		case(0b01000000):                   {
L_codec41:
;Robozord v3.c,224 :: 		esl = 5;
	MOVLW       5
	MOVWF       _esl+0 
	MOVLW       0
	MOVWF       _esl+1 
;Robozord v3.c,225 :: 		drl = 5;
	MOVLW       5
	MOVWF       _drl+0 
	MOVLW       0
	MOVWF       _drl+1 
;Robozord v3.c,226 :: 		break;            }
	GOTO        L_codec37
;Robozord v3.c,228 :: 		}
L_codec36:
	MOVLW       0
	XORWF       FARG_codec_inst+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec302
	MOVLW       112
	XORWF       FARG_codec_inst+0, 0 
L__codec302:
	BTFSC       STATUS+0, 2 
	GOTO        L_codec38
	MOVLW       0
	XORWF       FARG_codec_inst+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec303
	MOVLW       96
	XORWF       FARG_codec_inst+0, 0 
L__codec303:
	BTFSC       STATUS+0, 2 
	GOTO        L_codec39
	MOVLW       0
	XORWF       FARG_codec_inst+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec304
	MOVLW       80
	XORWF       FARG_codec_inst+0, 0 
L__codec304:
	BTFSC       STATUS+0, 2 
	GOTO        L_codec40
	MOVLW       0
	XORWF       FARG_codec_inst+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec305
	MOVLW       64
	XORWF       FARG_codec_inst+0, 0 
L__codec305:
	BTFSC       STATUS+0, 2 
	GOTO        L_codec41
L_codec37:
;Robozord v3.c,229 :: 		}
	GOTO        L_codec42
L_codec35:
;Robozord v3.c,233 :: 		portd = 0b10010000;
	MOVLW       144
	MOVWF       PORTD+0 
;Robozord v3.c,234 :: 		switch(inst)    {                       //selecona o angulo de rotação para a direita.
	GOTO        L_codec43
;Robozord v3.c,236 :: 		case(0b00110000):                  {
L_codec45:
;Robozord v3.c,237 :: 		esl = 22;
	MOVLW       22
	MOVWF       _esl+0 
	MOVLW       0
	MOVWF       _esl+1 
;Robozord v3.c,238 :: 		drl = 22;
	MOVLW       22
	MOVWF       _drl+0 
	MOVLW       0
	MOVWF       _drl+1 
;Robozord v3.c,239 :: 		break;           }
	GOTO        L_codec44
;Robozord v3.c,241 :: 		case(0b00100000):                   {
L_codec46:
;Robozord v3.c,242 :: 		esl = 16;
	MOVLW       16
	MOVWF       _esl+0 
	MOVLW       0
	MOVWF       _esl+1 
;Robozord v3.c,243 :: 		drl = 16;
	MOVLW       16
	MOVWF       _drl+0 
	MOVLW       0
	MOVWF       _drl+1 
;Robozord v3.c,244 :: 		break;            }
	GOTO        L_codec44
;Robozord v3.c,246 :: 		case(0b00010000):                   {
L_codec47:
;Robozord v3.c,247 :: 		esl = 11;
	MOVLW       11
	MOVWF       _esl+0 
	MOVLW       0
	MOVWF       _esl+1 
;Robozord v3.c,248 :: 		drl = 11;
	MOVLW       11
	MOVWF       _drl+0 
	MOVLW       0
	MOVWF       _drl+1 
;Robozord v3.c,249 :: 		break;            }
	GOTO        L_codec44
;Robozord v3.c,251 :: 		case(0b00000000):                   {
L_codec48:
;Robozord v3.c,252 :: 		esl = 5;
	MOVLW       5
	MOVWF       _esl+0 
	MOVLW       0
	MOVWF       _esl+1 
;Robozord v3.c,253 :: 		drl = 5;
	MOVLW       5
	MOVWF       _drl+0 
	MOVLW       0
	MOVWF       _drl+1 
;Robozord v3.c,254 :: 		break;          }
	GOTO        L_codec44
;Robozord v3.c,255 :: 		}
L_codec43:
	MOVLW       0
	XORWF       FARG_codec_inst+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec306
	MOVLW       48
	XORWF       FARG_codec_inst+0, 0 
L__codec306:
	BTFSC       STATUS+0, 2 
	GOTO        L_codec45
	MOVLW       0
	XORWF       FARG_codec_inst+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec307
	MOVLW       32
	XORWF       FARG_codec_inst+0, 0 
L__codec307:
	BTFSC       STATUS+0, 2 
	GOTO        L_codec46
	MOVLW       0
	XORWF       FARG_codec_inst+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec308
	MOVLW       16
	XORWF       FARG_codec_inst+0, 0 
L__codec308:
	BTFSC       STATUS+0, 2 
	GOTO        L_codec47
	MOVLW       0
	XORWF       FARG_codec_inst+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__codec309
	MOVLW       0
	XORWF       FARG_codec_inst+0, 0 
L__codec309:
	BTFSC       STATUS+0, 2 
	GOTO        L_codec48
L_codec44:
;Robozord v3.c,256 :: 		}
L_codec42:
;Robozord v3.c,257 :: 		}
L_codec34:
;Robozord v3.c,258 :: 		}//~~
L_end_codec:
	RETURN      0
; end of _codec

_menu_instrucao:

;Robozord v3.c,274 :: 		unsigned short menu_instrucao(){
;Robozord v3.c,280 :: 		menu:
___menu_instrucao_menu:
;Robozord v3.c,282 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,283 :: 		lcd_out (1,1, "Rotinas");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr1_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr1_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,284 :: 		lcd_out (2,1, "Insira Instrucao");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr2_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr2_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,285 :: 		delay_ms (200);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_menu_instrucao49:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao49
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao49
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao49
	NOP
;Robozord v3.c,287 :: 		if (Button (&PORTD, 0, 250, 1)){       //Se pressionado botão 0, entra em modo rotinas,
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
	GOTO        L_menu_instrucao50
;Robozord v3.c,288 :: 		rotinas = 1;                 //e sai da funcao menu, aguardando entrada do
	MOVLW       1
	MOVWF       _rotinas+0 
;Robozord v3.c,289 :: 		delay_ms(100);               //usuario em Main (rotina desejada)
	MOVLW       130
	MOVWF       R12, 0
	MOVLW       221
	MOVWF       R13, 0
L_menu_instrucao51:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao51
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao51
	NOP
	NOP
;Robozord v3.c,290 :: 		return;
	GOTO        L_end_menu_instrucao
;Robozord v3.c,292 :: 		}
L_menu_instrucao50:
;Robozord v3.c,294 :: 		else if (Button (&PORTD, 1, 200, 1))   //Se pressionado botão 1, entra em Menu, solicitando
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
	GOTO        L_menu_instrucao53
;Robozord v3.c,296 :: 		Menu_1:                             //Seja ela A-Z (Alfabeto Grego) ou Binário
___menu_instrucao_Menu_1:
;Robozord v3.c,298 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,299 :: 		lcd_out (1,1, "Insira");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr3_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr3_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,300 :: 		lcd_out (1,8, "instrucao");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr4_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr4_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,301 :: 		lcd_out (2,3, "A-Z");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr5_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr5_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,302 :: 		lcd_out (2,8, "Binario");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr6_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr6_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,303 :: 		delay_ms(250);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       69
	MOVWF       R12, 0
	MOVLW       169
	MOVWF       R13, 0
L_menu_instrucao54:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao54
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao54
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao54
	NOP
	NOP
;Robozord v3.c,305 :: 		if(Button (&PORTD, 0, 250, 1))             //Se pressionado o botão 0 do PORTD seleciona funcao do Menu para andar/rotacionar
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
	GOTO        L_menu_instrucao55
;Robozord v3.c,307 :: 		Menu_2:
___menu_instrucao_Menu_2:
;Robozord v3.c,309 :: 		delay_ms(700);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       142
	MOVWF       R12, 0
	MOVLW       18
	MOVWF       R13, 0
L_menu_instrucao56:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao56
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao56
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao56
	NOP
;Robozord v3.c,310 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,311 :: 		lcd_out (1,3, "Selecione");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr7_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr7_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,312 :: 		lcd_out (2,1, "Andar Rotacionar");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr8_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr8_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,315 :: 		if(Button (&PORTD, 0, 250, 1))                  //Se pressionado o botão 0 do PORTD seleciona funcao do Menu para Andar Frente/Tras
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
	GOTO        L_menu_instrucao57
;Robozord v3.c,317 :: 		Menu_3:
___menu_instrucao_Menu_3:
;Robozord v3.c,319 :: 		delay_ms(700);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       142
	MOVWF       R12, 0
	MOVLW       18
	MOVWF       R13, 0
L_menu_instrucao58:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao58
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao58
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao58
	NOP
;Robozord v3.c,320 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,321 :: 		lcd_out (1,2, "Selec. Andar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr9_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr9_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,322 :: 		lcd_out (2,2, "Frente Tras");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr10_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr10_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,325 :: 		if(Button (&PORTD, 0, 250, 1))              //Se pressionado o botão 0 do PORTD seleciona funcao do Menu para Andar Frente 15 - 30 - 45 - 60
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
	GOTO        L_menu_instrucao59
;Robozord v3.c,327 :: 		Menu_4:                                 //Usuario Seleciona através do botao 0,1,2,3
___menu_instrucao_Menu_4:
;Robozord v3.c,328 :: 		delay_ms(700);                    //Após selecionado, joga na tela a funcao selecionada e atribui a variável o respectivo valor
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       142
	MOVWF       R12, 0
	MOVLW       18
	MOVWF       R13, 0
L_menu_instrucao60:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao60
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao60
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao60
	NOP
;Robozord v3.c,329 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,330 :: 		lcd_out (1,2, "Andar Frente");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr11_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr11_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,331 :: 		lcd_out (2,2, "15 30 45 60");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr12_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr12_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,333 :: 		if(Button (&PORTD, 0, 250, 1))
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
	GOTO        L_menu_instrucao61
;Robozord v3.c,335 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,336 :: 		lcd_out (1,2, "Selec. Andar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr13_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr13_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,337 :: 		lcd_out (2,2, "Frente 30'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr14_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr14_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,338 :: 		andar_frente = 0b00000001;
	MOVLW       1
	MOVWF       _andar_frente+0 
;Robozord v3.c,339 :: 		delay_ms(2000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_menu_instrucao62:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao62
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao62
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao62
	NOP
	NOP
;Robozord v3.c,341 :: 		}
	GOTO        L_menu_instrucao63
L_menu_instrucao61:
;Robozord v3.c,343 :: 		else if(Button (&PORTD, 1, 250, 1))
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
	GOTO        L_menu_instrucao64
;Robozord v3.c,345 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,346 :: 		lcd_out (1,2, "Selec. Andar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr15_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr15_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,347 :: 		lcd_out (2,2, "Frente 45'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr16_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr16_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,348 :: 		andar_frente = 0b00000010;
	MOVLW       2
	MOVWF       _andar_frente+0 
;Robozord v3.c,349 :: 		delay_ms(2000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_menu_instrucao65:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao65
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao65
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao65
	NOP
	NOP
;Robozord v3.c,351 :: 		}
	GOTO        L_menu_instrucao66
L_menu_instrucao64:
;Robozord v3.c,353 :: 		else if(Button (&PORTD, 2, 250, 1))
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
	GOTO        L_menu_instrucao67
;Robozord v3.c,355 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,356 :: 		lcd_out (1,2, "Selec. Andar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr17_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr17_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,357 :: 		lcd_out (2,2, "Frente 60'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr18_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr18_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,358 :: 		andar_frente = 0b00000011;
	MOVLW       3
	MOVWF       _andar_frente+0 
;Robozord v3.c,359 :: 		delay_ms(2000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_menu_instrucao68:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao68
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao68
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao68
	NOP
	NOP
;Robozord v3.c,360 :: 		}
	GOTO        L_menu_instrucao69
L_menu_instrucao67:
;Robozord v3.c,362 :: 		else if(Button (&PORTD, 3, 250, 1))
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
	GOTO        L_menu_instrucao70
;Robozord v3.c,364 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,365 :: 		lcd_out (1,2, "Selec. Andar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr19_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr19_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,366 :: 		lcd_out (2,2, "Frente 90'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr20_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr20_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,367 :: 		andar_frente = 0b00000100;
	MOVLW       4
	MOVWF       _andar_frente+0 
;Robozord v3.c,368 :: 		delay_ms(2000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_menu_instrucao71:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao71
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao71
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao71
	NOP
	NOP
;Robozord v3.c,369 :: 		}
	GOTO        L_menu_instrucao72
L_menu_instrucao70:
;Robozord v3.c,373 :: 		goto Menu_4;
	GOTO        ___menu_instrucao_Menu_4
;Robozord v3.c,374 :: 		}
L_menu_instrucao72:
L_menu_instrucao69:
L_menu_instrucao66:
L_menu_instrucao63:
;Robozord v3.c,376 :: 		}
	GOTO        L_menu_instrucao73
L_menu_instrucao59:
;Robozord v3.c,378 :: 		else if(Button (&PORTD, 1, 250, 1))              //Se pressionado o botão 0 do PORTD seleciona funcao do Menu para Andar Tras 15 - 30 - 45 - 60
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
	GOTO        L_menu_instrucao74
;Robozord v3.c,380 :: 		Menu_5:                                     //Usuario Seleciona através do botao 0,1,2,3
___menu_instrucao_Menu_5:
;Robozord v3.c,381 :: 		delay_ms(700);                        //Após selecionado, joga na tela a funcao selecionada e atribui a variável o respectivo valor
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       142
	MOVWF       R12, 0
	MOVLW       18
	MOVWF       R13, 0
L_menu_instrucao75:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao75
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao75
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao75
	NOP
;Robozord v3.c,382 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,383 :: 		lcd_out (1,2, "Andar Tras");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr21_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr21_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,384 :: 		lcd_out (2,1, "30' 45' 60' 90'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr22_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr22_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,386 :: 		if(Button (&PORTD, 0, 250, 1))
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
	GOTO        L_menu_instrucao76
;Robozord v3.c,388 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,389 :: 		lcd_out (1,2, "Selec. Andar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr23_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr23_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,390 :: 		lcd_out (2,2, "Tras 30'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr24_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr24_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,391 :: 		andar_tras = 0b00000001;
	MOVLW       1
	MOVWF       _andar_tras+0 
;Robozord v3.c,392 :: 		delay_ms(2000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_menu_instrucao77:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao77
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao77
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao77
	NOP
	NOP
;Robozord v3.c,394 :: 		}
	GOTO        L_menu_instrucao78
L_menu_instrucao76:
;Robozord v3.c,396 :: 		else if(Button (&PORTD, 1, 250, 1))
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
	GOTO        L_menu_instrucao79
;Robozord v3.c,398 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,399 :: 		lcd_out (1,2, "Selec. Andar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr25_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr25_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,400 :: 		lcd_out (2,2, "Tras 45'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr26_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr26_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,401 :: 		andar_tras = 0b00000010;
	MOVLW       2
	MOVWF       _andar_tras+0 
;Robozord v3.c,402 :: 		delay_ms(2000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_menu_instrucao80:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao80
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao80
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao80
	NOP
	NOP
;Robozord v3.c,404 :: 		}
	GOTO        L_menu_instrucao81
L_menu_instrucao79:
;Robozord v3.c,406 :: 		else if(Button (&PORTD, 2, 250, 1))
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
	GOTO        L_menu_instrucao82
;Robozord v3.c,408 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,409 :: 		lcd_out (1,2, "Selec. Andar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr27_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr27_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,410 :: 		lcd_out (2,2, "Tras 60'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr28_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr28_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,411 :: 		andar_tras = 0b00000011;
	MOVLW       3
	MOVWF       _andar_tras+0 
;Robozord v3.c,412 :: 		delay_ms(2000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_menu_instrucao83:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao83
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao83
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao83
	NOP
	NOP
;Robozord v3.c,413 :: 		}
	GOTO        L_menu_instrucao84
L_menu_instrucao82:
;Robozord v3.c,415 :: 		else if(Button (&PORTD, 3, 250, 1))
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
	GOTO        L_menu_instrucao85
;Robozord v3.c,417 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,418 :: 		lcd_out (1,2, "Selec. Andar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr29_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr29_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,419 :: 		lcd_out (2,2, "Tras 90'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr30_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr30_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,420 :: 		andar_tras = 0b00000100;
	MOVLW       4
	MOVWF       _andar_tras+0 
;Robozord v3.c,421 :: 		delay_ms(2000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_menu_instrucao86:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao86
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao86
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao86
	NOP
	NOP
;Robozord v3.c,422 :: 		}
	GOTO        L_menu_instrucao87
L_menu_instrucao85:
;Robozord v3.c,426 :: 		goto Menu_5;
	GOTO        ___menu_instrucao_Menu_5
;Robozord v3.c,427 :: 		}
L_menu_instrucao87:
L_menu_instrucao84:
L_menu_instrucao81:
L_menu_instrucao78:
;Robozord v3.c,429 :: 		}
	GOTO        L_menu_instrucao88
L_menu_instrucao74:
;Robozord v3.c,433 :: 		goto Menu_3;
	GOTO        ___menu_instrucao_Menu_3
;Robozord v3.c,434 :: 		}
L_menu_instrucao88:
L_menu_instrucao73:
;Robozord v3.c,435 :: 		}
	GOTO        L_menu_instrucao89
L_menu_instrucao57:
;Robozord v3.c,437 :: 		else if(Button (&PORTD, 1, 250, 1))            //Segue a mesma lógica da escolha anterior, mas agora com esquerda/direita
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
	GOTO        L_menu_instrucao90
;Robozord v3.c,439 :: 		Menu_6:                                   //conforme selecionado
___menu_instrucao_Menu_6:
;Robozord v3.c,440 :: 		delay_ms(700);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       142
	MOVWF       R12, 0
	MOVLW       18
	MOVWF       R13, 0
L_menu_instrucao91:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao91
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao91
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao91
	NOP
;Robozord v3.c,441 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,442 :: 		lcd_out (1,2, "Selec. Rotac.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr31_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr31_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,443 :: 		lcd_out (2,3, "Esqu. Dir.");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr32_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr32_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,445 :: 		if(Button (&PORTD, 0, 250, 1))
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
	GOTO        L_menu_instrucao92
;Robozord v3.c,447 :: 		Menu_7:
___menu_instrucao_Menu_7:
;Robozord v3.c,448 :: 		delay_ms(700);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       142
	MOVWF       R12, 0
	MOVLW       18
	MOVWF       R13, 0
L_menu_instrucao93:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao93
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao93
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao93
	NOP
;Robozord v3.c,449 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,450 :: 		lcd_out (1,2, "Rotac. Esqu.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr33_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr33_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,451 :: 		lcd_out (2,1, "30' 45' 60' 90'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr34_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr34_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,453 :: 		if(Button (&PORTD, 0, 250, 1))
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
	GOTO        L_menu_instrucao94
;Robozord v3.c,455 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,456 :: 		lcd_out (1,2, "Selec. Rotac.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr35_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr35_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,457 :: 		lcd_out (2,3, "Esqu. 30'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr36_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr36_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,458 :: 		rotac_esq = 0b00000001;
	MOVLW       1
	MOVWF       _rotac_esq+0 
;Robozord v3.c,459 :: 		delay_ms(2000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_menu_instrucao95:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao95
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao95
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao95
	NOP
	NOP
;Robozord v3.c,460 :: 		}
	GOTO        L_menu_instrucao96
L_menu_instrucao94:
;Robozord v3.c,462 :: 		else if(Button (&PORTD, 1, 250, 1))
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
	GOTO        L_menu_instrucao97
;Robozord v3.c,464 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,465 :: 		lcd_out (1,2, "Selec. Rotac.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr37_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr37_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,466 :: 		lcd_out (2,3, "Esqu. 45'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr38_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr38_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,467 :: 		rotac_esq = 0b00000010;
	MOVLW       2
	MOVWF       _rotac_esq+0 
;Robozord v3.c,468 :: 		delay_ms(2000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_menu_instrucao98:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao98
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao98
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao98
	NOP
	NOP
;Robozord v3.c,469 :: 		}
	GOTO        L_menu_instrucao99
L_menu_instrucao97:
;Robozord v3.c,471 :: 		else if(Button (&PORTD, 2, 250, 1))
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
	GOTO        L_menu_instrucao100
;Robozord v3.c,473 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,474 :: 		lcd_out (1,2, "Selec. Rotac.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr39_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr39_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,475 :: 		lcd_out (2,3, "Esqu. 60'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr40_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr40_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,476 :: 		rotac_esq = 0b00000011;
	MOVLW       3
	MOVWF       _rotac_esq+0 
;Robozord v3.c,477 :: 		delay_ms(2000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_menu_instrucao101:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao101
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao101
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao101
	NOP
	NOP
;Robozord v3.c,478 :: 		}
	GOTO        L_menu_instrucao102
L_menu_instrucao100:
;Robozord v3.c,480 :: 		else if(Button (&PORTD, 3, 250, 1))
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
	GOTO        L_menu_instrucao103
;Robozord v3.c,482 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,483 :: 		lcd_out (1,2, "Selec. Rotac.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr41_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr41_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,484 :: 		lcd_out (2,3, "Esqu. 90'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr42_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr42_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,485 :: 		rotac_esq = 0b00000100;
	MOVLW       4
	MOVWF       _rotac_esq+0 
;Robozord v3.c,486 :: 		delay_ms(2000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_menu_instrucao104:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao104
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao104
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao104
	NOP
	NOP
;Robozord v3.c,487 :: 		}
	GOTO        L_menu_instrucao105
L_menu_instrucao103:
;Robozord v3.c,490 :: 		goto Menu_7;
	GOTO        ___menu_instrucao_Menu_7
L_menu_instrucao105:
L_menu_instrucao102:
L_menu_instrucao99:
L_menu_instrucao96:
;Robozord v3.c,493 :: 		}
	GOTO        L_menu_instrucao106
L_menu_instrucao92:
;Robozord v3.c,495 :: 		else if(Button (&PORTD, 1, 250, 1))
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
	GOTO        L_menu_instrucao107
;Robozord v3.c,497 :: 		Menu_8:
___menu_instrucao_Menu_8:
;Robozord v3.c,498 :: 		delay_ms(700);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       142
	MOVWF       R12, 0
	MOVLW       18
	MOVWF       R13, 0
L_menu_instrucao108:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao108
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao108
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao108
	NOP
;Robozord v3.c,499 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,500 :: 		lcd_out (1,2, "Rotac. Dir.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr43_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr43_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,501 :: 		lcd_out (2,1, "30' 45' 60' 90'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr44_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr44_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,503 :: 		if(Button (&PORTD, 0, 250, 1))
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
	GOTO        L_menu_instrucao109
;Robozord v3.c,505 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,506 :: 		lcd_out (1,2, "Selec. Rotac.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr45_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr45_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,507 :: 		lcd_out (2,3, "Dir. 30'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr46_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr46_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,508 :: 		rotac_dir = 0b00000001;
	MOVLW       1
	MOVWF       _rotac_dir+0 
;Robozord v3.c,509 :: 		delay_ms(2000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
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
;Robozord v3.c,510 :: 		}
	GOTO        L_menu_instrucao111
L_menu_instrucao109:
;Robozord v3.c,512 :: 		else if(Button (&PORTD, 1, 250, 1))
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
	GOTO        L_menu_instrucao112
;Robozord v3.c,514 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,515 :: 		lcd_out (1,2, "Selec. Rotac.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr47_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr47_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,516 :: 		lcd_out (2,3, "Dir. 45'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr48_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr48_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,517 :: 		rotac_dir = 0b00000010;
	MOVLW       2
	MOVWF       _rotac_dir+0 
;Robozord v3.c,518 :: 		delay_ms(2000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_menu_instrucao113:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao113
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao113
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao113
	NOP
	NOP
;Robozord v3.c,519 :: 		}
	GOTO        L_menu_instrucao114
L_menu_instrucao112:
;Robozord v3.c,521 :: 		else if(Button (&PORTD, 2, 250, 1))
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
	GOTO        L_menu_instrucao115
;Robozord v3.c,523 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,524 :: 		lcd_out (1,2, "Selec. Rotac.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr49_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr49_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,525 :: 		lcd_out (2,3, "Dir. 60'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr50_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr50_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,526 :: 		rotac_dir = 0b00000011;
	MOVLW       3
	MOVWF       _rotac_dir+0 
;Robozord v3.c,527 :: 		delay_ms(2000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_menu_instrucao116:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao116
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao116
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao116
	NOP
	NOP
;Robozord v3.c,528 :: 		}
	GOTO        L_menu_instrucao117
L_menu_instrucao115:
;Robozord v3.c,530 :: 		else if(Button (&PORTD, 3, 250, 1))
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
	GOTO        L_menu_instrucao118
;Robozord v3.c,532 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,533 :: 		lcd_out (1,2, "Selec. Rotac.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr51_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr51_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,534 :: 		lcd_out (2,3, "Dir. 90'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr52_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr52_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,535 :: 		rotac_dir = 0b00000100;
	MOVLW       4
	MOVWF       _rotac_dir+0 
;Robozord v3.c,536 :: 		delay_ms(2000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_menu_instrucao119:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao119
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao119
	DECFSZ      R11, 1, 1
	BRA         L_menu_instrucao119
	NOP
	NOP
;Robozord v3.c,537 :: 		}
	GOTO        L_menu_instrucao120
L_menu_instrucao118:
;Robozord v3.c,540 :: 		goto Menu_8;
	GOTO        ___menu_instrucao_Menu_8
L_menu_instrucao120:
L_menu_instrucao117:
L_menu_instrucao114:
L_menu_instrucao111:
;Robozord v3.c,542 :: 		}
	GOTO        L_menu_instrucao121
L_menu_instrucao107:
;Robozord v3.c,546 :: 		goto Menu_6;
	GOTO        ___menu_instrucao_Menu_6
;Robozord v3.c,547 :: 		}
L_menu_instrucao121:
L_menu_instrucao106:
;Robozord v3.c,548 :: 		}
	GOTO        L_menu_instrucao122
L_menu_instrucao90:
;Robozord v3.c,552 :: 		goto Menu_2;
	GOTO        ___menu_instrucao_Menu_2
;Robozord v3.c,553 :: 		}
L_menu_instrucao122:
L_menu_instrucao89:
;Robozord v3.c,554 :: 		}
	GOTO        L_menu_instrucao123
L_menu_instrucao55:
;Robozord v3.c,556 :: 		else if(Button (&PORTD, 1, 250, 1))
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
	GOTO        L_menu_instrucao124
;Robozord v3.c,561 :: 		x1 = 48;
	MOVLW       48
	MOVWF       menu_instrucao_x1_L0+0 
	MOVLW       0
	MOVWF       menu_instrucao_x1_L0+1 
;Robozord v3.c,562 :: 		x2 = 48;
	MOVLW       48
	MOVWF       menu_instrucao_x2_L0+0 
	MOVLW       0
	MOVWF       menu_instrucao_x2_L0+1 
;Robozord v3.c,563 :: 		x3 = 48;
	MOVLW       48
	MOVWF       menu_instrucao_x3_L0+0 
	MOVLW       0
	MOVWF       menu_instrucao_x3_L0+1 
;Robozord v3.c,564 :: 		x4 = 48;
	MOVLW       48
	MOVWF       menu_instrucao_x4_L0+0 
	MOVLW       0
	MOVWF       menu_instrucao_x4_L0+1 
;Robozord v3.c,566 :: 		y1 = 0;
	CLRF        menu_instrucao_y1_L0+0 
;Robozord v3.c,567 :: 		y2 = 0;
	CLRF        menu_instrucao_y2_L0+0 
;Robozord v3.c,568 :: 		y3 = 0;
	CLRF        menu_instrucao_y3_L0+0 
;Robozord v3.c,569 :: 		y4 = 0;
	CLRF        menu_instrucao_y4_L0+0 
;Robozord v3.c,571 :: 		teste1= 0;
	BCF         menu_instrucao_teste1_L0+0, BitPos(menu_instrucao_teste1_L0+0) 
;Robozord v3.c,572 :: 		teste2= 0;
	BCF         menu_instrucao_teste2_L0+0, BitPos(menu_instrucao_teste2_L0+0) 
;Robozord v3.c,573 :: 		teste3= 0;
	BCF         menu_instrucao_teste3_L0+0, BitPos(menu_instrucao_teste3_L0+0) 
;Robozord v3.c,574 :: 		teste4= 0;
	BCF         menu_instrucao_teste4_L0+0, BitPos(menu_instrucao_teste4_L0+0) 
;Robozord v3.c,576 :: 		do {
L_menu_instrucao125:
;Robozord v3.c,577 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,578 :: 		Lcd_Out (1,2, "Selec. Posicao");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr53_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr53_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,579 :: 		Lcd_Out (2,8, "0000");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr54_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr54_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,581 :: 		if ((Button (&PORTD, 0, 150, 1))  && (teste1 == 0))
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
	GOTO        L_menu_instrucao130
	BTFSC       menu_instrucao_teste1_L0+0, BitPos(menu_instrucao_teste1_L0+0) 
	GOTO        L_menu_instrucao130
L__menu_instrucao280:
;Robozord v3.c,583 :: 		x1 = 49;
	MOVLW       49
	MOVWF       menu_instrucao_x1_L0+0 
	MOVLW       0
	MOVWF       menu_instrucao_x1_L0+1 
;Robozord v3.c,584 :: 		teste1 = !teste1;
	BTG         menu_instrucao_teste1_L0+0, BitPos(menu_instrucao_teste1_L0+0) 
;Robozord v3.c,585 :: 		y1 = 128;
	MOVLW       128
	MOVWF       menu_instrucao_y1_L0+0 
;Robozord v3.c,586 :: 		}
	GOTO        L_menu_instrucao131
L_menu_instrucao130:
;Robozord v3.c,588 :: 		else if ((Button (&PORTD, 0, 150, 1)) && (teste1== 1))
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
	GOTO        L_menu_instrucao134
	BTFSS       menu_instrucao_teste1_L0+0, BitPos(menu_instrucao_teste1_L0+0) 
	GOTO        L_menu_instrucao134
L__menu_instrucao279:
;Robozord v3.c,590 :: 		x1 = 48;
	MOVLW       48
	MOVWF       menu_instrucao_x1_L0+0 
	MOVLW       0
	MOVWF       menu_instrucao_x1_L0+1 
;Robozord v3.c,591 :: 		teste1 = !teste1;
	BTG         menu_instrucao_teste1_L0+0, BitPos(menu_instrucao_teste1_L0+0) 
;Robozord v3.c,592 :: 		y1 = 0;
	CLRF        menu_instrucao_y1_L0+0 
;Robozord v3.c,593 :: 		}
	GOTO        L_menu_instrucao135
L_menu_instrucao134:
;Robozord v3.c,595 :: 		else if ((Button (&PORTD, 1, 150, 1)) && (teste2 == 0))
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
	GOTO        L_menu_instrucao138
	BTFSC       menu_instrucao_teste2_L0+0, BitPos(menu_instrucao_teste2_L0+0) 
	GOTO        L_menu_instrucao138
L__menu_instrucao278:
;Robozord v3.c,597 :: 		x2 = 49;
	MOVLW       49
	MOVWF       menu_instrucao_x2_L0+0 
	MOVLW       0
	MOVWF       menu_instrucao_x2_L0+1 
;Robozord v3.c,598 :: 		teste2 = !teste2;
	BTG         menu_instrucao_teste2_L0+0, BitPos(menu_instrucao_teste2_L0+0) 
;Robozord v3.c,599 :: 		y2 = 64;
	MOVLW       64
	MOVWF       menu_instrucao_y2_L0+0 
;Robozord v3.c,600 :: 		}
	GOTO        L_menu_instrucao139
L_menu_instrucao138:
;Robozord v3.c,602 :: 		else if ((Button (&PORTD, 1, 150, 1))  && (teste2== 1))
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
	GOTO        L_menu_instrucao142
	BTFSS       menu_instrucao_teste2_L0+0, BitPos(menu_instrucao_teste2_L0+0) 
	GOTO        L_menu_instrucao142
L__menu_instrucao277:
;Robozord v3.c,604 :: 		x2 = 48;
	MOVLW       48
	MOVWF       menu_instrucao_x2_L0+0 
	MOVLW       0
	MOVWF       menu_instrucao_x2_L0+1 
;Robozord v3.c,605 :: 		teste2 = !teste2;
	BTG         menu_instrucao_teste2_L0+0, BitPos(menu_instrucao_teste2_L0+0) 
;Robozord v3.c,606 :: 		y2 = 0;
	CLRF        menu_instrucao_y2_L0+0 
;Robozord v3.c,607 :: 		}
	GOTO        L_menu_instrucao143
L_menu_instrucao142:
;Robozord v3.c,609 :: 		else if ((Button (&PORTD, 2, 150, 1))  && (teste3 == 0))
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
	GOTO        L_menu_instrucao146
	BTFSC       menu_instrucao_teste3_L0+0, BitPos(menu_instrucao_teste3_L0+0) 
	GOTO        L_menu_instrucao146
L__menu_instrucao276:
;Robozord v3.c,611 :: 		x3 = 49;
	MOVLW       49
	MOVWF       menu_instrucao_x3_L0+0 
	MOVLW       0
	MOVWF       menu_instrucao_x3_L0+1 
;Robozord v3.c,612 :: 		teste3 = !teste3;
	BTG         menu_instrucao_teste3_L0+0, BitPos(menu_instrucao_teste3_L0+0) 
;Robozord v3.c,613 :: 		y3 = 32;
	MOVLW       32
	MOVWF       menu_instrucao_y3_L0+0 
;Robozord v3.c,614 :: 		}
	GOTO        L_menu_instrucao147
L_menu_instrucao146:
;Robozord v3.c,616 :: 		else if ((Button (&PORTD, 2, 150, 1))  && (teste3== 1))
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
	GOTO        L_menu_instrucao150
	BTFSS       menu_instrucao_teste3_L0+0, BitPos(menu_instrucao_teste3_L0+0) 
	GOTO        L_menu_instrucao150
L__menu_instrucao275:
;Robozord v3.c,618 :: 		x3 = 48;
	MOVLW       48
	MOVWF       menu_instrucao_x3_L0+0 
	MOVLW       0
	MOVWF       menu_instrucao_x3_L0+1 
;Robozord v3.c,619 :: 		teste3 = !teste3;
	BTG         menu_instrucao_teste3_L0+0, BitPos(menu_instrucao_teste3_L0+0) 
;Robozord v3.c,620 :: 		y3 = 0;
	CLRF        menu_instrucao_y3_L0+0 
;Robozord v3.c,621 :: 		}
	GOTO        L_menu_instrucao151
L_menu_instrucao150:
;Robozord v3.c,623 :: 		else if ((Button (&PORTD, 3, 150, 1)) && (teste4 == 0))
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
	GOTO        L_menu_instrucao154
	BTFSC       menu_instrucao_teste4_L0+0, BitPos(menu_instrucao_teste4_L0+0) 
	GOTO        L_menu_instrucao154
L__menu_instrucao274:
;Robozord v3.c,625 :: 		x4 = 49;
	MOVLW       49
	MOVWF       menu_instrucao_x4_L0+0 
	MOVLW       0
	MOVWF       menu_instrucao_x4_L0+1 
;Robozord v3.c,626 :: 		teste4 = !teste4;
	BTG         menu_instrucao_teste4_L0+0, BitPos(menu_instrucao_teste4_L0+0) 
;Robozord v3.c,627 :: 		y4 = 16;
	MOVLW       16
	MOVWF       menu_instrucao_y4_L0+0 
;Robozord v3.c,628 :: 		}
	GOTO        L_menu_instrucao155
L_menu_instrucao154:
;Robozord v3.c,630 :: 		else if ((Button (&PORTD, 3, 150, 1))  && (teste4== 1))
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
	GOTO        L_menu_instrucao158
	BTFSS       menu_instrucao_teste4_L0+0, BitPos(menu_instrucao_teste4_L0+0) 
	GOTO        L_menu_instrucao158
L__menu_instrucao273:
;Robozord v3.c,632 :: 		x4 = 48;
	MOVLW       48
	MOVWF       menu_instrucao_x4_L0+0 
	MOVLW       0
	MOVWF       menu_instrucao_x4_L0+1 
;Robozord v3.c,633 :: 		teste4  = !teste4;
	BTG         menu_instrucao_teste4_L0+0, BitPos(menu_instrucao_teste4_L0+0) 
;Robozord v3.c,634 :: 		y4 = 0;
	CLRF        menu_instrucao_y4_L0+0 
;Robozord v3.c,635 :: 		}
L_menu_instrucao158:
L_menu_instrucao155:
L_menu_instrucao151:
L_menu_instrucao147:
L_menu_instrucao143:
L_menu_instrucao139:
L_menu_instrucao135:
L_menu_instrucao131:
;Robozord v3.c,637 :: 		instrucao = ((y1 + y2) + (y3 + y4));
	MOVF        menu_instrucao_y2_L0+0, 0 
	ADDWF       menu_instrucao_y1_L0+0, 0 
	MOVWF       _instrucao+0 
	MOVF        menu_instrucao_y4_L0+0, 0 
	ADDWF       menu_instrucao_y3_L0+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	ADDWF       _instrucao+0, 1 
;Robozord v3.c,639 :: 		lcd_chr (2,4, x1);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVF        menu_instrucao_x1_L0+0, 0 
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;Robozord v3.c,640 :: 		lcd_chr (2,5, x2);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVF        menu_instrucao_x2_L0+0, 0 
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;Robozord v3.c,641 :: 		lcd_chr (2,6, x3);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVF        menu_instrucao_x3_L0+0, 0 
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;Robozord v3.c,642 :: 		lcd_chr (2,7, x4);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVF        menu_instrucao_x4_L0+0, 0 
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;Robozord v3.c,643 :: 		delay_ms (150);
	MOVLW       195
	MOVWF       R12, 0
	MOVLW       205
	MOVWF       R13, 0
L_menu_instrucao159:
	DECFSZ      R13, 1, 1
	BRA         L_menu_instrucao159
	DECFSZ      R12, 1, 1
	BRA         L_menu_instrucao159
;Robozord v3.c,645 :: 		}while (!(Button(&PORTC, 0, 250, 1)));
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
	GOTO        L_menu_instrucao125
;Robozord v3.c,646 :: 		}
	GOTO        L_menu_instrucao160
L_menu_instrucao124:
;Robozord v3.c,650 :: 		goto Menu_1;
	GOTO        ___menu_instrucao_Menu_1
;Robozord v3.c,651 :: 		}
L_menu_instrucao160:
L_menu_instrucao123:
;Robozord v3.c,652 :: 		}
L_menu_instrucao53:
;Robozord v3.c,654 :: 		if ((rotinas == 0) || (instrucao == 0) || (andar_frente == 0) || (andar_tras == 0) || (rotac_esq == 0) || (rotac_dir == 0)) {
	MOVF        _rotinas+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L__menu_instrucao272
	MOVF        _instrucao+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L__menu_instrucao272
	MOVF        _andar_frente+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L__menu_instrucao272
	MOVF        _andar_tras+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L__menu_instrucao272
	MOVF        _rotac_esq+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L__menu_instrucao272
	MOVF        _rotac_dir+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L__menu_instrucao272
	GOTO        L_menu_instrucao163
L__menu_instrucao272:
;Robozord v3.c,656 :: 		goto menu;
	GOTO        ___menu_instrucao_menu
;Robozord v3.c,657 :: 		}
L_menu_instrucao163:
;Robozord v3.c,659 :: 		}//~~
L_end_menu_instrucao:
	RETURN      0
; end of _menu_instrucao

_quadrado:

;Robozord v3.c,674 :: 		void quadrado(){
;Robozord v3.c,676 :: 		int i = 0;
	CLRF        quadrado_i_L0+0 
	CLRF        quadrado_i_L0+1 
;Robozord v3.c,678 :: 		for (i=0; i<4; i++){
	CLRF        quadrado_i_L0+0 
	CLRF        quadrado_i_L0+1 
L_quadrado164:
	MOVLW       128
	XORWF       quadrado_i_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__quadrado312
	MOVLW       4
	SUBWF       quadrado_i_L0+0, 0 
L__quadrado312:
	BTFSC       STATUS+0, 0 
	GOTO        L_quadrado165
;Robozord v3.c,679 :: 		portd = 0b10100000;
	MOVLW       160
	MOVWF       PORTD+0 
;Robozord v3.c,680 :: 		delay_ms(3000);
	MOVLW       16
	MOVWF       R11, 0
	MOVLW       57
	MOVWF       R12, 0
	MOVLW       13
	MOVWF       R13, 0
L_quadrado167:
	DECFSZ      R13, 1, 1
	BRA         L_quadrado167
	DECFSZ      R12, 1, 1
	BRA         L_quadrado167
	DECFSZ      R11, 1, 1
	BRA         L_quadrado167
	NOP
	NOP
;Robozord v3.c,681 :: 		portd = 0b10010000;
	MOVLW       144
	MOVWF       PORTD+0 
;Robozord v3.c,682 :: 		delay_ms(3392);
	MOVLW       18
	MOVWF       R11, 0
	MOVLW       54
	MOVWF       R12, 0
	MOVLW       35
	MOVWF       R13, 0
L_quadrado168:
	DECFSZ      R13, 1, 1
	BRA         L_quadrado168
	DECFSZ      R12, 1, 1
	BRA         L_quadrado168
	DECFSZ      R11, 1, 1
	BRA         L_quadrado168
	NOP
	NOP
;Robozord v3.c,678 :: 		for (i=0; i<4; i++){
	INFSNZ      quadrado_i_L0+0, 1 
	INCF        quadrado_i_L0+1, 1 
;Robozord v3.c,683 :: 		}
	GOTO        L_quadrado164
L_quadrado165:
;Robozord v3.c,685 :: 		}//~~
L_end_quadrado:
	RETURN      0
; end of _quadrado

_triangulo:

;Robozord v3.c,701 :: 		void triangulo(){
;Robozord v3.c,703 :: 		portd = 0b10100000;
	MOVLW       160
	MOVWF       PORTD+0 
;Robozord v3.c,704 :: 		delay_ms(5000);
	MOVLW       26
	MOVWF       R11, 0
	MOVLW       94
	MOVWF       R12, 0
	MOVLW       110
	MOVWF       R13, 0
L_triangulo169:
	DECFSZ      R13, 1, 1
	BRA         L_triangulo169
	DECFSZ      R12, 1, 1
	BRA         L_triangulo169
	DECFSZ      R11, 1, 1
	BRA         L_triangulo169
	NOP
;Robozord v3.c,705 :: 		portd = 0b10010000;
	MOVLW       144
	MOVWF       PORTD+0 
;Robozord v3.c,706 :: 		delay_ms(6785);
	MOVLW       35
	MOVWF       R11, 0
	MOVLW       108
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_triangulo170:
	DECFSZ      R13, 1, 1
	BRA         L_triangulo170
	DECFSZ      R12, 1, 1
	BRA         L_triangulo170
	DECFSZ      R11, 1, 1
	BRA         L_triangulo170
;Robozord v3.c,707 :: 		portd = 0b10100000;
	MOVLW       160
	MOVWF       PORTD+0 
;Robozord v3.c,708 :: 		delay_ms (5000);
	MOVLW       26
	MOVWF       R11, 0
	MOVLW       94
	MOVWF       R12, 0
	MOVLW       110
	MOVWF       R13, 0
L_triangulo171:
	DECFSZ      R13, 1, 1
	BRA         L_triangulo171
	DECFSZ      R12, 1, 1
	BRA         L_triangulo171
	DECFSZ      R11, 1, 1
	BRA         L_triangulo171
	NOP
;Robozord v3.c,710 :: 		}//~~
L_end_triangulo:
	RETURN      0
; end of _triangulo

_circulo:

;Robozord v3.c,726 :: 		void circulo(){
;Robozord v3.c,727 :: 		int i = 0;
	CLRF        circulo_i_L0+0 
	CLRF        circulo_i_L0+1 
;Robozord v3.c,729 :: 		for (i=0; i<4; i++){
	CLRF        circulo_i_L0+0 
	CLRF        circulo_i_L0+1 
L_circulo172:
	MOVLW       128
	XORWF       circulo_i_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__circulo315
	MOVLW       4
	SUBWF       circulo_i_L0+0, 0 
L__circulo315:
	BTFSC       STATUS+0, 0 
	GOTO        L_circulo173
;Robozord v3.c,730 :: 		portd = 0b10010000;
	MOVLW       144
	MOVWF       PORTD+0 
;Robozord v3.c,731 :: 		delay_ms(13570);
	MOVLW       69
	MOVWF       R11, 0
	MOVLW       216
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_circulo175:
	DECFSZ      R13, 1, 1
	BRA         L_circulo175
	DECFSZ      R12, 1, 1
	BRA         L_circulo175
	DECFSZ      R11, 1, 1
	BRA         L_circulo175
	NOP
;Robozord v3.c,732 :: 		portd = 0b01100000;
	MOVLW       96
	MOVWF       PORTD+0 
;Robozord v3.c,733 :: 		delay_ms(13570);
	MOVLW       69
	MOVWF       R11, 0
	MOVLW       216
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_circulo176:
	DECFSZ      R13, 1, 1
	BRA         L_circulo176
	DECFSZ      R12, 1, 1
	BRA         L_circulo176
	DECFSZ      R11, 1, 1
	BRA         L_circulo176
	NOP
;Robozord v3.c,729 :: 		for (i=0; i<4; i++){
	INFSNZ      circulo_i_L0+0, 1 
	INCF        circulo_i_L0+1, 1 
;Robozord v3.c,734 :: 		}
	GOTO        L_circulo172
L_circulo173:
;Robozord v3.c,735 :: 		}//~~
L_end_circulo:
	RETURN      0
; end of _circulo

_senoide:

;Robozord v3.c,751 :: 		void senoide(){
;Robozord v3.c,752 :: 		int i = 0;
	CLRF        senoide_i_L0+0 
	CLRF        senoide_i_L0+1 
;Robozord v3.c,754 :: 		for (i=0; i<4; i++){
	CLRF        senoide_i_L0+0 
	CLRF        senoide_i_L0+1 
L_senoide177:
	MOVLW       128
	XORWF       senoide_i_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__senoide317
	MOVLW       4
	SUBWF       senoide_i_L0+0, 0 
L__senoide317:
	BTFSC       STATUS+0, 0 
	GOTO        L_senoide178
;Robozord v3.c,755 :: 		portd = 0b10100000;
	MOVLW       160
	MOVWF       PORTD+0 
;Robozord v3.c,756 :: 		delay_ms(3000);
	MOVLW       16
	MOVWF       R11, 0
	MOVLW       57
	MOVWF       R12, 0
	MOVLW       13
	MOVWF       R13, 0
L_senoide180:
	DECFSZ      R13, 1, 1
	BRA         L_senoide180
	DECFSZ      R12, 1, 1
	BRA         L_senoide180
	DECFSZ      R11, 1, 1
	BRA         L_senoide180
	NOP
	NOP
;Robozord v3.c,757 :: 		portd = 0b10010000;
	MOVLW       144
	MOVWF       PORTD+0 
;Robozord v3.c,758 :: 		delay_ms(3392);
	MOVLW       18
	MOVWF       R11, 0
	MOVLW       54
	MOVWF       R12, 0
	MOVLW       35
	MOVWF       R13, 0
L_senoide181:
	DECFSZ      R13, 1, 1
	BRA         L_senoide181
	DECFSZ      R12, 1, 1
	BRA         L_senoide181
	DECFSZ      R11, 1, 1
	BRA         L_senoide181
	NOP
	NOP
;Robozord v3.c,754 :: 		for (i=0; i<4; i++){
	INFSNZ      senoide_i_L0+0, 1 
	INCF        senoide_i_L0+1, 1 
;Robozord v3.c,759 :: 		}
	GOTO        L_senoide177
L_senoide178:
;Robozord v3.c,760 :: 		}//~~
L_end_senoide:
	RETURN      0
; end of _senoide

_main:

;Robozord v3.c,776 :: 		void main() {
;Robozord v3.c,782 :: 		reset = 0;
	BCF         _reset+0, BitPos(_reset+0) 
;Robozord v3.c,785 :: 		TRISB = 0b00000000;
	CLRF        TRISB+0 
;Robozord v3.c,786 :: 		TRISC = 0b00000011;              //ENTRADA BOTÃO OK - OK - C0,C1 ----------  ENTRADA ENCODER : C4 ES ,C5 DR
	MOVLW       3
	MOVWF       TRISC+0 
;Robozord v3.c,787 :: 		TRISD = 0b00001111;              //SAIDA PONTE H: D4,D5,D6,D7   ----------  D0,D1,D2,D3 - Botoes de Entrada - MENU
	MOVLW       15
	MOVWF       TRISD+0 
;Robozord v3.c,789 :: 		PORTB = 0b00000000;
	CLRF        PORTB+0 
;Robozord v3.c,790 :: 		PORTC = 0b00000000;
	CLRF        PORTC+0 
;Robozord v3.c,791 :: 		PORTD = 0b00000000;
	CLRF        PORTD+0 
;Robozord v3.c,793 :: 		ANSELA = 0;
	CLRF        ANSELA+0 
;Robozord v3.c,794 :: 		ANSELB = 0;
	CLRF        ANSELB+0 
;Robozord v3.c,795 :: 		ANSELC = 0;
	CLRF        ANSELC+0 
;Robozord v3.c,796 :: 		ANSELD = 0;
	CLRF        ANSELD+0 
;Robozord v3.c,798 :: 		Lcd_Init();                       //Inicia Display
	CALL        _Lcd_Init+0, 0
;Robozord v3.c,799 :: 		Lcd_Cmd(_LCD_CLEAR);              //Limpa Display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,800 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);         //Desliga cursor display
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,801 :: 		delay_ms(20);
	MOVLW       26
	MOVWF       R12, 0
	MOVLW       248
	MOVWF       R13, 0
L_main182:
	DECFSZ      R13, 1, 1
	BRA         L_main182
	DECFSZ      R12, 1, 1
	BRA         L_main182
	NOP
;Robozord v3.c,805 :: 		Lcd_Cmd(_LCD_CLEAR);              //Limpa Display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,806 :: 		lcd_out(1,4, "Robozord");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr55_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr55_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,807 :: 		lcd_out(2,1, "Engenharia UFSM");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr56_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr56_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,808 :: 		delay_ms (200);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main183:
	DECFSZ      R13, 1, 1
	BRA         L_main183
	DECFSZ      R12, 1, 1
	BRA         L_main183
	DECFSZ      R11, 1, 1
	BRA         L_main183
	NOP
;Robozord v3.c,810 :: 		instrucoes_executar:
___main_instrucoes_executar:
;Robozord v3.c,812 :: 		if ((Button (&PORTC, 0, 250, 1)))
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
	GOTO        L_main184
;Robozord v3.c,815 :: 		Lcd_Cmd(_LCD_CLEAR);                                       //Limpa Display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,816 :: 		delay_ms (50);
	MOVLW       65
	MOVWF       R12, 0
	MOVLW       238
	MOVWF       R13, 0
L_main185:
	DECFSZ      R13, 1, 1
	BRA         L_main185
	DECFSZ      R12, 1, 1
	BRA         L_main185
	NOP
;Robozord v3.c,818 :: 		menu_instrucao();                                          // Chama função de inicialização MENU
	CALL        _menu_instrucao+0, 0
;Robozord v3.c,819 :: 		delay_ms (10);
	MOVLW       13
	MOVWF       R12, 0
	MOVLW       251
	MOVWF       R13, 0
L_main186:
	DECFSZ      R13, 1, 1
	BRA         L_main186
	DECFSZ      R12, 1, 1
	BRA         L_main186
	NOP
	NOP
;Robozord v3.c,831 :: 		if (rotinas == 1){
	MOVF        _rotinas+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main187
;Robozord v3.c,833 :: 		do{
L_main188:
;Robozord v3.c,834 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,835 :: 		lcd_out (1,1, "Quad.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr57_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr57_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,836 :: 		lcd_out (1,9, "Triang.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr58_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr58_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,837 :: 		lcd_out (2,1, "Circ.");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr59_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr59_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,838 :: 		lcd_out (2,9, "Senoide");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       9
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr60_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr60_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,839 :: 		delay_ms (230);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       43
	MOVWF       R12, 0
	MOVLW       176
	MOVWF       R13, 0
L_main191:
	DECFSZ      R13, 1, 1
	BRA         L_main191
	DECFSZ      R12, 1, 1
	BRA         L_main191
	DECFSZ      R11, 1, 1
	BRA         L_main191
	NOP
;Robozord v3.c,842 :: 		if ((Button (&PORTD, 0, 250, 1))) {
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
	GOTO        L_main192
;Robozord v3.c,843 :: 		Lcd_Cmd(_LCD_CLEAR);                                       //Limpa Display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,844 :: 		lcd_out (1,4, "Executando");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr61_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr61_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,845 :: 		lcd_out (2,5, "Quadrado");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr62_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr62_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,846 :: 		quadrado();
	CALL        _quadrado+0, 0
;Robozord v3.c,847 :: 		PORTD = 0B00000000;
	CLRF        PORTD+0 
;Robozord v3.c,848 :: 		}
	GOTO        L_main193
L_main192:
;Robozord v3.c,850 :: 		else if ((Button (&PORTD, 1, 250, 1)))  {
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
	GOTO        L_main194
;Robozord v3.c,851 :: 		Lcd_Cmd(_LCD_CLEAR);                                       //Limpa Display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,852 :: 		lcd_out (1,4, "Executando");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr63_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr63_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,853 :: 		lcd_out (2,4, "Triangulo");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr64_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr64_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,854 :: 		triangulo();
	CALL        _triangulo+0, 0
;Robozord v3.c,855 :: 		PORTD = 0B00000000;
	CLRF        PORTD+0 
;Robozord v3.c,856 :: 		}
	GOTO        L_main195
L_main194:
;Robozord v3.c,859 :: 		else if ((Button (&PORTD, 2, 250, 1)))  {
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
	GOTO        L_main196
;Robozord v3.c,860 :: 		Lcd_Cmd(_LCD_CLEAR);                                       //Limpa Display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,861 :: 		lcd_out (1,4, "Executando");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr65_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr65_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,862 :: 		lcd_out (2,4, "Circulo");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr66_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr66_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,863 :: 		circulo();
	CALL        _circulo+0, 0
;Robozord v3.c,864 :: 		PORTD = 0B00000000;
	CLRF        PORTD+0 
;Robozord v3.c,865 :: 		}
	GOTO        L_main197
L_main196:
;Robozord v3.c,867 :: 		else if ((Button (&PORTD, 3, 250, 1)))  {
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
	GOTO        L_main198
;Robozord v3.c,868 :: 		Lcd_Cmd(_LCD_CLEAR);                                       //Limpa Display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,869 :: 		lcd_out (1,4, "Executando");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr67_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr67_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,870 :: 		lcd_out (2,4, "Senoide");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr68_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr68_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,871 :: 		senoide();
	CALL        _senoide+0, 0
;Robozord v3.c,872 :: 		PORTD = 0B00000000;
	CLRF        PORTD+0 
;Robozord v3.c,873 :: 		}
L_main198:
L_main197:
L_main195:
L_main193:
;Robozord v3.c,874 :: 		rotinas = 0;
	CLRF        _rotinas+0 
;Robozord v3.c,875 :: 		}while (PORTC.B0 == 0);
	BTFSS       PORTC+0, 0 
	GOTO        L_main188
;Robozord v3.c,876 :: 		}
	GOTO        L_main199
L_main187:
;Robozord v3.c,878 :: 		else if (instrucao > 0){
	MOVLW       128
	XORLW       0
	MOVWF       R0 
	MOVLW       128
	XORWF       _instrucao+0, 0 
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main200
;Robozord v3.c,880 :: 		delay_ms(500);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       138
	MOVWF       R12, 0
	MOVLW       85
	MOVWF       R13, 0
L_main201:
	DECFSZ      R13, 1, 1
	BRA         L_main201
	DECFSZ      R12, 1, 1
	BRA         L_main201
	DECFSZ      R11, 1, 1
	BRA         L_main201
	NOP
	NOP
;Robozord v3.c,881 :: 		Lcd_Cmd(_LCD_CLEAR);                                       //Limpa Display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,883 :: 		switch (instrucao){
	GOTO        L_main202
;Robozord v3.c,885 :: 		case 0b00010000:
L_main204:
;Robozord v3.c,886 :: 		portd = 0b10100000;
	MOVLW       160
	MOVWF       PORTD+0 
;Robozord v3.c,887 :: 		break;
	GOTO        L_main203
;Robozord v3.c,889 :: 		case 0b00100000:
L_main205:
;Robozord v3.c,890 :: 		portd = 0b10100000;
	MOVLW       160
	MOVWF       PORTD+0 
;Robozord v3.c,891 :: 		break;
	GOTO        L_main203
;Robozord v3.c,894 :: 		case 0b00110000:
L_main206:
;Robozord v3.c,895 :: 		portd = 0b10100000;
	MOVLW       160
	MOVWF       PORTD+0 
;Robozord v3.c,896 :: 		break;
	GOTO        L_main203
;Robozord v3.c,898 :: 		case 0b01000000:
L_main207:
;Robozord v3.c,899 :: 		portd = 0b10100000;
	MOVLW       160
	MOVWF       PORTD+0 
;Robozord v3.c,900 :: 		break;
	GOTO        L_main203
;Robozord v3.c,902 :: 		case 0b01010000:
L_main208:
;Robozord v3.c,903 :: 		portd = 0b10100000;
	MOVLW       160
	MOVWF       PORTD+0 
;Robozord v3.c,904 :: 		break;
	GOTO        L_main203
;Robozord v3.c,906 :: 		case 0b01110000:
L_main209:
;Robozord v3.c,907 :: 		portd = 0b10100000;
	MOVLW       160
	MOVWF       PORTD+0 
;Robozord v3.c,908 :: 		break;
	GOTO        L_main203
;Robozord v3.c,910 :: 		case 0b10000000:
L_main210:
;Robozord v3.c,911 :: 		portd = 0b10100000;
	MOVLW       160
	MOVWF       PORTD+0 
;Robozord v3.c,912 :: 		break;
	GOTO        L_main203
;Robozord v3.c,914 :: 		case 0b10010000:
L_main211:
;Robozord v3.c,915 :: 		portd = 0b10100000;
	MOVLW       160
	MOVWF       PORTD+0 
;Robozord v3.c,916 :: 		break;
	GOTO        L_main203
;Robozord v3.c,918 :: 		case 0b10100000:
L_main212:
;Robozord v3.c,919 :: 		portd = 0b10100000;
	MOVLW       160
	MOVWF       PORTD+0 
;Robozord v3.c,920 :: 		break;
	GOTO        L_main203
;Robozord v3.c,922 :: 		case 0b10110000:
L_main213:
;Robozord v3.c,923 :: 		portd = 0b10100000;
	MOVLW       160
	MOVWF       PORTD+0 
;Robozord v3.c,924 :: 		break;
	GOTO        L_main203
;Robozord v3.c,926 :: 		case 0b11000000:
L_main214:
;Robozord v3.c,927 :: 		portd = 0b10100000;
	MOVLW       160
	MOVWF       PORTD+0 
;Robozord v3.c,928 :: 		break;
	GOTO        L_main203
;Robozord v3.c,930 :: 		case 0b11010000:
L_main215:
;Robozord v3.c,931 :: 		portd = 0b10100000;
	MOVLW       160
	MOVWF       PORTD+0 
;Robozord v3.c,932 :: 		break;
	GOTO        L_main203
;Robozord v3.c,934 :: 		case 0b11100000:
L_main216:
;Robozord v3.c,935 :: 		portd = 0b10100000;
	MOVLW       160
	MOVWF       PORTD+0 
;Robozord v3.c,936 :: 		break;
	GOTO        L_main203
;Robozord v3.c,938 :: 		case 0b11110000:
L_main217:
;Robozord v3.c,939 :: 		portd = 0b10100000;
	MOVLW       160
	MOVWF       PORTD+0 
;Robozord v3.c,940 :: 		break;
	GOTO        L_main203
;Robozord v3.c,942 :: 		}
L_main202:
	MOVF        _instrucao+0, 0 
	XORLW       16
	BTFSC       STATUS+0, 2 
	GOTO        L_main204
	MOVF        _instrucao+0, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_main205
	MOVF        _instrucao+0, 0 
	XORLW       48
	BTFSC       STATUS+0, 2 
	GOTO        L_main206
	MOVF        _instrucao+0, 0 
	XORLW       64
	BTFSC       STATUS+0, 2 
	GOTO        L_main207
	MOVF        _instrucao+0, 0 
	XORLW       80
	BTFSC       STATUS+0, 2 
	GOTO        L_main208
	MOVF        _instrucao+0, 0 
	XORLW       112
	BTFSC       STATUS+0, 2 
	GOTO        L_main209
	MOVLW       0
	BTFSC       _instrucao+0, 7 
	MOVLW       255
	MOVWF       R0 
	MOVLW       0
	XORWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main319
	MOVLW       128
	XORWF       _instrucao+0, 0 
L__main319:
	BTFSC       STATUS+0, 2 
	GOTO        L_main210
	MOVLW       0
	BTFSC       _instrucao+0, 7 
	MOVLW       255
	MOVWF       R0 
	MOVLW       0
	XORWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main320
	MOVLW       144
	XORWF       _instrucao+0, 0 
L__main320:
	BTFSC       STATUS+0, 2 
	GOTO        L_main211
	MOVLW       0
	BTFSC       _instrucao+0, 7 
	MOVLW       255
	MOVWF       R0 
	MOVLW       0
	XORWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main321
	MOVLW       160
	XORWF       _instrucao+0, 0 
L__main321:
	BTFSC       STATUS+0, 2 
	GOTO        L_main212
	MOVLW       0
	BTFSC       _instrucao+0, 7 
	MOVLW       255
	MOVWF       R0 
	MOVLW       0
	XORWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main322
	MOVLW       176
	XORWF       _instrucao+0, 0 
L__main322:
	BTFSC       STATUS+0, 2 
	GOTO        L_main213
	MOVLW       0
	BTFSC       _instrucao+0, 7 
	MOVLW       255
	MOVWF       R0 
	MOVLW       0
	XORWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main323
	MOVLW       192
	XORWF       _instrucao+0, 0 
L__main323:
	BTFSC       STATUS+0, 2 
	GOTO        L_main214
	MOVLW       0
	BTFSC       _instrucao+0, 7 
	MOVLW       255
	MOVWF       R0 
	MOVLW       0
	XORWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main324
	MOVLW       208
	XORWF       _instrucao+0, 0 
L__main324:
	BTFSC       STATUS+0, 2 
	GOTO        L_main215
	MOVLW       0
	BTFSC       _instrucao+0, 7 
	MOVLW       255
	MOVWF       R0 
	MOVLW       0
	XORWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main325
	MOVLW       224
	XORWF       _instrucao+0, 0 
L__main325:
	BTFSC       STATUS+0, 2 
	GOTO        L_main216
	MOVLW       0
	BTFSC       _instrucao+0, 7 
	MOVLW       255
	MOVWF       R0 
	MOVLW       0
	XORWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main326
	MOVLW       240
	XORWF       _instrucao+0, 0 
L__main326:
	BTFSC       STATUS+0, 2 
	GOTO        L_main217
L_main203:
;Robozord v3.c,945 :: 		do {
L_main218:
;Robozord v3.c,946 :: 		lcd_out (1,4, "Executando");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr69_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr69_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,947 :: 		lcd_out (2,5, "Instrucao");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr70_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr70_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,948 :: 		}while (PORTC.B1 == 0);
	BTFSS       PORTC+0, 1 
	GOTO        L_main218
;Robozord v3.c,951 :: 		}
	GOTO        L_main221
L_main200:
;Robozord v3.c,953 :: 		else if (andar_frente > 0)
	MOVLW       128
	XORLW       0
	MOVWF       R0 
	MOVLW       128
	XORWF       _andar_frente+0, 0 
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main222
;Robozord v3.c,955 :: 		switch(andar_frente){
	GOTO        L_main223
;Robozord v3.c,957 :: 		case 0b00000001:
L_main225:
;Robozord v3.c,958 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,959 :: 		lcd_out (1,2, "Selec. Andar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr71_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr71_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,960 :: 		lcd_out (2,2, "Frente 15'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr72_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr72_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,961 :: 		portd = 0b11000000;
	MOVLW       192
	MOVWF       PORTD+0 
;Robozord v3.c,962 :: 		delay_ms(2500);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       175
	MOVWF       R12, 0
	MOVLW       182
	MOVWF       R13, 0
L_main226:
	DECFSZ      R13, 1, 1
	BRA         L_main226
	DECFSZ      R12, 1, 1
	BRA         L_main226
	DECFSZ      R11, 1, 1
	BRA         L_main226
	NOP
;Robozord v3.c,963 :: 		break;
	GOTO        L_main224
;Robozord v3.c,965 :: 		case 0b00000010:
L_main227:
;Robozord v3.c,966 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,967 :: 		lcd_out (1,2, "Selec. Andar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr73_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr73_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,968 :: 		lcd_out (2,2, "Frente 30'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr74_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr74_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,969 :: 		portd = 0b11000000;
	MOVLW       192
	MOVWF       PORTD+0 
;Robozord v3.c,970 :: 		delay_ms(5000);
	MOVLW       26
	MOVWF       R11, 0
	MOVLW       94
	MOVWF       R12, 0
	MOVLW       110
	MOVWF       R13, 0
L_main228:
	DECFSZ      R13, 1, 1
	BRA         L_main228
	DECFSZ      R12, 1, 1
	BRA         L_main228
	DECFSZ      R11, 1, 1
	BRA         L_main228
	NOP
;Robozord v3.c,971 :: 		break;
	GOTO        L_main224
;Robozord v3.c,973 :: 		case 0b00000011:
L_main229:
;Robozord v3.c,974 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,975 :: 		lcd_out (1,2, "Selec. Andar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr75_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr75_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,976 :: 		lcd_out (2,2, "Frente 45'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr76_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr76_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,977 :: 		portd = 0b11000000;
	MOVLW       192
	MOVWF       PORTD+0 
;Robozord v3.c,978 :: 		delay_ms(7500);
	MOVLW       39
	MOVWF       R11, 0
	MOVLW       13
	MOVWF       R12, 0
	MOVLW       38
	MOVWF       R13, 0
L_main230:
	DECFSZ      R13, 1, 1
	BRA         L_main230
	DECFSZ      R12, 1, 1
	BRA         L_main230
	DECFSZ      R11, 1, 1
	BRA         L_main230
	NOP
;Robozord v3.c,979 :: 		break;
	GOTO        L_main224
;Robozord v3.c,981 :: 		case 0b00000100:
L_main231:
;Robozord v3.c,982 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,983 :: 		lcd_out (1,2, "Selec. Andar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr77_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr77_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,984 :: 		lcd_out (2,2, "Frente 60'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr78_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr78_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,985 :: 		portd = 0b1100000;
	MOVLW       96
	MOVWF       PORTD+0 
;Robozord v3.c,986 :: 		delay_ms(10000);
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_main232:
	DECFSZ      R13, 1, 1
	BRA         L_main232
	DECFSZ      R12, 1, 1
	BRA         L_main232
	DECFSZ      R11, 1, 1
	BRA         L_main232
	NOP
	NOP
;Robozord v3.c,987 :: 		break;
	GOTO        L_main224
;Robozord v3.c,989 :: 		}
L_main223:
	MOVF        _andar_frente+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_main225
	MOVF        _andar_frente+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_main227
	MOVF        _andar_frente+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_main229
	MOVF        _andar_frente+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_main231
L_main224:
;Robozord v3.c,991 :: 		}
	GOTO        L_main233
L_main222:
;Robozord v3.c,994 :: 		else if (andar_tras > 0)
	MOVLW       128
	XORLW       0
	MOVWF       R0 
	MOVLW       128
	XORWF       _andar_tras+0, 0 
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main234
;Robozord v3.c,996 :: 		switch(andar_tras){
	GOTO        L_main235
;Robozord v3.c,998 :: 		case 0b00000001:
L_main237:
;Robozord v3.c,999 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,1000 :: 		lcd_out (1,2, "Selec. Andar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr79_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr79_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,1001 :: 		lcd_out (2,2, "Tras 15'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr80_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr80_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,1002 :: 		portd = 0b00110000;
	MOVLW       48
	MOVWF       PORTD+0 
;Robozord v3.c,1003 :: 		delay_ms(2500);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       175
	MOVWF       R12, 0
	MOVLW       182
	MOVWF       R13, 0
L_main238:
	DECFSZ      R13, 1, 1
	BRA         L_main238
	DECFSZ      R12, 1, 1
	BRA         L_main238
	DECFSZ      R11, 1, 1
	BRA         L_main238
	NOP
;Robozord v3.c,1004 :: 		break;
	GOTO        L_main236
;Robozord v3.c,1006 :: 		case 0b00000010:
L_main239:
;Robozord v3.c,1007 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,1008 :: 		lcd_out (1,2, "Selec. Andar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr81_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr81_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,1009 :: 		lcd_out (2,2, "Tras 30'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr82_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr82_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,1010 :: 		portd = 0b00110000;
	MOVLW       48
	MOVWF       PORTD+0 
;Robozord v3.c,1011 :: 		delay_ms(5000);
	MOVLW       26
	MOVWF       R11, 0
	MOVLW       94
	MOVWF       R12, 0
	MOVLW       110
	MOVWF       R13, 0
L_main240:
	DECFSZ      R13, 1, 1
	BRA         L_main240
	DECFSZ      R12, 1, 1
	BRA         L_main240
	DECFSZ      R11, 1, 1
	BRA         L_main240
	NOP
;Robozord v3.c,1012 :: 		break;
	GOTO        L_main236
;Robozord v3.c,1014 :: 		case 0b00000011:
L_main241:
;Robozord v3.c,1015 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,1016 :: 		lcd_out (1,2, "Selec. Andar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr83_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr83_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,1017 :: 		lcd_out (2,2, "Tras 45'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr84_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr84_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,1018 :: 		portd = 0b00110000;
	MOVLW       48
	MOVWF       PORTD+0 
;Robozord v3.c,1019 :: 		delay_ms(7500);
	MOVLW       39
	MOVWF       R11, 0
	MOVLW       13
	MOVWF       R12, 0
	MOVLW       38
	MOVWF       R13, 0
L_main242:
	DECFSZ      R13, 1, 1
	BRA         L_main242
	DECFSZ      R12, 1, 1
	BRA         L_main242
	DECFSZ      R11, 1, 1
	BRA         L_main242
	NOP
;Robozord v3.c,1020 :: 		break;
	GOTO        L_main236
;Robozord v3.c,1022 :: 		case 0b00000100:
L_main243:
;Robozord v3.c,1023 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,1024 :: 		lcd_out (1,2, "Selec. Andar");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr85_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr85_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,1025 :: 		lcd_out (2,2, "Tras 60'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr86_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr86_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,1026 :: 		portd = 0b00110000;
	MOVLW       48
	MOVWF       PORTD+0 
;Robozord v3.c,1027 :: 		delay_ms(10000);
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_main244:
	DECFSZ      R13, 1, 1
	BRA         L_main244
	DECFSZ      R12, 1, 1
	BRA         L_main244
	DECFSZ      R11, 1, 1
	BRA         L_main244
	NOP
	NOP
;Robozord v3.c,1028 :: 		break;
	GOTO        L_main236
;Robozord v3.c,1030 :: 		}
L_main235:
	MOVF        _andar_tras+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_main237
	MOVF        _andar_tras+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_main239
	MOVF        _andar_tras+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_main241
	MOVF        _andar_tras+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_main243
L_main236:
;Robozord v3.c,1033 :: 		}
	GOTO        L_main245
L_main234:
;Robozord v3.c,1035 :: 		else if (rotac_esq > 0)
	MOVLW       128
	XORLW       0
	MOVWF       R0 
	MOVLW       128
	XORWF       _rotac_esq+0, 0 
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main246
;Robozord v3.c,1037 :: 		switch(rotac_esq){
	GOTO        L_main247
;Robozord v3.c,1039 :: 		case 0b00000001:
L_main249:
;Robozord v3.c,1040 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,1041 :: 		lcd_out (1,2, "Selec. Rotac.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr87_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr87_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,1042 :: 		lcd_out (2,3, "Esqu. 30'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr88_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr88_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,1043 :: 		portd = 0b01100000;
	MOVLW       96
	MOVWF       PORTD+0 
;Robozord v3.c,1044 :: 		delay_ms(1000);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main250:
	DECFSZ      R13, 1, 1
	BRA         L_main250
	DECFSZ      R12, 1, 1
	BRA         L_main250
	DECFSZ      R11, 1, 1
	BRA         L_main250
	NOP
	NOP
;Robozord v3.c,1045 :: 		break;
	GOTO        L_main248
;Robozord v3.c,1047 :: 		case 0b00000010:
L_main251:
;Robozord v3.c,1048 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,1049 :: 		lcd_out (1,2, "Selec. Rotac.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr89_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr89_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,1050 :: 		lcd_out (2,3, "Esqu. 45'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr90_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr90_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,1051 :: 		portd = 0b01100000;
	MOVLW       96
	MOVWF       PORTD+0 
;Robozord v3.c,1052 :: 		delay_ms(2000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main252:
	DECFSZ      R13, 1, 1
	BRA         L_main252
	DECFSZ      R12, 1, 1
	BRA         L_main252
	DECFSZ      R11, 1, 1
	BRA         L_main252
	NOP
	NOP
;Robozord v3.c,1053 :: 		break;
	GOTO        L_main248
;Robozord v3.c,1055 :: 		case 0b00000011:
L_main253:
;Robozord v3.c,1056 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,1057 :: 		lcd_out (1,2, "Selec. Rotac.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr91_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr91_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,1058 :: 		lcd_out (2,3, "Esqu. 60'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr92_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr92_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,1059 :: 		portd = 0b01100000;
	MOVLW       96
	MOVWF       PORTD+0 
;Robozord v3.c,1060 :: 		delay_ms(3000);
	MOVLW       16
	MOVWF       R11, 0
	MOVLW       57
	MOVWF       R12, 0
	MOVLW       13
	MOVWF       R13, 0
L_main254:
	DECFSZ      R13, 1, 1
	BRA         L_main254
	DECFSZ      R12, 1, 1
	BRA         L_main254
	DECFSZ      R11, 1, 1
	BRA         L_main254
	NOP
	NOP
;Robozord v3.c,1061 :: 		break;
	GOTO        L_main248
;Robozord v3.c,1063 :: 		case 0b00000100:
L_main255:
;Robozord v3.c,1064 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,1065 :: 		lcd_out (1,2, "Selec. Rotac.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr93_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr93_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,1066 :: 		lcd_out (2,3, "Esqu. 90'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr94_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr94_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,1067 :: 		portd = 0b01100000;
	MOVLW       96
	MOVWF       PORTD+0 
;Robozord v3.c,1068 :: 		delay_ms(4000);
	MOVLW       21
	MOVWF       R11, 0
	MOVLW       75
	MOVWF       R12, 0
	MOVLW       190
	MOVWF       R13, 0
L_main256:
	DECFSZ      R13, 1, 1
	BRA         L_main256
	DECFSZ      R12, 1, 1
	BRA         L_main256
	DECFSZ      R11, 1, 1
	BRA         L_main256
	NOP
;Robozord v3.c,1069 :: 		break;
	GOTO        L_main248
;Robozord v3.c,1071 :: 		}
L_main247:
	MOVF        _rotac_esq+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_main249
	MOVF        _rotac_esq+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_main251
	MOVF        _rotac_esq+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_main253
	MOVF        _rotac_esq+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_main255
L_main248:
;Robozord v3.c,1075 :: 		}
	GOTO        L_main257
L_main246:
;Robozord v3.c,1077 :: 		else if (rotac_dir > 0)
	MOVLW       128
	XORLW       0
	MOVWF       R0 
	MOVLW       128
	XORWF       _rotac_dir+0, 0 
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main258
;Robozord v3.c,1079 :: 		switch(rotac_dir){
	GOTO        L_main259
;Robozord v3.c,1081 :: 		case 0b00000001:
L_main261:
;Robozord v3.c,1082 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,1083 :: 		lcd_out (1,2, "Selec. Rotac.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr95_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr95_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,1084 :: 		lcd_out (2,3, "Dir. 30'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr96_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr96_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,1085 :: 		portd = 0b01010000;
	MOVLW       80
	MOVWF       PORTD+0 
;Robozord v3.c,1086 :: 		delay_ms(1000);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main262:
	DECFSZ      R13, 1, 1
	BRA         L_main262
	DECFSZ      R12, 1, 1
	BRA         L_main262
	DECFSZ      R11, 1, 1
	BRA         L_main262
	NOP
	NOP
;Robozord v3.c,1087 :: 		break;
	GOTO        L_main260
;Robozord v3.c,1089 :: 		case 0b00000010:
L_main263:
;Robozord v3.c,1090 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,1091 :: 		lcd_out (1,2, "Selec. Rotac.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr97_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr97_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,1092 :: 		lcd_out (2,3, "Dir. 45'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr98_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr98_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,1093 :: 		portd = 0b01010000;
	MOVLW       80
	MOVWF       PORTD+0 
;Robozord v3.c,1094 :: 		delay_ms(2000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main264:
	DECFSZ      R13, 1, 1
	BRA         L_main264
	DECFSZ      R12, 1, 1
	BRA         L_main264
	DECFSZ      R11, 1, 1
	BRA         L_main264
	NOP
	NOP
;Robozord v3.c,1095 :: 		break;
	GOTO        L_main260
;Robozord v3.c,1097 :: 		case 0b00000011:
L_main265:
;Robozord v3.c,1098 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,1099 :: 		lcd_out (1,2, "Selec. Rotac.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr99_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr99_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,1100 :: 		lcd_out (2,3, "Dir. 60'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr100_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr100_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,1101 :: 		portd = 0b01010000;
	MOVLW       80
	MOVWF       PORTD+0 
;Robozord v3.c,1102 :: 		delay_ms(3000);
	MOVLW       16
	MOVWF       R11, 0
	MOVLW       57
	MOVWF       R12, 0
	MOVLW       13
	MOVWF       R13, 0
L_main266:
	DECFSZ      R13, 1, 1
	BRA         L_main266
	DECFSZ      R12, 1, 1
	BRA         L_main266
	DECFSZ      R11, 1, 1
	BRA         L_main266
	NOP
	NOP
;Robozord v3.c,1103 :: 		break;
	GOTO        L_main260
;Robozord v3.c,1105 :: 		case 0b00000100:
L_main267:
;Robozord v3.c,1106 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,1107 :: 		lcd_out (1,2, "Selec. Rotac.");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr101_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr101_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,1108 :: 		lcd_out (2,3, "Dir. 90'");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr102_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr102_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,1109 :: 		portd = 0b01010000;
	MOVLW       80
	MOVWF       PORTD+0 
;Robozord v3.c,1110 :: 		delay_ms(4000);
	MOVLW       21
	MOVWF       R11, 0
	MOVLW       75
	MOVWF       R12, 0
	MOVLW       190
	MOVWF       R13, 0
L_main268:
	DECFSZ      R13, 1, 1
	BRA         L_main268
	DECFSZ      R12, 1, 1
	BRA         L_main268
	DECFSZ      R11, 1, 1
	BRA         L_main268
	NOP
;Robozord v3.c,1111 :: 		break;
	GOTO        L_main260
;Robozord v3.c,1113 :: 		}
L_main259:
	MOVF        _rotac_dir+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_main261
	MOVF        _rotac_dir+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_main263
	MOVF        _rotac_dir+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_main265
	MOVF        _rotac_dir+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_main267
L_main260:
;Robozord v3.c,1115 :: 		}
L_main258:
L_main257:
L_main245:
L_main233:
L_main221:
L_main199:
;Robozord v3.c,1118 :: 		instrucao = 0;
	CLRF        _instrucao+0 
;Robozord v3.c,1119 :: 		rotinas = 0;
	CLRF        _rotinas+0 
;Robozord v3.c,1120 :: 		PORTD = 0b00000000;
	CLRF        PORTD+0 
;Robozord v3.c,1122 :: 		}
L_main184:
;Robozord v3.c,1124 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Robozord v3.c,1125 :: 		lcd_out(1,4, "Robozord");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr103_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr103_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,1126 :: 		lcd_out(2,1, "Engenharia UFSM");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr104_Robozord_32v3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr104_Robozord_32v3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Robozord v3.c,1127 :: 		delay_ms (200);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main269:
	DECFSZ      R13, 1, 1
	BRA         L_main269
	DECFSZ      R12, 1, 1
	BRA         L_main269
	DECFSZ      R11, 1, 1
	BRA         L_main269
	NOP
;Robozord v3.c,1129 :: 		goto instrucoes_executar;
	GOTO        ___main_instrucoes_executar
;Robozord v3.c,1131 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
