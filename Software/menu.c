
#ifndef MENU_H_
#define MENU_H_

#include "main.h"

short int instrucao = 0;
short int rotinas = 0;
short int andar_frente = 0;
short int andar_tras = 0;
short int rotac_dir = 0;
short int rotac_esq = 0;

/******************************************************************************************************************************
 * Name:
 *    menu_instrucao
 * In:
 *
 * Out:
 *    -
 * Description:
 *    Funcao para mostar menu no display, criar menu root, e todas as funçoes de menu
 *
 *****************************************************************************/

unsigned short menu_instrucao(){

     int x1, x2, x3, x4;
     unsigned short y1, y2, y3, y4;
     bit teste1, teste2, teste3, teste4;

     menu:

     Lcd_Cmd(_LCD_CLEAR);
     lcd_out (1,1, "Rotinas");
     lcd_out (2,1, "Insira Instrucao");
     delay_ms (200);

     if (Button (&PORTD, 0, 250, 1))
                                    {       //Se pressionado botão 0, entra em modo rotinas,
               rotinas = 1;                 //e sai da funcao menu, aguardando entrada do
               delay_ms(100);               //usuario em Main (rotina desejada)
               return;

                                    }

     else if (Button (&PORTD, 1, 200, 1))   //Se pressionado botão 1, entra em Menu, solicitando
     {                                      //ao usuário o tipo de inserção de instrucao desejado
        Menu_1:                             //Seja ela A-Z (Alfabeto Grego) ou Binário

             Lcd_Cmd(_LCD_CLEAR);
             lcd_out (1,1, "Insira");
             lcd_out (1,8, "instrucao");
             lcd_out (2,3, "A-Z");
             lcd_out (2,8, "Binario");
             delay_ms(250);

             if(Button (&PORTD, 0, 250, 1))             //Se pressionado o botão 0 do PORTD seleciona funcao do Menu para andar/rotacionar
             {                                          //Joga na tela 'seleciona Andar/Rotacionar'
               Menu_2:

                  delay_ms(700);
                  lcd_cmd(_LCD_CLEAR);
                  lcd_out (1,3, "Selecione");
                  lcd_out (2,1, "Andar Rotacionar");


                  if(Button (&PORTD, 0, 250, 1))                  //Se pressionado o botão 0 do PORTD seleciona funcao do Menu para Andar Frente/Tras
                  {                                               //Joga na tela 'seleciona Andar - Frente/Tras'
                     Menu_3:

                         delay_ms(700);
                         lcd_cmd(_LCD_CLEAR);
                         lcd_out (1,2, "Selec. Andar");
                         lcd_out (2,2, "Frente Tras");


                         if(Button (&PORTD, 0, 250, 1))              //Se pressionado o botão 0 do PORTD seleciona funcao do Menu para Andar Frente 15 - 30 - 45 - 60
                         {                                           //Joga na tela 'seleciona Andar - Frente 15 - 30 - 45 - 60'
                             Menu_4:                                 //Usuario Seleciona através do botao 0,1,2,3
                                   delay_ms(700);                    //Após selecionado, joga na tela a funcao selecionada e atribui a variável o respectivo valor
                                   lcd_cmd(_LCD_CLEAR);
                                   lcd_out (1,2, "Andar Frente");
                                   lcd_out (2,2, "15 30 45 60");

                                   if(Button (&PORTD, 0, 250, 1))
                                   {
                                                lcd_cmd(_LCD_CLEAR);
                                                lcd_out (1,2, "Selec. Andar");
                                                lcd_out (2,2, "Frente 15'");
                                                andar_frente = 0b00000001;
                                                delay_ms(2000);

                                   }

                                   else if(Button (&PORTD, 1, 250, 1))
                                   {
                                                lcd_cmd(_LCD_CLEAR);
                                                lcd_out (1,2, "Selec. Andar");
                                                lcd_out (2,2, "Frente 30'");
                                                andar_frente = 0b00000010;
                                                delay_ms(2000);

                                   }

                                   else if(Button (&PORTD, 2, 250, 1))
                                   {
                                                lcd_cmd(_LCD_CLEAR);
                                                lcd_out (1,2, "Selec. Andar");
                                                lcd_out (2,2, "Frente 45'");
                                                andar_frente = 0b00000011;
                                                delay_ms(2000);
                                   }

                                   else if(Button (&PORTD, 3, 250, 1))
                                   {
                                                lcd_cmd(_LCD_CLEAR);
                                                lcd_out (1,2, "Selec. Andar");
                                                lcd_out (2,2, "Frente 60'");
                                                andar_frente = 0b00000100;
                                                delay_ms(2000);
                                   }

                                    else
                                     {
                                                goto Menu_4;
                                      }

                         }

                         else if(Button (&PORTD, 1, 250, 1))              //Se pressionado o botão 0 do PORTD seleciona funcao do Menu para Andar Tras 15 - 30 - 45 - 60
                         {                                                //Joga na tela 'seleciona Andar - Frente 15 - 30 - 45 - 60'
                              Menu_5:                                     //Usuario Seleciona através do botao 0,1,2,3
                                    delay_ms(700);                        //Após selecionado, joga na tela a funcao selecionada e atribui a variável o respectivo valor
                                    lcd_cmd(_LCD_CLEAR);
                                    lcd_out (1,2, "Andar Tras");
                                    lcd_out (2,1, "30' 45' 60' 90'");

                                    if(Button (&PORTD, 0, 250, 1))
                                   {
                                                lcd_cmd(_LCD_CLEAR);
                                                lcd_out (1,2, "Selec. Andar");
                                                lcd_out (2,2, "Tras 15'");
                                                andar_tras = 0b00000001;
                                                delay_ms(2000);

                                   }

                                   else if(Button (&PORTD, 1, 250, 1))
                                   {
                                                lcd_cmd(_LCD_CLEAR);
                                                lcd_out (1,2, "Selec. Andar");
                                                lcd_out (2,2, "Tras 30'");
                                                andar_tras = 0b00000010;
                                                delay_ms(2000);

                                   }

                                   else if(Button (&PORTD, 2, 250, 1))
                                   {
                                                lcd_cmd(_LCD_CLEAR);
                                                lcd_out (1,2, "Selec. Andar");
                                                lcd_out (2,2, "Tras 45'");
                                                andar_tras = 0b00000011;
                                                delay_ms(2000);
                                   }

                                   else if(Button (&PORTD, 3, 250, 1))
                                   {
                                                lcd_cmd(_LCD_CLEAR);
                                                lcd_out (1,2, "Selec. Andar");
                                                lcd_out (2,2, "Tras 60'");
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

                  else if(Button (&PORTD, 1, 250, 1))            //Segue a mesma lógica da escolha anterior, mas agora com esquerda/direita
                  {                                              //Seleciona a opção Rotação e após permite o usuário escolher o angulo de rotação
                       Menu_6:                                   //conforme selecionado
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

             else if(Button (&PORTD, 1, 250, 1))         //Funcao selecionada caso o usuario resolva
             {                                           //fazer a validacao da instrucao de forma binaria
                                                         //setado 48 no display por que 48 = 0 (ASCII)
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

                         if ((Button (&PORTD, 0, 150, 1))  && (teste1 == 0))
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

                         else if ((Button (&PORTD, 1, 150, 1))  && (teste2== 1))
                         {
                                      x2 = 48;
                                      teste2 = !teste2;
                                      y2 = 0;
                         }

                         else if ((Button (&PORTD, 2, 150, 1))  && (teste3 == 0))
                         {
                                      x3 = 49;
                                      teste3 = !teste3;
                                      y3 = 32;
                         }

                         else if ((Button (&PORTD, 2, 150, 1))  && (teste3== 1))
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

                         else if ((Button (&PORTD, 3, 150, 1))  && (teste4== 1))
                         {
                                      x4 = 48;
                                      teste4  = !teste4;
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

 if ((rotinas == 0) && (instrucao == 0) && (andar_frente == 0) && (andar_tras == 0) && (rotac_esq == 0) && (rotac_dir == 0)) {

                       goto menu;
                                        }

 }//~~
 
 #endif //*MENU_*/~~