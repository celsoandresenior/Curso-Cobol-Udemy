      * Dados de identificação do programa
       identification                                         division .
       program-id. Aula32.
       AUTHOR. Celso André.
      *-----------------------------------------------------------------
      *
       data                                                   division .
       file                                                    section .
      * Area dedicada a declaração de variaveis. 
       working-storage                                         section .
       77 ws-num-1      pic 99 value zeros .
       77 ws-num-2      pic 99 value zeros .
       77 ws-res        pic 99 value zeros .

      *-----------------------------------------------------------------
      * Area dedicada a execução das procedures do programa.
      * basicamente area de processamento.
       procedure                                              division .
       main-procedure.
           display "PROCEDURE PRINCIPAL...............................".
           perform 0001-inicio.
           perform 0002-capvalores.
           perform 0003-processamento.
           perform 9999-final.
 
       0001-inicio.
           display "******************INICIO DO PROCESSAMENTO*********".
           initialize ws-num-1
                      ws-num-2
                      ws-res.

      *-----------------------------------------------------------------
       0002-capvalores.
           display "PROCESSAMENTO.....................................".
           display "informe o primeiro numero:"
           accept ws-num-1.
           display "informe o segundo numero:"
           accept ws-num-2.

      *-----------------------------------------------------------------
       0003-processamento.
           display "PROCESSAMENTO.....................................".
           compute ws-res = ws-num-1 * ws-num-2 
               on size error perform 0004-error.
           
           display "resultado.: " ws-res.

           
       0004-error.
           display "TRATAMENTOS DE ERRORS.............................".
           display "Erro no calculo...................................".
      *-----------------------------------------------------------------     
       9999-final.   
           display "FINAL DO PROCESSAMENTO............................".
           stop run.

      *----------------------------------------------------------------- 
       end program Aula32.