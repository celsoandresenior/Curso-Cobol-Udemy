      * Dados de identificação do programa
       identification                                         division .
       program-id. ProgChamado.
       AUTHOR. Celso André.
      *-----------------------------------------------------------------
      *
       data                                                   division .
       file                                                    section .
      * Area dedicada a declaração de variaveis. 
       working-storage                                         section .
       77 ws-conteudo  pic x(30) value spaces.

       linkage                                                  section.
       01 parameters.
          02 ws-return   pic 99 value 0. 
          02 ws-num-1    pic 99 value 0.
          02 ws-num-2    pic 99 value 0.
      *-----------------------------------------------------------------
      * Area dedicada a execução das procedures do programa.
      * basicamente area de processamento.
       procedure                                              division .
       main-procedure.
       display "******************PROGRAMA CHAMADO********************".
           display "PROCEDURE PRINCIPAL...............................".
           perform 0001-inicio.
           perform 0002-processamento.
           perform 0002-final.
 
       0001-inicio.
           display "******************INICIO DO PROCESSAMENTO*********".

       0002-processamento.
           display "PROCESSAMENTO.....................................".
           

           
       0002-final.   
           display "FINAL DO PROCESSAMENTO............................".
           stop run.

      *----------------------------------------------------------------- 
       end program ProgChamado.