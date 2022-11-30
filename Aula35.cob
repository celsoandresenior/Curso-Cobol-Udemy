      * Dados de identificação do programa
       identification                                         division .
       program-id. Aula35.
       AUTHOR. Celso André.
      *-----------------------------------------------------------------
      *
       data                                                   division .
       file                                                    section .
      * Area dedicada a declaração de variaveis. 
       working-storage                                         section .
       77 ws-num-1      pic 9(2) value zeros .
       77 ws-num-2      pic 9(2) value zeros .
       77 ws-result     pic 9(3) value zeros .
       77 ws-validError pic 9(1) value zero  .

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
           initialize ws-num-1 ws-num-2 ws-result.
           move 00 to ws-num-1.
           move 00 to ws-num-2.


       0002-processamento.
           display "PROCESSAMENTO.....................................".
           display "soma...:"
           perform 0003-add.
           display "subtracao...:"
           perform 0004-sub.
           display "divisao"
           perform 0005-div.
           display "multiplicacao"
           perform 0006-mult.


       0003-add.
           initialize ws-validError.
           add ws-num-1 ws-num-2 to ws-result 
               on size error perform 9998-error.
           if ws-validError is equal to 0    
               display ws-num-1 " + " ws-num-2 " = " ws-result.

       0004-sub.
           initialize ws-validError.
           subtract ws-num-2  from ws-num-1 giving ws-result 
               on size error perform 9998-error.
           if ws-validError is equal to 0    
               display ws-num-2 " - " ws-num-1 " = " ws-result.

       0005-div.
           initialize ws-validError.
           divide ws-num-1 by ws-num-2 giving ws-result.
           display ws-num-1 " / " ws-num-2 " = " ws-result.
           
       0006-mult.
       initialize ws-validError.
           multiply ws-num-1 by ws-num-2 giving ws-result.
           display ws-num-1 " * " ws-num-2 " = " ws-result.

       9998-error.
           move 1 to ws-validError
           display "TRATAMENTOS DE ERRORS.............................".
           display "Erro no calculo...................................".

       9999-final.   
           display "FINAL DO PROCESSAMENTO............................".
           stop run.

      *----------------------------------------------------------------- 
       end program Aula35.