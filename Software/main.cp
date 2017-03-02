#line 1 "D:/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 034 - Robozord/Robozord v.4/main.c"
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




void quadrado();
void triangulo();
void circulo();
void senoide();
void executa_instrucoes();
#line 8 "D:/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 034 - Robozord/Robozord v.4/main.c"
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
#line 37 "D:/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 034 - Robozord/Robozord v.4/main.c"
void main() {

 char txt1[10];
 unsigned short instrucao_executa;
 char instTela[10];
 short int i;

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

 for (i = 0; i<5; i++){
 delay_ms (500);
 }
 executa_instrucoes();

 goto instrucoes;

}
