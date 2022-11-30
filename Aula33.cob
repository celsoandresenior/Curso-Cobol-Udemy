      * Dados de identificação do programa
       identification                                         division .
       program-id. Aula33.
       AUTHOR. Celso André.
      *-----------------------------------------------------------------
      *
       data                                                   division .
       file                                                    section .
      * Area dedicada a declaração de variaveis. 
       working-storage                                         section .

       77 ws-comprimento pic 9(2) value zeros .                                         
       01 ws-endereco.                                       
          03 ws-rua      pic x(20) value spaces.
          03 ws-bairoo   pic x(20) value spaces.
          03 ws-cidade   pic x(20) value spaces. 

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
      *-----------------------------------------------------------------     
           display "comprimento do grupo endereco eh.: " 
                   length of ws-comprimento.
           display "************************************************* ".
      *-----------------------------------------------------------------
           compute ws-comprimento = function length(ws-endereco).
           display "comprimento do grupo endereco eh.: " ws-comprimento.             


      *-----------------------------------------------------------------     
       0002-final.   
           display "FINAL DO PROCESSAMENTO............................".
           stop run.

      *----------------------------------------------------------------- 
       end program Aula33.