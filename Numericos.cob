      ******************************************************************
      * Author: Celso Andre
      * Date: 06/12/2022
      * Purpose: aprofudando em variaveis numericas.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Numericos.
       ENVIRONMENT                                             DIVISION.

       CONFIGURATION                                            SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-VARIAVEIS.
          03 WS-INT        PIC 9(09)     VALUE ZEROS.
          03 WS-DEC        PIC 9(09)V99  VALUE ZEROS. 
          03 WS-VLR        PIC S9(09)V99 VALUE ZEROS. 

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Hello world".
           PERFORM 0100-INIT.
           PERFORM 0200-PROCESS.
           PERFORM 0300-DISPLAY.
           PERFORM 9999-FINAL.   
               
       0100-INIT.
           DISPLAY "INICIO DO PROGRAMA...".
           initialize WS-VARIAVEIS.


           
       0200-PROCESS.
           DISPLAY "PROCESSAMENTO DO PROGRAMA...".

           MOVE 1 TO WS-INT WS-DEC WS-VLR.
           
           COMPUTE WS-INT = WS-INT / 2.
           COMPUTE WS-DEC = WS-DEC / 2.
           COMPUTE WS-VLR = (WS-VLR / 2) * -1 .

       0300-DISPLAY.
           display "WS-INT: " WS-INT
           display "WS-DEC: " WS-DEC
           display "WS-VLR: " WS-VLR.

       9999-FINAL.
           DISPLAY "FINAL DO PROGRAMA...".
           STOP RUN.
           
       END PROGRAM Numericos.

