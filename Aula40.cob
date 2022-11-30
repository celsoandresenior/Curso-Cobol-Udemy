      * Dados de identificação do programa
       identification                                         division .
       program-id. Aula40.
       AUTHOR. Celso André.
      *-----------------------------------------------------------------
      *
       data                                                   division .
       file                                                    section .
      * Area dedicada a declaração de variaveis. 
       working-storage                                         section .
       77 ws-mes  pic 9(2) value zeros.

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
           move 12 to ws-mes.

       0002-processamento.
           display "PROCESSAMENTO.....................................".
           
           evaluate ws-mes
               when 1
                   display "janeiro"
               when 2
                   display "fevereiro"
               when 3
                   display "marco"
               when other 
                   display "ja fodeu todo mesmo."
           end-evaluate. 

           
       0002-final.   
           display "FINAL DO PROCESSAMENTO............................".
           stop run.

      *----------------------------------------------------------------- 
       end program Aula40.