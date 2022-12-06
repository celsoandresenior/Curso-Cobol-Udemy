      ******************************************************************
      * Author:  CELSO ANDRÉ DE lIMA
      * Date:    01/12/2022
      * Purpose: GERAR RELATORIO CSV.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION                                          DIVISION.


       PROGRAM-ID. PROGCSV.

       ENVIRONMENT                                             DIVISION.

       CONFIGURATION                                            SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT                                             SECTION.
       FILE-CONTROL.
           SELECT ARQCSV ASSIGN 
           TO 'C:\Users\gotic\opencobolfiles\bin\teste.csv'
               ORGANIZATION IS LINE SEQUENTIAL.

       DATA                                                    DIVISION.


       FILE                                                     SECTION.
       FD ARQCSV.
       01 REG-CSV       PIC X(70).

       WORKING-STORAGE                                          SECTION.
       77 WS-NAME-F       PIC X(10).
       77 WS-NAME-L       PIC X(10).
       77 WS-EMAIL        PIC X(30).
       77 WS-PHONE        PIC x(14).
       77 WS-TESTE        PIC 9(04).



       PROCEDURE                                               DIVISION.
       0001-MAIN.
           OPEN OUTPUT ARQCSV

            DISPLAY
           "**********************************************************".
           MOVE 'CELSO'           TO WS-NAME-F.
           MOVE 'LIMA'            TO WS-NAME-L.
           MOVE 'CELSO@CELSO.COM' TO WS-EMAIL.
           MOVE '5511980460200'   TO WS-PHONE.
           MOVE WS-PHONE(10:)     TO WS-TESTE.
      *    * 1234567890123
      *    * 5511980460200
           DISPLAY WS-TESTE.

   
           STRING FUNCTION TRIM(WS-NAME-F)      DELIMITED BY SIZE
                           ' '                  DELIMITED BY SIZE
                  FUNCTION TRIM(WS-NAME-L)      DELIMITED BY SIZE
                           ', '                 DELIMITED BY SIZE
                  FUNCTION TRIM(WS-EMAIL)       DELIMITED BY SIZE
                           ', '                 DELIMITED BY SIZE
                           '+'                  DELIMITED BY SIZE
                  FUNCTION TRIM(WS-PHONE(1:2))  DELIMITED BY SIZE
                           ' '                  DELIMITED BY SIZE
                           '('                  DELIMITED BY SIZE
                  FUNCTION TRIM(WS-PHONE(3:2))  DELIMITED BY SIZE
                           ')'                  DELIMITED BY SIZE
                           ' '                  DELIMITED BY SIZE
                  FUNCTION TRIM(WS-PHONE(5:1))  DELIMITED BY SIZE
                           '.'                  DELIMITED BY SIZE
                  FUNCTION TRIM(WS-PHONE(6:4))  DELIMITED BY SIZE
                           '.'                  DELIMITED BY SIZE
                  FUNCTION TRIM(WS-PHONE(10:))  DELIMITED BY SIZE         
                  INTO REG-CSV
           END-STRING.

           WRITE REG-CSV.
           CLOSE ARQCSV.

            STOP RUN.
       0001-MAIN-END.
       END PROGRAM PROGCSV.
