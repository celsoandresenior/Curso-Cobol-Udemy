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
       77 ws-num-1      pic 9(2) value zeros .
       77 ws-num-2      pic 9(2) value zeros .
      *-----------------------------------------------------------------
      * Area dedicada a execução das procedures do programa.
      * basicamente area de processamento.
       procedure                                              division .
       main-procedure.
           display "******************INICIO DO PROCESSAMENTO**********"
           display "PROCEDURE PRINCIPAL...............................".
           perform 0001-inicio.
           perform 0002-processamento.
           perform 0002-final.
 
       0001-inicio.
           display "SOLICITANDO VALORES AO USUARIO....................".
           display " ".
           display "POR FAVOR INFORMAR O PRIMEIRO NUMERO:.............".
           accept ws-num-1.
           display "POR FAVOR INFORMAR O SEGUNDO  NUMERO:.............".
           accept ws-num-2.
           display " ".
       0002-processamento.
           display "PROCESSAMENTO.....................................".
           compute ws-resultado = ws-num-1 + ws-num-2.
           compute ws-resultado = ws-resultado * ws-resultado.
           display "resultado.: " ws-resultado.
           display " ".
    
       0002-final.   
           display "FINAL DO PROCESSAMENTO............................".
           stop run.

      *----------------------------------------------------------------- 
       end program Aula27.