      * Dados de identificação do programa
       identification                                         division .
       program-id. Aula29.
       AUTHOR. Celso André.
      *-----------------------------------------------------------------
      *
       data                                                   division .
       file                                                    section .
      * Area dedicada a declaração de variaveis. 
       working-storage                                         section .
       01 ws-nome.
          03 ws-primeiro-nome  pic x(10) value 'celso'.
          03 filler            pic x(10) value 'andre'.

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
           display "saida 01:" ws-nome.
           initialize ws-nome.
           display "saida 02:" ws-nome.

           
    
       0002-final.   
           display "FINAL DO PROCESSAMENTO............................".
           stop run.

      *----------------------------------------------------------------- 
       end program Aula29.