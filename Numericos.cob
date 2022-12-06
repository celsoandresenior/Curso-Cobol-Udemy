      ******************************************************************
      * Author: Celso Andre
      * Date: 06/12/2022
      * Purpose: aprofudando em variaveis numericas.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Numericos.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-TM-1 PIC 99.
       77 WS-TM-2 PIC 99.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Hello world".
           PERFORM 0100-INIT.
           PERFORM 0200-PROCESS.
           PERFORM 0300-DISPLAY.
           PERFORM 9999-FINAL.   
               
       0100-INIT.
           DISPLAY "INICIO DO PROGRAMA...".


           
       0200-PROCESS.
           DISPLAY "PROCESSAMENTO DO PROGRAMA...".
           MOVE ZEROES        TO WS-TM-1.
           INSPECT FUNCTION REVERSE(WS-PRIMEIRO-NOME)
               TALLYING WS-TM-1 FOR LEADING ' '.
               
           
       0300-DISPLAY.
 

       9999-FINAL.
           DISPLAY "FINAL DO PROGRAMA...".
           STOP RUN.
           
       END PROGRAM Numericos.

