      ******************************************************************
      * Author: Celso Andre
      * Date: 06/12/2022
      * Purpose: formatando campos layout
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. STRINGS.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-TM-1 PIC 99.
       77 WS-TM-2 PIC 99.
       77 WS-NOME-COMPL-F PIC X(41) VALUE SPACES.
      *COPIANDO LAYOUT
       COPY 'LAYOUT001'.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Hello world".
           PERFORM 0100-INIT.
           PERFORM 0200-PROCESS.
           PERFORM 0300-DISPLAY.
           PERFORM 9999-FINAL.   
               
       0100-INIT.
           DISPLAY "INICIO DO PROGRAMA...".
           MOVE 'MARIA'       TO WS-PRIMEIRO-NOME
           MOVE 'SANTOS'      TO WS-ULTIMO-NOME
           
      *    CARREGANDO POR GRUPO OU CAMPO-A-CAMPO 
      *    MOVE 551112344567  TO WS-TELEFONE
           MOVE 55            TO WS-PAIS
           MOVE 11            TO WS-DDD
           MOVE 1234          TO WS-PREFIXO
           MOVE 4567          TO WS-SUFIXO
           
           MOVE 'RUA DÓ'      TO WS-RUA
           MOVE 'SAPIENS'     TO WS-BAIRRO
           MOVE 'CITY'        TO WS-CIDADE
           MOVE 'RJ'          TO WS-UF
           
      *    CARREGANDO POR GRUPO     
           MOVE '1234789'     TO WS-CEP
           
           MOVE 'BRASILEIRO'  TO WS-NACIONALIDADE
           MOVE 'PROGRAMADOR' TO WS-PROFISSAO.
           
           
           
       0200-PROCESS.
           DISPLAY "PROCESSAMENTO DO PROGRAMA...".
           MOVE ZEROES        TO WS-TM-1.
           INSPECT FUNCTION REVERSE(WS-PRIMEIRO-NOME)
               TALLYING WS-TM-1 FOR LEADING ' '.
               
           
       0300-DISPLAY.
           DISPLAY '1 - NOME COMPLETO.:' WS-PRIMEIRO-NOME
               (1:(FUNCTION LENGTH(WS-PRIMEIRO-NOME) - WS-TM-1))     
               ' '
               WS-ULTIMO-NOME.
                   
           DISPLAY '3 - TELEFONE......: ' WS-TELEFONE.
           DISPLAY '4 - ' WS-NACIONALIDADE.
           DISPLAY '5 - ' WS-PROFISSAO.
       9999-FINAL.
           DISPLAY "FINAL DO PROGRAMA...".
           STOP RUN.
           
       END PROGRAM STRINGS.

