      * Dados de identificação do programa
       identification                                         division .
       program-id. ProgChamador.
       AUTHOR. Celso André.
      *-----------------------------------------------------------------
      *
       data                                                   division .
       file                                                    section .
      * Area dedicada a declaração de variaveis. 
       working-storage                                         section .
       77 ws-conteudo  pic x(30) value spaces.

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
      *    C:\Users\gotic\Desktop\cobol udemy 
           display "******************INICIO DO PROCESSAMENTO*********".

       0002-processamento.
           display "PROCESSAMENTO.....................................".
           call 'ProgChamado'.
           

           
       0002-final.   
           display "FINAL DO PROCESSAMENTO............................".
           stop run.

      *----------------------------------------------------------------- 
       end program ProgChamador.