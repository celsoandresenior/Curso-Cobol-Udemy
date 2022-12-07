      ******************************************************************
      * Author: CELSO ANDRE
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *POR PADRÃO O PROGRAM-ID DEVE TER NO MAXIMO 8 DIGITOS.
       PROGRAM-ID. EXCLUIRCONT.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
           SPECIAL-NAMES.
               DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT SECTION.
           FILE-CONTROL.
               SELECT CONTATOS ASSIGN TO
               'C:\Users\gotic\opencobolfiles\CONTATOS.DAT'
               ORGANIZATION IS INDEXED
               ACCESS MODE IS RANDOM
               RECORD KEY  IS ID-CONTATO
               FILE STATUS IS WS-FS.

       DATA DIVISION.

       FILE SECTION.
       FD CONTATOS.
          COPY FD_CONTATOS.


       WORKING-STORAGE SECTION.
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
           DISPLAY "*** EXCLUIR CONTATOS ***".
           SET EXIT-OK TO FALSE
           PERFORM P300-EXCLUIR THRU P300-FIM UNTIL EXIT-OK
           PERFORM P900-FIM.

       P300-EXCLUIR.
           SET EOF-OK TO FALSE
           SET FS-OK  TO TRUE


           OPEN I-O CONTATOS

           IF FS-OK THEN
               ACCEPT ID-CONTATO

               READ CONTATOS INTO WS-REGISTRO KEY IS ID-CONTATO
                   INVALID KEY
                       DISPLAY 'ID INVALIDO.....'
                   NOT INVALID KEY
                       DISPLAY 'CONTATO: ' WS-NM-CONTATO

                       DELETE CONTATOS RECORD
                       DISPLAY 'REGISTRO ATUALIZADO'
               END-READ

           ELSE
               DISPLAY 'ERRO AO ABRIR ARQUIVO' WS-FS

           END-IF

           CLOSE CONTATOS
           DISPLAY 'TECLE: '
                   '<QUALQUER TECLA> P/ CONTINUAR, OU F PARA SAIR.'
           ACCEPT WS-EXIT
           .
       P300-FIM.

       P900-FIM.
            STOP RUN.

       END PROGRAM EXCLUIRCONT.
