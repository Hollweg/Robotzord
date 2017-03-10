
#Robotzord

##A Proposta

A proposta do projeto é desenvolver **um robô de baixo custo utilizando material reciclado.** </br>
O projeto cobre o desenvolvimento de **software e hardware de um robô com rodas feito com material reciclado utilizando um PIC18F45K22 como cérebro da máquina.** </br>
O Robotzord foi feito como **projeto pessoal durante minha graduação em Engenharia Elétrica (UFSM)** e foi montado de acordo com o esquemático do Altium Designer disponibilizado na pasta /Hardware.

##Utilidade

O código foi desenvolvido especificamente para **plataforma PIC**. No entanto, se algumas alterações forem feitas, principalmente na inicialização e configuração de alguns registradores, **o projeto pode ser adaptado para outras famílias de microcontroladores, de diferentes fabricantes**.

A linguagem de programação utilizada no projeto foi C e a Interface Development Environment (IDE) foi MikroC Pro PIC. </br>
**Robotzord foi desenvolvido quando eu estava no meu 3 º semestre** de graduação em **Engenharia Elétrica na UFSM**. Então, eu gostaria de deixar claro que se eu desenvolvesse o mesmo projeto hoje, certamente um monte de coisas seriam **diferentes, melhoradas e otimizadas.** ;)
 
##Como funciona?

A estrutura mecânica do robô foi desenvolvida com **material reciclado.** </br>
**Seu chassi é um antigo drive obsoleto de CD/DVD + uma caixa plástica de eletroduto cortada pela metade**, **suas rodas são de uma moto de brinquedo de plástico** e sua **roda de apoio traseira é composta por um cooler de computador antigo de plástico velho e algumas peças de brinquedos quebrados.** </br>

*Abaixo tem algumas imagens da estrutura mecânica do robô.*

![Imgur](http://i.imgur.com/OyaKfEu.jpg)

![Imgur](http://i.imgur.com/URTTUcw.jpg)

![Imgur](http://i.imgur.com/JuF8qdc.jpg)

O hardware foi montado em uma breadboard e acoplado no chassi do robô . </br>
A protoboard do robô contém uma **ponte H para fazer o controle dos motores**, um display LCD **como IHM** e um conjunto de botões **para receber comandos do usuário.** </br>
Além disso, o robô possui **2 pares de sensores infravermelhos para adquirir seus pulsos por revolução.** </br>
A **bateria do robô é um monte de pilhas AA de 1.2V em série, totalizando ~6.0V**. </br>

O software foi desenvolvido usando a IDE MikroC, e a ideia principal do robô é **receber algumas entradas específicas dos usuários e se mover de acordo com as ordens recebidas.** Eu desenvolvi algumas rotinas tornando-o capaz de **mover-se em círculo, quadrado, linha, etc.** </br>

Além disso, eu coloquei uma roda de plástico furada em cada eixo para acoplar os sensores infravermelhos e contar o número de pulsos por revolução. Dessa forma, temos um encoder capaz de medir a distância que o robô se moveu, tornando suas instruções mais precisas.

O robô pode mover-se com base no tempo ou com base na distância medida pelo seu encoder. </br>
As imagens deste projeto não mostram os sensores óticos no lugar, mas ele está operando dessa forma em sua versão 2.0, que estará disponível em breve na minha página do Github, como um novo projeto. :)

Tipos de arquivo no projeto:

*- O arquivo .c contém o código desenvolvido utilizando a linguagem C.* </br>
*- O arquivo .asm contém o código traduzido para linaguagem de montagem. (assembly)* </br>
*- O arquivo .hex é o arquivo com formato para ser gravado no microcontrolador, que é traduzido para linguagem de máquina e interpretado.* </br>
*- O arquivo .mccpi é o arquivo que linka todos os arquivos de projeto, criado pelo compilador MikroC, utilizado para desenvolvimento.* </br>
*- Os demais arquivos, são arquivos de configuração criados pelo compilador.* </br>
*- Dentro da pasta /Proteus está o esquemático com o hardware do circuito.*

*Abaixo, tem-se uma imagem do hardware montado no software Altium Designer.*

**insert image**

##O que foi utilizado no projeto?

**Lista de Materiais**:

01. 1 x Microcontrolador PIC18F45K22F  <br>
02. 2 x Motor DC de robótica (servo-motor com o circuito de controle retirado) </br>
03. 1 x Regulador de tensão 7805 </br>
04. 5 x Push button </br>
05. 5 x Resistores 1k ohm </br>
06. 1 x 20MHz Crystal  </br>
07. 2 x 22pF Capacitores </br>
08. 1 x 100nF Capacitores </br>
09. 4 Mosfet IRF540N </br>
10. 4 Mosfet IRF9540N </br>
11. 1 x LCD Display </br>
12. 1 x 10k Potenciômetro </br>
13. 2 x emissor infraveremelho </br>
14. 2 x receptor infraveremelho </br>
15. 4 x 270R resistor </br>
16. 1 x ~6.0V bateria </br>
17. 1 x Protoboard </br>

Este projeto gerou a publicação de um artido em um Fórum Internacional de Sustentabilidade, realizado em Santa Maria (RS), Brasil:

http://ecoinovar.com.br/cd2014/arquivos/artigos/ECO091.pdf

*Abaixo, tem-se uma imagem do resultado final do projeto:*

![Imgur](http://i.imgur.com/WSppJxU.jpg)

**P.S.1:** Na imagem está faltando o microcontrolador, mas você pode ver o seu lugar na imagem, entre o LCD e a placa de botões, no centro da breadboard. :P

**P.S.2:** Existe uma nova versão do robô, que contém mais sensores e o hardware e software estão otimizados, mas eu ainda não tive tempo de postar o projeto no Github. No entanto, vou publicá-la e fazer um relatório logo que puder. :)

##Direitos

**O projeto pode ser reproduzido sem problema algum.** </br>
Entretanto, caso isso seja feito, apenas peço para manterem/referenciarem **créditos ao autor**.

Enjoy!

Hollweg
