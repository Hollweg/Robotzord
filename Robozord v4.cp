#line 1 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 034 - Robozord/Robozord v.3/Robozord v3.c"
#line 17 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 034 - Robozord/Robozord v.3/Robozord v3.c"
sbit LCD_RS at LATB1_bit;
sbit LCD_EN at LATB0_bit;
sbit LCD_D4 at LATB4_bit;
sbit LCD_D5 at LATB5_bit;
sbit LCD_D6 at LATB6_bit;
sbit LCD_D7 at LATB7_bit;

sbit LCD_RS_Direction at TRISB1_bit;
sbit LCD_EN_Direction at TRISB0_bit;
sbit LCD_D4_Direction at TRISB4_bit;
sbit LCD_D5_Direction at TRISB5_bit;
sbit LCD_D6_Direction at TRISB6_bit;
sbit LCD_D7_Direction at TRISB7_bit;




int esl = 0,drl = 0,inst;
bit esdir,drdir,reset;
short int instrucao = 0;
short int rotinas = 0;
short int andar_frente = 0, andar_tras = 0, rotac_dir = 0, rotac_esq = 0;
#line 53 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 034 - Robozord/Robozord v.3/Robozord v3.c"
void contador(int esl,int drl){

 int es = 0,dr = 0 ;
 bit one1,one2,brkes,brkdr;

 one1 = 0;
 one2 = 0;
 brkes = 1;
 brkdr = 1;

 if(reset == 1){

 one1 = 1;
 one2 = 1;

 }

 while ( (es < esl || dr < drl) || ((brkes || brkdr) == 1)){

 if(es < esl){
 if(one1 == 0){
 if (portc.f4 == 1) {
 es = es +1;
 one1 = 1;
 }
 }

 if(one1 = 1)
 one1 = portc.f4;





 }

 else {
 portd.f7 = 0;
 portd.f6 = 0;
 brkes = 0;
 }

 if(dr <drl){

 if(one2 == 0){
 if (portc.f5 == 1){
 dr = dr + 1;
 one2 = 1;
 }
 }

 if(one2 = 1)
 one2 = portc.f5;




 }

 else{
 portd.f5 = 0;
 portd.f4 = 0;
 brkdr = 0;
 }
 }
 reset = 1;

}
#line 135 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 034 - Robozord/Robozord v.3/Robozord v3.c"
void codec(int inst){

if ((inst & 0b10000000)>0){
 if((inst & 0b01000000)>0){

 portd = 0b10100000;
 switch(inst) {
 case(0b11110000):{
 esl = 47;
 drl = 47;
 break;
 }

 case(0b11100000):{
 esl = 35;
 drl = 35;
 break;
 }


 case(0b11010000):{
 esl = 24;
 drl = 24;
 break;
 }

 case(0b11000000): {
 esl = 12;
 drl = 12;
 break;
 }

 }

 }
 else{
 portd = 0b01010000;
 switch(inst){

 case(0b10110000):{
 esl = 47;
 drl = 47;
 break;
 }
 case(0b10100000):{
 esl = 35;
 drl = 35;
 break;
 }

 case(0b10010000):{
 esl = 24;
 drl = 24;
 break;
 }

 case(0b10000000):{
 esl = 12;
 drl = 12;
 break;
 }
 }

 }

 }

 else {
 if((inst & 0b01000000)>0) {
 portd = 0b01100000;
 switch(inst) {

 case(0b01110000): {
 esl = 22;
 drl = 22;
 break; }

 case(0b01100000): {
 esl = 16;
 drl = 16;
 break; }


 case(0b01010000): {
 esl = 11;
 drl = 11;
 break; }

 case(0b01000000): {
 esl = 5;
 drl = 5;
 break; }

 }
 }

 else {

 portd = 0b10010000;
 switch(inst) {

 case(0b00110000): {
 esl = 22;
 drl = 22;
 break; }

 case(0b00100000): {
 esl = 16;
 drl = 16;
 break; }

 case(0b00010000): {
 esl = 11;
 drl = 11;
 break; }

 case(0b00000000): {
 esl = 5;
 drl = 5;
 break; }
 }
 }
 }
 }
#line 274 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 034 - Robozord/Robozord v.3/Robozord v3.c"
unsigned short menu_instrucao(){

 int x1, x2, x3, x4;
 unsigned short y1, y2, y3, y4;
 bit teste1, teste2, teste3, teste4;

 menu:

 Lcd_Cmd(_LCD_CLEAR);
 lcd_out (1,1, "Rotinas");
 lcd_out (2,1, "Insira Instrucao");
 delay_ms (200);

 if (Button (&PORTD, 0, 250, 1)){
 rotinas = 1;
 delay_ms(100);
 return;

 }

 else if (Button (&PORTD, 1, 200, 1))
 {
 Menu_1:

 Lcd_Cmd(_LCD_CLEAR);
 lcd_out (1,1, "Insira");
 lcd_out (1,8, "instrucao");
 lcd_out (2,3, "A-Z");
 lcd_out (2,8, "Binario");
 delay_ms(250);

 if(Button (&PORTD, 0, 250, 1))
 {
 Menu_2:

 delay_ms(700);
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,3, "Selecione");
 lcd_out (2,1, "Andar Rotacionar");


 if(Button (&PORTD, 0, 250, 1))
 {
 Menu_3:

 delay_ms(700);
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Selec. Andar");
 lcd_out (2,2, "Frente Tras");


 if(Button (&PORTD, 0, 250, 1))
 {
 Menu_4:
 delay_ms(700);
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Andar Frente");
 lcd_out (2,2, "15 30 45 60");

 if(Button (&PORTD, 0, 250, 1))
 {
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Selec. Andar");
 lcd_out (2,2, "Frente 30'");
 andar_frente = 0b00000001;
 delay_ms(2000);

 }

 else if(Button (&PORTD, 1, 250, 1))
 {
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Selec. Andar");
 lcd_out (2,2, "Frente 45'");
 andar_frente = 0b00000010;
 delay_ms(2000);

 }

 else if(Button (&PORTD, 2, 250, 1))
 {
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Selec. Andar");
 lcd_out (2,2, "Frente 60'");
 andar_frente = 0b00000011;
 delay_ms(2000);
 }

 else if(Button (&PORTD, 3, 250, 1))
 {
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Selec. Andar");
 lcd_out (2,2, "Frente 90'");
 andar_frente = 0b00000100;
 delay_ms(2000);
 }

 else
 {
 goto Menu_4;
 }

 }

 else if(Button (&PORTD, 1, 250, 1))
 {
 Menu_5:
 delay_ms(700);
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Andar Tras");
 lcd_out (2,1, "30' 45' 60' 90'");

 if(Button (&PORTD, 0, 250, 1))
 {
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Selec. Andar");
 lcd_out (2,2, "Tras 30'");
 andar_tras = 0b00000001;
 delay_ms(2000);

 }

 else if(Button (&PORTD, 1, 250, 1))
 {
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Selec. Andar");
 lcd_out (2,2, "Tras 45'");
 andar_tras = 0b00000010;
 delay_ms(2000);

 }

 else if(Button (&PORTD, 2, 250, 1))
 {
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Selec. Andar");
 lcd_out (2,2, "Tras 60'");
 andar_tras = 0b00000011;
 delay_ms(2000);
 }

 else if(Button (&PORTD, 3, 250, 1))
 {
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Selec. Andar");
 lcd_out (2,2, "Tras 90'");
 andar_tras = 0b00000100;
 delay_ms(2000);
 }

 else
 {
 goto Menu_5;
 }

 }

 else
 {
 goto Menu_3;
 }
 }

 else if(Button (&PORTD, 1, 250, 1))
 {
 Menu_6:
 delay_ms(700);
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Selec. Rotac.");
 lcd_out (2,3, "Esqu. Dir.");

 if(Button (&PORTD, 0, 250, 1))
 {
 Menu_7:
 delay_ms(700);
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Rotac. Esqu.");
 lcd_out (2,1, "30' 45' 60' 90'");

 if(Button (&PORTD, 0, 250, 1))
 {
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Selec. Rotac.");
 lcd_out (2,3, "Esqu. 30'");
 rotac_esq = 0b00000001;
 delay_ms(2000);
 }

 else if(Button (&PORTD, 1, 250, 1))
 {
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Selec. Rotac.");
 lcd_out (2,3, "Esqu. 45'");
 rotac_esq = 0b00000010;
 delay_ms(2000);
 }

 else if(Button (&PORTD, 2, 250, 1))
 {
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Selec. Rotac.");
 lcd_out (2,3, "Esqu. 60'");
 rotac_esq = 0b00000011;
 delay_ms(2000);
 }

 else if(Button (&PORTD, 3, 250, 1))
 {
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Selec. Rotac.");
 lcd_out (2,3, "Esqu. 90'");
 rotac_esq = 0b00000100;
 delay_ms(2000);
 }

 else
 goto Menu_7;


 }

 else if(Button (&PORTD, 1, 250, 1))
 {
 Menu_8:
 delay_ms(700);
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Rotac. Dir.");
 lcd_out (2,1, "30' 45' 60' 90'");

 if(Button (&PORTD, 0, 250, 1))
 {
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Selec. Rotac.");
 lcd_out (2,3, "Dir. 30'");
 rotac_dir = 0b00000001;
 delay_ms(2000);
 }

 else if(Button (&PORTD, 1, 250, 1))
 {
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Selec. Rotac.");
 lcd_out (2,3, "Dir. 45'");
 rotac_dir = 0b00000010;
 delay_ms(2000);
 }

 else if(Button (&PORTD, 2, 250, 1))
 {
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Selec. Rotac.");
 lcd_out (2,3, "Dir. 60'");
 rotac_dir = 0b00000011;
 delay_ms(2000);
 }

 else if(Button (&PORTD, 3, 250, 1))
 {
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Selec. Rotac.");
 lcd_out (2,3, "Dir. 90'");
 rotac_dir = 0b00000100;
 delay_ms(2000);
 }

 else
 goto Menu_8;

 }

 else
 {
 goto Menu_6;
 }
 }

 else
 {
 goto Menu_2;
 }
 }

 else if(Button (&PORTD, 1, 250, 1))
 {

 menu_posicao:

 x1 = 48;
 x2 = 48;
 x3 = 48;
 x4 = 48;

 y1 = 0;
 y2 = 0;
 y3 = 0;
 y4 = 0;

 teste1= 0;
 teste2= 0;
 teste3= 0;
 teste4= 0;

 do {
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out (1,2, "Selec. Posicao");
 Lcd_Out (2,8, "0000");

 if ((Button (&PORTD, 0, 150, 1)) && (teste1 == 0))
 {
 x1 = 49;
 teste1 = !teste1;
 y1 = 128;
 }

 else if ((Button (&PORTD, 0, 150, 1)) && (teste1== 1))
 {
 x1 = 48;
 teste1 = !teste1;
 y1 = 0;
 }

 else if ((Button (&PORTD, 1, 150, 1)) && (teste2 == 0))
 {
 x2 = 49;
 teste2 = !teste2;
 y2 = 64;
 }

 else if ((Button (&PORTD, 1, 150, 1)) && (teste2== 1))
 {
 x2 = 48;
 teste2 = !teste2;
 y2 = 0;
 }

 else if ((Button (&PORTD, 2, 150, 1)) && (teste3 == 0))
 {
 x3 = 49;
 teste3 = !teste3;
 y3 = 32;
 }

 else if ((Button (&PORTD, 2, 150, 1)) && (teste3== 1))
 {
 x3 = 48;
 teste3 = !teste3;
 y3 = 0;
 }

 else if ((Button (&PORTD, 3, 150, 1)) && (teste4 == 0))
 {
 x4 = 49;
 teste4 = !teste4;
 y4 = 16;
 }

 else if ((Button (&PORTD, 3, 150, 1)) && (teste4== 1))
 {
 x4 = 48;
 teste4 = !teste4;
 y4 = 0;
 }

 instrucao = ((y1 + y2) + (y3 + y4));

 lcd_chr (2,4, x1);
 lcd_chr (2,5, x2);
 lcd_chr (2,6, x3);
 lcd_chr (2,7, x4);
 delay_ms (150);

 }while (!(Button(&PORTC, 0, 250, 1)));
 }

 else
 {
 goto Menu_1;
 }
 }

 if ((rotinas == 0) || (instrucao == 0) || (andar_frente == 0) || (andar_tras == 0) || (rotac_esq == 0) || (rotac_dir == 0)) {

 goto menu;
 }

 }
#line 674 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 034 - Robozord/Robozord v.3/Robozord v3.c"
void quadrado(){

 int i = 0;

 for (i=0; i<4; i++){
 portd = 0b10100000;
 delay_ms(3000);
 portd = 0b10010000;
 delay_ms(3392);
 }

 }
#line 701 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 034 - Robozord/Robozord v.3/Robozord v3.c"
void triangulo(){

 portd = 0b10100000;
 delay_ms(5000);
 portd = 0b10010000;
 delay_ms(6785);
 portd = 0b10100000;
 delay_ms (5000);

 }
#line 726 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 034 - Robozord/Robozord v.3/Robozord v3.c"
void circulo(){
 int i = 0;

 for (i=0; i<4; i++){
 portd = 0b10010000;
 delay_ms(13570);
 portd = 0b01100000;
 delay_ms(13570);
 }
 }
#line 751 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 034 - Robozord/Robozord v.3/Robozord v3.c"
void senoide(){
 int i = 0;

 for (i=0; i<4; i++){
 portd = 0b10100000;
 delay_ms(3000);
 portd = 0b10010000;
 delay_ms(3392);
 }
 }
#line 776 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 034 - Robozord/Robozord v.3/Robozord v3.c"
void main() {

 char txt1[10];
 unsigned short instrucao_executa;
 char instTela[10];

 reset = 0;
 instrucao_executa = 0;

 TRISB = 0b00000000;
 TRISC = 0b00000011;
 TRISD = 0b00001111;

 PORTB = 0b00000000;
 PORTC = 0b00000000;
 PORTD = 0b00000000;

 ANSELA = 0;
 ANSELB = 0;
 ANSELC = 0;
 ANSELD = 0;

 Lcd_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 delay_ms(20);

 instrucoes:

 Lcd_Cmd(_LCD_CLEAR);
 lcd_out(1,4, "Robozord");
 lcd_out(2,1, "Engenharia UFSM");
 delay_ms (200);

 instrucoes_executar:

 if ((Button (&PORTC, 0, 250, 1)))
 {

 Lcd_Cmd(_LCD_CLEAR);
 delay_ms (50);

 menu_instrucao();
 delay_ms (10);
#line 831 "D:/Documentos/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 034 - Robozord/Robozord v.3/Robozord v3.c"
 if (rotinas == 1){

 do{
 Lcd_Cmd(_LCD_CLEAR);
 lcd_out (1,1, "Quad.");
 lcd_out (1,9, "Triang.");
 lcd_out (2,1, "Circ.");
 lcd_out (2,9, "Senoide");
 delay_ms (230);


 if ((Button (&PORTD, 0, 250, 1))) {
 Lcd_Cmd(_LCD_CLEAR);
 lcd_out (1,4, "Executando");
 lcd_out (2,5, "Quadrado");
 quadrado();
 PORTD = 0B00000000;
 }

 else if ((Button (&PORTD, 1, 250, 1))) {
 Lcd_Cmd(_LCD_CLEAR);
 lcd_out (1,4, "Executando");
 lcd_out (2,4, "Triangulo");
 triangulo();
 PORTD = 0B00000000;
 }


 else if ((Button (&PORTD, 2, 250, 1))) {
 Lcd_Cmd(_LCD_CLEAR);
 lcd_out (1,4, "Executando");
 lcd_out (2,4, "Circulo");
 circulo();
 PORTD = 0B00000000;
 }

 else if ((Button (&PORTD, 3, 250, 1))) {
 Lcd_Cmd(_LCD_CLEAR);
 lcd_out (1,4, "Executando");
 lcd_out (2,4, "Senoide");
 senoide();
 PORTD = 0B00000000;
 }
 rotinas = 0;
 }while (PORTC.B0 == 0);
 }

 else if (instrucao > 0){

 delay_ms(500);
 Lcd_Cmd(_LCD_CLEAR);

 switch (instrucao){

 case 0b00010000:
 portd = 0b10100000;
 break;

 case 0b00100000:
 portd = 0b10100000;
 break;


 case 0b00110000:
 portd = 0b10100000;
 break;

 case 0b01000000:
 portd = 0b10100000;
 break;

 case 0b01010000:
 portd = 0b10100000;
 break;

 case 0b01110000:
 portd = 0b10100000;
 break;

 case 0b10000000:
 portd = 0b10100000;
 break;

 case 0b10010000:
 portd = 0b10100000;
 break;

 case 0b10100000:
 portd = 0b10100000;
 break;

 case 0b10110000:
 portd = 0b10100000;
 break;

 case 0b11000000:
 portd = 0b10100000;
 break;

 case 0b11010000:
 portd = 0b10100000;
 break;

 case 0b11100000:
 portd = 0b10100000;
 break;

 case 0b11110000:
 portd = 0b10100000;
 break;

 }


 do {
 lcd_out (1,4, "Executando");
 lcd_out (2,5, "Instrucao");
 }while (PORTC.B1 == 0);


 }

 else if (andar_frente > 0)
 {
 switch(andar_frente){

 case 0b00000001:
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Selec. Andar");
 lcd_out (2,2, "Frente 15'");
 portd = 0b11000000;
 delay_ms(2500);
 break;

 case 0b00000010:
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Selec. Andar");
 lcd_out (2,2, "Frente 30'");
 portd = 0b11000000;
 delay_ms(5000);
 break;

 case 0b00000011:
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Selec. Andar");
 lcd_out (2,2, "Frente 45'");
 portd = 0b11000000;
 delay_ms(7500);
 break;

 case 0b00000100:
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Selec. Andar");
 lcd_out (2,2, "Frente 60'");
 portd = 0b1100000;
 delay_ms(10000);
 break;

 }

 }


 else if (andar_tras > 0)
 {
 switch(andar_tras){

 case 0b00000001:
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Selec. Andar");
 lcd_out (2,2, "Tras 15'");
 portd = 0b00110000;
 delay_ms(2500);
 break;

 case 0b00000010:
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Selec. Andar");
 lcd_out (2,2, "Tras 30'");
 portd = 0b00110000;
 delay_ms(5000);
 break;

 case 0b00000011:
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Selec. Andar");
 lcd_out (2,2, "Tras 45'");
 portd = 0b00110000;
 delay_ms(7500);
 break;

 case 0b00000100:
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Selec. Andar");
 lcd_out (2,2, "Tras 60'");
 portd = 0b00110000;
 delay_ms(10000);
 break;

 }


 }

 else if (rotac_esq > 0)
 {
 switch(rotac_esq){

 case 0b00000001:
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Selec. Rotac.");
 lcd_out (2,3, "Esqu. 30'");
 portd = 0b01100000;
 delay_ms(1000);
 break;

 case 0b00000010:
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Selec. Rotac.");
 lcd_out (2,3, "Esqu. 45'");
 portd = 0b01100000;
 delay_ms(2000);
 break;

 case 0b00000011:
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Selec. Rotac.");
 lcd_out (2,3, "Esqu. 60'");
 portd = 0b01100000;
 delay_ms(3000);
 break;

 case 0b00000100:
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Selec. Rotac.");
 lcd_out (2,3, "Esqu. 90'");
 portd = 0b01100000;
 delay_ms(4000);
 break;

 }



 }

 else if (rotac_dir > 0)
 {
 switch(rotac_dir){

 case 0b00000001:
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Selec. Rotac.");
 lcd_out (2,3, "Dir. 30'");
 portd = 0b01010000;
 delay_ms(1000);
 break;

 case 0b00000010:
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Selec. Rotac.");
 lcd_out (2,3, "Dir. 45'");
 portd = 0b01010000;
 delay_ms(2000);
 break;

 case 0b00000011:
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Selec. Rotac.");
 lcd_out (2,3, "Dir. 60'");
 portd = 0b01010000;
 delay_ms(3000);
 break;

 case 0b00000100:
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Selec. Rotac.");
 lcd_out (2,3, "Dir. 90'");
 portd = 0b01010000;
 delay_ms(4000);
 break;

 }

 }


 instrucao = 0;
 rotinas = 0;
 PORTD = 0b00000000;

 }

 Lcd_Cmd(_LCD_CLEAR);
 lcd_out(1,4, "Robozord");
 lcd_out(2,1, "Engenharia UFSM");
 delay_ms (200);

 goto instrucoes_executar;

}
