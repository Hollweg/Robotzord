
#Robotzord

##The purpose

The purpose was to develop a **low-cost robot using recycled material.** </br>
The project covers **the software and hardware of a robot car made from scratch using recycled material and a PIC18F45K22 as its brain.** </br>
The Robotzord was developed as a **personal project during my Electrical Engineering graduation** and it was mounted on a breadboard according to /Hardware folder schematics.

##Utility

The code was developed specifically to **PIC platform**. However, if some changes were made, mainly in initialization, configuration and some registers, **the project can be adapted to other microcontroller families, from different manufacturers**.

The programming language used in project was C and the Interface Development Environment (IDE) was MikroC Pro Pic. </br>
**Robotzord was developed when I was in my 3rd semester** of the **Electrical Engineering at UFSM**. So, I would like to make it clear that if I would develop the same project today, certainly a lot of things would be **different, improved and optimized.** ;)
 
##How it works?

The robot mechanical structure was made from **recycled material.** </br>
**Its chassi is an old computer CD/DVD drive + an electric plastic box cutted on half**, **its wheels are from an old plastic toy motorbike** and its **rear supporting wheel is composed by an old fan and old plastic parts from broken toys.** </br>

*Below there are some images of the robot mechanical structure.*

![Imgur](http://i.imgur.com/OyaKfEu.jpg)

![Imgur](http://i.imgur.com/URTTUcw.jpg)

![Imgur](http://i.imgur.com/JuF8qdc.jpg)

The hardware was mounted on a breadboard and coupled on the robot's chassi. </br>
The robot breadboard contains an **H bridge to do the motors control**, a **LCD display as IHM** and a **set of buttons to receive user commands.** </br>
Moreover, the robot has **2 pairs of infrared sensors to acquire its pulses per revoultion.** </br>
The **robot battery is a bunch of 1.2V AA batteries in series, totalizing ~6.0V**. </br>

The software was developed using MikroC, and the robot main idea is to **receive some specific inputs from users and move according received instructions.** I developed some routines making it capable to **move in circles, squares, line, etc..** </br>

In addition, I did put a holed plastic wheel on each axis to couple the infrared sensors and count the number of pulses per revolution. Though, we have an encoder and can measure the distance that the robot moved, making its instructions more accurate.

The robot can move based on time or based on the distance measured in software using its encoder. </br>
This project pictures do not show the encoders in place, but it is working on the Robotzord 2.0 version, that will be available soon in my Github page. 

File types in project:

*- The .c file contains the developed code in C.* </br>
*- The .asm file contains the code translated to assembly* </br>
*- The .hex file is the ready to burn file, containing the code in hexadecimal language.* </br>
*- The .mccpi file is the link between all files in project, created by MikroC compiler (IDE used to software development).* </br>
*- The other files are configuration files, created by compiler.* </br>
*- Inside /Hardware folder it is the project hardware schematic* </br>

*Below there is an imagem of the project hardware designed using Altium Designer.*

**insert image**

##Which was used in project?

**Bill of materials**:

01. 1 x PIC18F45K22F microcontroller <br>
02. 2 x Robotic DC Motor (servo-motor control circuit less) </br>
03. 1 x 7805 Voltage Regulator </br>
04. 5 x Push button </br>
05. 5 x Resistores 1k ohm </br>
06. 1 x 20MHz Crystal  </br>
07. 2 x 22pF Capacitors </br>
08. 1 x 100nF Capacitors </br>
09. 4 Mosfet IRF540N </br>
10. 4 Mosfet IRF9540N </br>
11. 1 x LCD Display </br>
12. 1 x 10k Potentiometer </br>
13. 2 x infrared emmiter </br>
14. 2 x infrared receptor </br>
15. 4 x 270R resistor </br>
16. 1 x ~6.0V battery </br>
17. 1 x Breadboard </br>

This project generated a paper publication on an International Sustainability Forum hosted in Santa Maria (RS), Brazil:

http://ecoinovar.com.br/cd2014/arquivos/artigos/ECO091.pdf

*Below, there is an image of the final result.*

![Imgur](http://i.imgur.com/WSppJxU.jpg)

**P.S.1:** In the picture its missing the microcontroller, but you can see its spot on the picture, between the LCD and the buttons board, on the breadboard center :P

**P.S.2:** There is a new version of the robot, and it contains more sensors and the hardware and software are really optimized, but I did not have time yet to post the project on Github. However, I'll post it and make a report soon as I can. :)

##Copyrigths

**The project can be reproduced without any problems.** </br>
However, I only ask you to **keep author credits.** :)


Enjoy!

Hollweg
