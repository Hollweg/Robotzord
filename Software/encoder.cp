#line 1 "D:/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 034 - Robozord/Robozord v.4/encoder.c"
#line 1 "d:/engenharia eletrica/projetos sistemas emabarcados/microchip/projetos pic/projeto 034 - robozord/robozord v.4/main.h"
#line 1 "d:/engenharia eletrica/projetos sistemas emabarcados/microchip/projetos pic/projeto 034 - robozord/robozord v.4/encoder.h"
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
#line 7 "D:/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 034 - Robozord/Robozord v.4/encoder.c"
int esl = 0;
int drl = 0;
int inst = 0;
bit esdir;
bit drdir;
bit reset;
#line 26 "D:/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 034 - Robozord/Robozord v.4/encoder.c"
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
#line 108 "D:/Engenharia Eletrica/Projetos Sistemas Emabarcados/MICROCHIP/Projetos PIC/Projeto 034 - Robozord/Robozord v.4/encoder.c"
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
