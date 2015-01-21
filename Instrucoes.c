
#ifndef INSTRUCOES_H_
#define INSTRUCOES_H_

#include "main.h"


/******************************************************************************************************************************
 * Name:
 *    quadrado
 * In:
 *    -
 * Out:
 *    -
 * Description:
 *    Funcao pré definida para executar um Quadrado
 *
 *****************************************************************************/

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

    }//~~
}


/******************************************************************************************************************************
 * Name:
 *    triangulo
 * In:
 *    -
 * Out:
 *    -
 * Description:
 *    Funcao pré definida para executar um Triangulo
 *
 *****************************************************************************/

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

 }//~~



/******************************************************************************************************************************
 * Name:
 *    circulo
 * In:
 *    -
 * Out:
 *    -
 * Description:
 *    Funcao pré definida para executar um Círculo
 *
 *****************************************************************************/

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
                 }//~~



/******************************************************************************************************************************
 * Name:
 *    senoide
 * In:
 *    -
 * Out:
 *    -
 * Description:
 *    Funcao pré definida para executar uma Senoide
 *
 *****************************************************************************/

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
                 }//~~
                 
                 
/******************************************************************************************************************************
 * Name:
 *    executa_instrucoes
 * In:
 *    -
 * Out:
 *    -
 * Description:
 *    Funcao pré definida para executar uma series de instrucoes pré definidas,
 *    como testes de direção, e contém as mais diversas chamadas de funcoes de teste
 *    e sensores.
 *
 *****************************************************************************/

 void executa_instrucoes(){
                 
    if ((Button (&PORTC, 0, 250, 1)))
    {

      Lcd_Cmd(_LCD_CLEAR);                                       //Limpa Display
      
      menu_instrucao();                                          // Chama função de inicialização MENU
      
       //inttostr (instrucao_executa , instTela);                //Converte variável e joga na tela
       //lcd_out (1,8, instTela);
       //delay_ms(2000);

       //codec(inst);
       //contador(esl,drl);
       //inst = 0b00100000;
       //codec(inst);
       //contador(esl,drl);

       if (rotinas == 1){

               do{
                           Lcd_Cmd(_LCD_CLEAR);
                           lcd_out (1,1, "Quad.");
                           lcd_out (1,9, "Triang.");
                           lcd_out (2,1, "Circ.");
                           lcd_out (2,9, "Senoide");
                           delay_ms (230);


                           if ((Button (&PORTD, 0, 250, 1))) {
                                          Lcd_Cmd(_LCD_CLEAR);                                       //Limpa Display
                                          lcd_out (1,4, "Executando");
                                          lcd_out (2,5, "Quadrado");
                                          quadrado();
                                          delay_ms(10);
                                          PORTD = 0b00000000;
                                                             }

                           else if ((Button (&PORTD, 1, 250, 1)))  {
                                          Lcd_Cmd(_LCD_CLEAR);                                       //Limpa Display
                                          lcd_out (1,4, "Executando");
                                          lcd_out (2,4, "Triangulo");
                                          triangulo();
                                          delay_ms(10);
                                          PORTD = 0b00000000;
                                                                    }


                           else if ((Button (&PORTD, 2, 250, 1)))  {
                                          Lcd_Cmd(_LCD_CLEAR);                                       //Limpa Display
                                          lcd_out (1,4, "Executando");
                                          lcd_out (2,4, "Circulo");
                                          circulo();
                                          delay_ms(10);
                                          PORTD = 0b00000000;
                                                                    }

                           else if ((Button (&PORTD, 3, 250, 1)))  {
                                          Lcd_Cmd(_LCD_CLEAR);                                       //Limpa Display
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
                   Lcd_Cmd(_LCD_CLEAR);                                       //Limpa Display

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
                 

#endif //*INSTRUCOES_*/~~