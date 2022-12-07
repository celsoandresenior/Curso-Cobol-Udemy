      ******************************************************************
      * Author: CELSO ANDRE
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *POR PADRÃO O PROGRAM-ID DEVE TER NO MAXIMO 8 DIGITOS.
       PROGRAM-ID. LISTCONTSEQ.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
           SPECIAL-NAMES.
               DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT SECTION.
           FILE-CONTROL.
               SELECT CONTATOS ASSIGN TO
               'C:\Users\gotic\opencobolfiles\CONTATOS.DAT'
               ORGANIZATION IS INDEXED
               ACCESS MODE IS SEQUENTIAL
               RECORD KEY  IS ID-CONTATO
               FILE STATUS IS WS-FS.

       DATA DIVISION.

       FILE SECTION.
       FD CONTATOS.
          COPY FD_CONTATOS.


       WORKING-STORAGE SECTION.
       77 WS-CONT                   PIC 9(03) VALUE ZEROES.

       01 WS-REGISTRO               PIC X(22) VALUE SPACES.
       01 FILLER REDEFINES WS-REGISTRO.
         03 WS-ID-CONTATO           PIC 9(02).
         03 WS-NM-CONTATO           PIC X(20).

       77 WS-EOF                    PIC X.
          88 EOF-OK                 VALUE 'S' FALSE 'N'.

       77 WS-EXIT                   PIC X.
          88 EXIT-OK                VALUE 'F' FALSE 'N'.

       77 WS-FS                     PIC 99.
          88 FS-OK                  VALUE 0.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "*** CONTATOS ***".
           SET EXIT-OK TO FALSE
           PERFORM P300-LISTAR THRU P300-FIM
           PERFORM P900-FIM.

       P300-LISTAR.
           SET EOF-OK TO FALSE
           SET FS-OK  TO TRUE
           SET WS-CONT TO 0.

           OPEN INPUT CONTATOS

           PERFORM UNTIL EOF-OK
               IF FS-OK THEN
                   READ CONTATOS INTO WS-REGISTRO
                       AT END
                           SET EOF-OK TO TRUE
                       NOT AT END
                           ADD 1 TO WS-CONT
                           DISPLAY "REGISTRO" WS-CONT " " WS-REGISTRO
                   END-READ
                   ELSE
                       DISPLAY 'ERRO: ' WS-FS

               END-IF

           END-PERFORM.


           CLOSE CONTATOS
           .
       P300-FIM.
       P900-FIM.
            STOP RUN.

       END PROGRAM LISTCONTSEQ.
