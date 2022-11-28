      * Dados de identificação do programa
       identification                                         division .
       program-id. Aula30.
       AUTHOR. Celso André.
      *-----------------------------------------------------------------
      *
       data                                                   division .
       file                                                    section .
      * Area dedicada a declaração de variaveis. 
       working-storage                                         section .
       77 ws-conteudo  pic x(30) value spaces.
       77 ws-texto     pic x(50) value spaces.
       77 ws-total     pic 9(3)  value zeros.
       77 ws-ponteiro  pic 9(2)  value zeros.

      *-----------------------------------------------------------------
      * Area dedicada a execução das procedures do programa.
      * basicamente area de processamento.
       procedure                                              division .
       main-procedure.
           display "PROCEDURE PRINCIPAL...............................".
           perform 0001-inicio.
           perform 0002-processamento.
           perform 0003-processamento.
           perform 0004-processamento.
           perform 0005-processamento.
           perform 0004-final.
 
       0001-inicio.
           display "******************INICIO DO PROCESSAMENTO*********".

       0002-processamento.
           display "PROCESSAMENTO 1...................................".
           initialize ws-conteudo ws-texto ws-total.
           string 
               'celso' ' ' 'andre' delimited by size
                  into ws-conteudo
           end-string.
           inspect ws-conteudo tallying ws-total for all CHARACTERS .
           display "total de caracteres " ws-total.
           display ws-conteudo.
          
       0003-processamento.
           display "PROCESSAMENTO 2...................................".
           initialize ws-conteudo ws-texto ws-total.
      *          1234567890123456789012345678901234567890
           move 'Celso Andre esta estudando tudo que pode!' 
               to ws-texto.

           string 
               ws-texto(1:11)
               ' '
               ws-texto(13:4)
               ' '
               ws-texto(18:9)
               delimited by size
                  into ws-conteudo
           end-string.
           inspect ws-conteudo tallying ws-total for all CHARACTERS .
           display "total de caracteres " ws-total.
           display ws-conteudo.
           
            0004-processamento.
           display "PROCESSAMENTO 3...................................".
           initialize ws-conteudo ws-texto ws-total.
      *          1234567890123456789012345678901234567890
           move 'Celso Andre esta estudando tudo que pode!' 
               to ws-texto.

           string 
               ws-texto
               delimited by space 
                  into ws-conteudo
           end-string.
           inspect ws-conteudo tallying ws-total for all CHARACTERS .
           display "total de caracteres " ws-total.
           display ws-conteudo.

       0005-processamento.
           display "PROCESSAMENTO 4...................................".
           initialize ws-conteudo ws-texto ws-total.
      *          1234567890123456789012345678901234567890
           move 'o             esta estudando tudo que pode!' 
               to ws-texto.
           set ws-ponteiro to 3.

           string 
               'Celso Andre'
               delimited by size into ws-texto
               with pointer ws-ponteiro
           end-string.

           inspect ws-conteudo tallying ws-total for all CHARACTERS .
           display "ponteiro " ws-ponteiro.
           display ws-texto.
           
       0004-final.   
           display "FINAL DO PROCESSAMENTO............................".
           stop run.

      *----------------------------------------------------------------- 
       end program Aula30.