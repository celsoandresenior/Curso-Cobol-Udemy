      * Dados de identificação do programa
       identification                                         division .
       program-id. Aula34.
       AUTHOR. Celso André.
      *-----------------------------------------------------------------
      *
       data                                                   division .
       file                                                    section .
      * Area dedicada a declaração de variaveis. 
       working-storage                                         section .
       
       01 ws-layout-1.
          03 ws-nome                pic x(30) value spaces.
          03 ws-endereco            pic x(30) value spaces. 
          03 ws-telefone            pic x(30) value spaces.
          03 ws-email               pic x(30) value spaces. 
          03 ws-cidade              pic x(30) value spaces.
          03 ws-estado              pic x(30) value spaces. 

       01 ws-layout-2.
          03 ws-nome                pic x(30) value spaces.
          03 ws-endereco            pic x(30) value spaces. 
          03 ws-telefone            pic x(30) value spaces.
          03 ws-email               pic x(30) value spaces. 
          03 ws-cidade              pic x(30) value spaces.
          03 ws-uf                  pic x(02) value spaces.    
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
           move 'celso andre'       to ws-nome     of ws-layout-1.
           move 'rua fonte da espi' to ws-endereco of ws-layout-1.
           move 'celso@andre'       to ws-email    of ws-layout-1.
           move 'sao paulo'         to ws-cidade   of ws-layout-1.
           move 'sao paulo'         to ws-estado   of ws-layout-1.

       0002-processamento.
           display "PROCESSAMENTO.....................................".
           move ws-layout-1 to ws-layout-2.

           display "ws-layout-1 : " ws-layout-1.
           display "ws-layout-2 : " ws-layout-2.

           display "ws-layout-1 legth.: " length of ws-layout-1.
           display "ws-layout-2 legth.: " length of ws-layout-2.

           

           
       0002-final.   
           display "FINAL DO PROCESSAMENTO............................".
           stop run.

      *----------------------------------------------------------------- 
       end program Aula34.