      * Dados de identificação do programa
       identification                                         division .
       program-id. Aula41.
       AUTHOR. Celso André.
      *-----------------------------------------------------------------
      *
       data                                                   division .
       file                                                    section .
      * Area dedicada a declaração de variaveis. 
       working-storage                                         section .
       01 ws-variaveis.
          03 ws-cont        pic 9(2).
          03 ws-total       pic 9(2).
          03 ws-indice      pic 9(2).

      *-----------------------------------------------------------------
      * Area dedicada a execução das procedures do programa.
      * basicamente area de processamento.
       procedure                                              division .
       main-procedure.
           display "PROCEDURE PRINCIPAL...............................".
           perform 0001-inicio.
           perform 0002-processamento.
           perform 9999-final.
 
       0001-inicio.
           display "******************INICIO DO PROCESSAMENTO*********".
           

       0002-processamento.
           display "PROCESSAMENTO.....................................".
           perform 0003-loop1 thru 0003-loop1-fim 3 times.

       0003-loop1.
           display "Primeiro laco....".
           add 1       to ws-cont.
           display "contador.: " ws-cont.

           move 0      to ws-total.
           
           perform 3 times 
               add 1 to ws-total
               display "ws-total.: " ws-total
           end-perform.


       0003-loop1-fim.

       0004-loop2.
           display "Segundo laco....".
           
       9999-final.   
           display "FINAL DO PROCESSAMENTO............................".
           stop run.

      *----------------------------------------------------------------- 
       end program Aula41.