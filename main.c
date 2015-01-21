

#include "main.h"

//---------------------------------------------------------------------------------------------------------------------------------------------------
//----------------------------------------------- Definicoes LCD ------------------------------------------------------------------------------------

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

//---------------------------------------------------------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------------------------------------------------------

/******************************************************************************************************************************
 * Name:
 *    Main
 * In:
 *    -
 * Out:
 *    -
 * Description:
 *    Executa testes de como usuario pretende manipular o Robozord
 *
 *****************************************************************************/

void main() {

  char txt1[10];
  unsigned short instrucao_executa;
  char instTela[10];
  short int i;

  reset = 0;
  instrucao_executa = 0;

  TRISB = 0b00000000;
  TRISC = 0b00000011;              //ENTRADA BOTÃO OK - OK - C0,C1 ----------  ENTRADA ENCODER : C4 ES ,C5 DR
  TRISD = 0b00001111;              //SAIDA PONTE H: D4,D5,D6,D7   ----------  D0,D1,D2,D3 - Botoes de Entrada - MENU

  PORTB = 0b00000000;
  PORTC = 0b00000000;
  PORTD = 0b00000000;

  ANSELA = 0;
  ANSELB = 0;
  ANSELC = 0;
  ANSELD = 0;

  Lcd_Init();                       //Inicia Display
  Lcd_Cmd(_LCD_CLEAR);              //Limpa Display
  Lcd_Cmd(_LCD_CURSOR_OFF);         //Desliga cursor display
  delay_ms(20);

  instrucoes:

  Lcd_Cmd(_LCD_CLEAR);              //Limpa Display
  lcd_out(1,4, "Robozord");
  lcd_out(2,1, "Engenharia UFSM");
      
      for (i = 0; i<5; i++){
          delay_ms (500);
                           }
  executa_instrucoes();

  goto instrucoes;

}

//------------------------------------------------------------- Final Funcao Principal -------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------------------------------------------