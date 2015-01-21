#line 1 "D:/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 034 - Robozord/Robozord v.4/Instrucoes.c"
#line 1 "d:/engenharia eletrica/projetos sistemas emabarcados/microchip/projetos pic/projeto 034 - robozord/robozord v.4/main.h"
#line 1 "d:/engenharia eletrica/projetos sistemas emabarcados/microchip/projetos pic/projeto 034 - robozord/robozord v.4/encoder.h"




extern int esl;
extern int drl;
extern int inst;
extern bit esdir;
extern bit drdir;
extern bit reset;

void contador(int esl,int drl);
void codec(int inst);
#line 1 "d:/engenharia eletrica/projetos sistemas emabarcados/microchip/projetos pic/projeto 034 - robozord/robozord v.4/sensor_objetos.h"





int detector_objetos();
int tomada_atitudes();
#line 1 "d:/engenharia eletrica/projetos sistemas emabarcados/microchip/projetos pic/projeto 034 - robozord/robozord v.4/menu.h"




extern short int instrucao;
extern short int rotinas;
extern short int andar_frente;
extern short int andar_tras;
extern short int rotac_dir;
extern short int rotac_esq;

unsigned short menu_instrucao();
#line 1 "d:/engenharia eletrica/projetos sistemas emabarcados/microchip/projetos pic/projeto 034 - robozord/robozord v.4/instrucoes.h"
#line 20 "D:/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 034 - Robozord/Robozord v.4/Instrucoes.c"
void quadrado(){

 static short int i = 0, j = 0, k = 0;

 for (i=0; i<4; i++)
 {
 for (j=0; j<600; j++)
 {
 portd = 0b10100000;
 delay_ms(50);
 }

 for (k=0; k<680; k++)
 {
 portd = 0b10010000;
 delay_ms(50);
 }

 }
}
#line 54 "D:/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 034 - Robozord/Robozord v.4/Instrucoes.c"
void triangulo(){

 static short int i,j;

 for (i = 0; i<500; i++)
 {
 portd = 0b10100000;
 delay_ms(10);
 }
 for (i = 0; i<678; i++)
 {
 portd = 0b10010000;
 delay_ms(10);
 }

 for (i = 0; i<500; i++)
 {
 portd = 0b10100000;
 delay_ms(10);
 }

 }
#line 91 "D:/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 034 - Robozord/Robozord v.4/Instrucoes.c"
void circulo(){
 int i, j, k;

 for (i=0; i<4; i++){

 for (j = 0; j<202; j++)
 {
 portd = 0b10010000;
 delay_ms(67);
 }

 for (k = 0; k<202; k++)
 {
 portd = 0b01100000;
 delay_ms(67);
 }
 }
 }
#line 124 "D:/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 034 - Robozord/Robozord v.4/Instrucoes.c"
void senoide(){
 int i, j, k;

 for (i=0; i<4; i++){

 portd = 0b10100000;

 for(j = 0; j<300; j++)
 {
 delay_ms(10);
 }

 portd = 0b10010000;

 for(j = 0; j<300; j++)
 {
 delay_ms(10);
 }

 }
 }
#line 161 "D:/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 034 - Robozord/Robozord v.4/Instrucoes.c"
 void executa_instrucoes(){

 if ((Button (&PORTC, 0, 250, 1)))
 {

 Lcd_Cmd(_LCD_CLEAR);

 menu_instrucao();
#line 180 "D:/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 034 - Robozord/Robozord v.4/Instrucoes.c"
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
 delay_ms(10);
 PORTD = 0b00000000;
 }

 else if ((Button (&PORTD, 1, 250, 1))) {
 Lcd_Cmd(_LCD_CLEAR);
 lcd_out (1,4, "Executando");
 lcd_out (2,4, "Triangulo");
 triangulo();
 delay_ms(10);
 PORTD = 0b00000000;
 }


 else if ((Button (&PORTD, 2, 250, 1))) {
 Lcd_Cmd(_LCD_CLEAR);
 lcd_out (1,4, "Executando");
 lcd_out (2,4, "Circulo");
 circulo();
 delay_ms(10);
 PORTD = 0b00000000;
 }

 else if ((Button (&PORTD, 3, 250, 1))) {
 Lcd_Cmd(_LCD_CLEAR);
 lcd_out (1,4, "Executando");
 lcd_out (2,4, "Senoide");
 senoide();
 delay_ms(10);
 PORTD = 0b00000000;
 }

 }while (PORTC.B0 == 0);

 rotinas = 0;

 }

 else if (instrucao > 0){

 delay_ms(500);
 Lcd_Cmd(_LCD_CLEAR);

 switch (instrucao){

 case 0b00010000:
 portd = 0b00010000;
 break;

 case 0b00100000:
 portd = 0b00010000;
 break;


 case 0b00110000:
 portd = 0b00110000;
 break;

 case 0b01000000:
 portd = 0b01000000;
 break;

 case 0b01010000:
 portd = 0b01010000;
 break;

 case 0b01110000:
 portd = 0b01110000;
 break;

 case 0b10000000:
 portd = 0b10000000;
 break;

 case 0b10010000:
 portd = 0b10010000;
 break;

 case 0b10100000:
 portd = 0b10100000;
 break;

 case 0b10110000:
 portd = 0b10110000;
 break;

 case 0b11000000:
 portd = 0b11000000;
 break;

 case 0b11010000:
 portd = 0b11010000;
 break;

 case 0b11100000:
 portd = 0b11100000;
 break;

 case 0b11110000:
 portd = 0b11110000;
 break;

 }


 do {
 lcd_out (1,4, "Executando");
 lcd_out (2,5, "Instrucao");
 }while (PORTC.B0 == 0);


 }

 else if (andar_frente > 0)
 {
 switch(andar_frente){

 case 0b00000001:
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Executando Andar");
 lcd_out (2,2, "Frente 15'");
 portd = 0b01010000;
 delay_ms(2500);
 break;

 case 0b00000010:
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Executando Andar");
 lcd_out (2,2, "Frente 30'");
 portd = 0b01010000;
 delay_ms(5000);
 break;

 case 0b00000011:
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Executando Andar");
 lcd_out (2,2, "Frente 45'");
 portd = 0b01010000;
 delay_ms(7500);
 break;

 case 0b00000100:
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Executando Andar");
 lcd_out (2,2, "Frente 60'");
 portd = 0b01010000;
 delay_ms(10000);
 break;

 }

 }


 else if (andar_tras > 0)
 {
 switch(andar_tras){

 case 0b00000001:
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Executando Andar");
 lcd_out (2,2, "Tras 15'");
 portd = 0b10100000;
 delay_ms(2500);
 break;

 case 0b00000010:
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Executando Andar");
 lcd_out (2,2, "Tras 30'");
 portd = 0b10100000;
 delay_ms(5000);
 break;

 case 0b00000011:
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Executando Andar");
 lcd_out (2,2, "Tras 45'");
 portd = 0b10100000;
 delay_ms(7500);
 break;

 case 0b00000100:
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Executando Andar");
 lcd_out (2,2, "Tras 60'");
 portd = 0b10100000;
 delay_ms(10000);
 break;

 }


 }

 else if (rotac_esq > 0)
 {
 switch(rotac_esq){

 case 0b00000001:
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Exec. Rotac.");
 lcd_out (2,3, "Esqu. 30'");
 portd = 0b10010000;
 delay_ms(1000);
 break;

 case 0b00000010:
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Exec. Rotac.");
 lcd_out (2,3, "Esqu. 45'");
 portd = 0b10010000;
 delay_ms(2000);
 break;

 case 0b00000011:
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Exec. Rotac.");
 lcd_out (2,3, "Esqu. 60'");
 portd = 0b10010000;
 delay_ms(3000);
 break;

 case 0b00000100:
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Exec. Rotac.");
 lcd_out (2,3, "Esqu. 90'");
 portd = 0b10010000;
 delay_ms(4000);
 break;

 }



 }

 else if (rotac_dir > 0)
 {
 switch(rotac_dir){

 case 0b00000001:
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Exec. Rotac.");
 lcd_out (2,3, "Dir. 30'");
 portd = 0b01100000;
 delay_ms(1000);
 break;

 case 0b00000010:
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Exec. Rotac.");
 lcd_out (2,3, "Dir. 45'");
 portd = 0b01100000;
 delay_ms(2000);
 break;

 case 0b00000011:
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Exec. Rotac.");
 lcd_out (2,3, "Dir. 60'");
 portd = 0b01100000;
 delay_ms(3000);
 break;

 case 0b00000100:
 lcd_cmd(_LCD_CLEAR);
 lcd_out (1,2, "Exec. Rotac.");
 lcd_out (2,3, "Dir. 90'");
 portd = 0b01100000;
 delay_ms(4000);
 break;

 }

 }


 instrucao = 0;
 rotinas = 0;
 andar_frente = 0;
 andar_tras = 0;
 rotac_dir = 0;
 rotac_esq = 0;
 PORTD = 0b00000000;

 }

}
