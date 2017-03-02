
#ifndef ENCODER_H_
#define ENCODER_H_

#include "main.h"

int esl = 0;
int drl = 0;
int inst = 0;
bit esdir;
bit drdir;
bit reset;

/******************************************************************************************************************************
 * Name:
 *    Contador_encoder
 * In:
 *    esl, dirl
 * Out:
 *    -
 * Description:
 *    Funcao para incrementar o encoder, contar posições
 *
 *****************************************************************************/

void contador(int esl,int drl){

 int es = 0,dr = 0 ;
 bit one1,one2,brkes,brkdr;
 //char txt [10];
 one1 = 0;
 one2 = 0;
 brkes = 1;
 brkdr = 1;

 if(reset == 1){

           one1 = 1;
           one2 = 1;

               }

 while ( (es < esl || dr < drl)  ||  ((brkes || brkdr) == 1)){

         if(es < esl){
               if(one1 == 0){
                       if (portc.f4 == 1) {
                                    es = es +1;
                                    one1 = 1;
                                          }
                            }

                if(one1 = 1)
                       one1 = portc.f4;


          //intTostr(es,txt);
          //lcd_out(1,1,txt);

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

         //intTostr(dr,txt);
         //lcd_out(2,1,txt);

                    }

         else{
              portd.f5 = 0;
              portd.f4 = 0;
              brkdr = 0;
             }
        }
  reset = 1;

}//~~


 /******************************************************************************************************************************
 * Name:
 *    Codec
 * In:
 *    inst
 * Out:
 *    -
 * Description:
 *    Funcao para codificação do encoder
 *
 *****************************************************************************/

void codec(int inst){

if ((inst & 0b10000000)>0){
                                                           //testa o primeiro bit ,casso seja 1 andará em linha reta.
          if((inst & 0b01000000)>0){                       //testa o segundo bit,caso seja 1 deslocamento
                                                           //para a frente.
                  portd = 0b10100000;
                  switch(inst) {                           //indentifica o modulo do deslocamento para frente.
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
          else{                                //caso o segundo bit seja 0,deslocamento para tras.
                      portd = 0b01010000;
                      switch(inst){             //indentifica o modulo do deslocamento para tras.

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

  else { //casso seja 0 ira fazer uma rotação.
          if((inst & 0b01000000)>0)    {                                 //indentifica o segundo bit,caso seja 1 rotação
                     portd = 0b01100000;                                 //para a esquerda.
                     switch(inst)   {                                    //seleciona o angulo de rotação para a esquerda.

                                    case(0b01110000):                  {
                                                esl = 22;
                                                drl = 22;
                                                break;                 }

                                    case(0b01100000):                   {
                                                      esl = 16;
                                                      drl = 16;
                                                      break;            }


                                    case(0b01010000):                   {
                                                      esl = 11;
                                                      drl = 11;
                                                      break;            }

                                    case(0b01000000):                   {
                                                      esl = 5;
                                                      drl = 5;
                                                      break;            }

                                    }
                         }

          else  {                                       //caso seja 0 rotaciona para a direita.

                portd = 0b10010000;
                switch(inst)    {                       //selecona o angulo de rotação para a direita.

                                        case(0b00110000):                  {
                                                          esl = 22;
                                                          drl = 22;
                                                          break;           }

                                        case(0b00100000):                   {
                                                          esl = 16;
                                                          drl = 16;
                                                          break;            }

                                        case(0b00010000):                   {
                                                          esl = 11;
                                                          drl = 11;
                                                          break;            }

                                        case(0b00000000):                   {
                                                            esl = 5;
                                                            drl = 5;
                                                            break;          }
                                 }
                 }
        }
 }//~~
 
#endif //*ENCODER_*/~~