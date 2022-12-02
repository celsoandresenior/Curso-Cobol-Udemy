      ******************************************************************
      * Author:  CELSO ANDRÉ DE lIMA
      * Date:    01/12/2022
      * Purpose: GERAR RELATORIO CSV.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION                                          DIVISION.


       PROGRAM-ID. ProgCSV.

       ENVIRONMENT                                             DIVISION.

       CONFIGURATION                                            SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT                                             SECTION.
       FILE-CONTROL.
           SELECT ARQCSV ASSIGN TO 'C:\Users\gotic\Desktop\cobol'
               ORGANIZATION IS LINE SEQUENTIAL.

       DATA                                                    DIVISION.


       FILE                                                     SECTION.
       FD ARQCSV.
       01 REG-CSV       PIC X(70).

       WORKING-STORAGE                                          SECTION.
       77 WS-NAME-F       PIC X(10).
       77 WS-NAME-L       PIC X(10).
       77 WS-EMAIL        PIC X(30).
       77 WS-PHONE        PIC 9(14).



       PROCEDURE                                               DIVISION.
       0001-MAIN.
           OPEN OUTPUT ARQCSV
           
            DISPLAY
           "**********************************************************".
           MOVE 'CELSO'           TO WS-NAME-F.
           MOVE 'LIMA'            TO WS-NAME-L.
           MOVE 'CELSO@CELSO.COM' TO WS-EMAIL.
           MOVE 980460205         TO WS-PHONE.

           

           STRING FUNCTION TRIM(WS-NAME-F)      DELIMITED BY SIZE
                           ' '                  DELIMITED BY SIZE
                  FUNCTION TRIM(WS-NAME-L)      DELIMITED BY SIZE
                           ', '                 DELIMITED BY SIZE
                  FUNCTION TRIM(WS-EMAIL)       DELIMITED BY SIZE
                           ', '                 DELIMITED BY SIZE
                           ' + '                DELIMITED BY SIZE
                  FUNCTION TRIM(WS-PHONE(1:2))  DELIMITED BY SIZE
                           ' '                  DELIMITED BY SIZE
                           '('                  DELIMITED BY SIZE
                  FUNCTION TRIM(WS-PHONE(3:4))  DELIMITED BY SIZE
                           ')'                  DELIMITED BY SIZE
                           ' '                  DELIMITED BY SIZE
                  FUNCTION TRIM(WS-PHONE(5:5))  DELIMITED BY SIZE
                           '.'                  DELIMITED BY SIZE
                  FUNCTION TRIM(WS-PHONE(6:9))  DELIMITED BY SIZE
                           ' '                  DELIMITED BY SIZE
                  FUNCTION TRIM(WS-PHONE(10:))  DELIMITED BY SIZE
                  INTO REG-CSV
           END-STRING.

           WRITE REG-CSV.
           CLOSE ARQCSV.

            STOP RUN.
       0001-MAIN-END.
       END PROGRAM ProgCSV.
