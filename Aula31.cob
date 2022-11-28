      * Dados de identificação do programa
       identification                                         division .
       program-id. Aula31.
       AUTHOR. Celso André.
      *-----------------------------------------------------------------
      *
       data                                                   division .
       file                                                    section .
      * Area dedicada a declaração de variaveis. 
       working-storage                                         section .
       77 ws-nome-completo  pic x(30) value spaces.
       77 ws-mostra         pic x(30) value spaces.

       01 ws-nome.
          03 ws-pri-nome    pic x(10) value spaces.
          03 ws-seg-nome    pic x(10) value spaces.
          03 ws-ult-nome    pic x(10) value spaces.

      *-----------------------------------------------------------------
      * Area dedicada a execução das procedures do programa.
      * basicamente area de processamento.
       procedure                                              division .
       main-procedure.
           display "PROCEDURE PRINCIPAL...............................".
           perform 0001-inicio.
           perform 0002-processamento.
           perform 0002-final.
 
       0001-inicio.
           display "******************INICIO DO PROCESSAMENTO*********".
           

       0002-processamento.
           display "PROCESSAMENTO.....................................".
           initialize ws-nome-completo ws-nome.
           move  "celso andre de lima" to ws-nome-completo.
           
           unstring ws-nome-completo delimited by spaces 
               into ws-pri-nome
                    ws-seg-nome
                    ws-ult-nome
           end-unstring.

           display ws-nome.  

           
       0002-final.   
           display "FINAL DO PROCESSAMENTO............................".
           stop run.

      *----------------------------------------------------------------- 
       end program Aula31.