      ******************************************************************
      * Author: CELSO ANDRE
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *POR PADRÃO O PROGRAM-ID DEVE TER NO MAXIMO 8 DIGITOS.
       PROGRAM-ID. CADCONTATOSSEQUENCIAL.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
           SPECIAL-NAMES.
               DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT SECTION.
           FILE-CONTROL.
               SELECT CONTATOS ASSIGN TO
               'C:\Users\gotic\CONTATOS.TXT'
               ORGANIZATION IS SEQUENTIAL
               ACCESS MODE IS SEQUENTIAL
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
           DISPLAY "*** CADASTRO DE CONTATOS ***".
           SET EXIT-OK TO FALSE
           PERFORM P300-CADASTRA THRU P300-FIM UNTIL EXIT-OK
           PERFORM P900-FIM.

       P300-CADASTRA.
           SET EOF-OK TO FALSE
           SET FS-OK  TO TRUE
           DISPLAY 'PARA CADASTRAR UM CONTATO INFORME: '
           DISPLAY 'INFORME UM NUMERO PARA ID: '
           ACCEPT WS-ID-CONTATO
           DISPLAY 'INFORME O NOME DO CONTATO: '
           ACCEPT WS-NM-CONTATO

           OPEN EXTEND CONTATOS

           IF WS-FS EQUAL 35 THEN
               OPEN OUTPUT CONTATOS
           END-IF


           IF FS-OK THEN
               MOVE WS-ID-CONTATO TO ID-CONTATO
               MOVE WS-NM-CONTATO TO NM-CONTATO
               WRITE REG-CONTATOS
               DISPLAY 'CONTATO GRAVADO!!'

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

       END PROGRAM CADCONTATOSSEQUENCIAL.
