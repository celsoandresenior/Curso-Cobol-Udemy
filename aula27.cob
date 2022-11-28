      * Dados de identificação do programa
       identification                                         division .
       program-id. Aula27.
       AUTHOR. Celso André.
      *-----------------------------------------------------------------
      *
       data                                                   division .
       file                                                    section .
      * Area dedicada a declaração de variaveis. 
       working-storage                                         section .
       77 ws-resultado  pic 9(5) value zeros .
      *-----------------------------------------------------------------
      * Area dedicada a execução das procedures do programa.
      * basicamente area de processamento.
       procedure                                              division .
       main-procedure.
           display "******************INICIO DO PROCESSAMENTO**********"
           display "PROCEDURE PRINCIPAL...............................".
           perform 0001-inicio.
           perform 0002-final.
 

       0001-inicio.
           display "PROCESSAMENTO.....................................".
           compute ws-resultado = 5 + 5.
           compute ws-resultado = ws-resultado * ws-resultado.
           display "resultado.: " ws-resultado.
    
       0002-final.   
           display "FINAL DO PROCESSAMENTO............................".
           stop run.

      *----------------------------------------------------------------- 
       end program Aula27.