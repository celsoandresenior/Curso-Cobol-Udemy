      * Dados de identificação do programa
       identification                                         division .
       program-id. Aula31.
       AUTHOR. Celso André.
      *-----------------------------------------------------------------
      *
       data                                                   division .
       file                                                    section .
      * Area dedicada a declaração de variaveis. 
       working-storage                                         section .
       77 ws-nome-completo  pic x(30) value spaces.
       77 ws-mostra         pic x(30) value spaces.

       01 ws-nome.
          03 ws-pri-nome    pic x(10) value spaces.
          03 ws-seg-nome    pic x(10) value spaces.
          03 ws-ult-nome    pic x(10) value spaces.

       01 ws-cont.
          03 ws-ponteiro    pic 9(2) value zeros.
          03 ws-total       pic 9(2) value zeros.
          03 ws-tm-cp1      pic 9(2) value zeros.
          03 ws-tm-cp2      pic 9(2) value zeros.
          03 ws-tm-cp3      pic 9(2) value zeros.
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
           perform 0006-final.
      *-----------------------------------------------------------------
       0001-inicio.
           display "******************INICIO DO PROCESSAMENTO*********".
           
      *-----------------------------------------------------------------
       0002-processamento.
           display "PROCESSAMENTO.....................................".
           
           initialize ws-nome-completo ws-nome ws-cont.
           
           move  "celso andre de lima" to ws-nome-completo.
           
           unstring ws-nome-completo delimited by spaces 
               into ws-pri-nome
                    ws-seg-nome
                    ws-ult-nome
           end-unstring.
           display 'primeiro nome.: ' ws-pri-nome.
           display 'segundo  nome.: ' ws-seg-nome.
           display 'ultimo   nome.: ' ws-ult-nome. 
     
      *-----------------------------------------------------------------
       0003-processamento.
           display "PROCESSAMENTO.....................................".
           
           initialize ws-nome-completo ws-nome ws-cont.

      *          1234567890123456789 
           move "celso andre de lima" to ws-nome-completo.
           move 1                     to ws-ponteiro.

           unstring ws-nome-completo delimited by spaces 
               into ws-pri-nome
                    ws-seg-nome
                    ws-ult-nome
               with pointer ws-ponteiro
               tallying in ws-total
           end-unstring.
           display 'primeiro nome.: ' ws-pri-nome.
           display 'segundo  nome.: ' ws-seg-nome.
           display 'ultimo   nome.: ' ws-ult-nome. 
           display 'ponteiro......: ' ws-ponteiro.
           display 't. campos.....: ' ws-total.  
       
      *-----------------------------------------------------------------
       0004-processamento.
           display "PROCESSAMENTO.....................................".
           
           initialize ws-nome-completo 
                      ws-nome 
                      ws-cont.

      *          1234567890123456789 
           move "celso;andre;lima;" to ws-nome-completo.
           move 1                     to ws-ponteiro.

           unstring ws-nome-completo delimited by '*' or ';' 
               into ws-pri-nome count in ws-tm-cp1
                    ws-seg-nome count in ws-tm-cp2
                    ws-ult-nome count in ws-tm-cp3
               with pointer ws-ponteiro
               tallying in ws-total
           end-unstring.
           display 'primeiro nome.: ' ws-pri-nome.
           display 'segundo  nome.: ' ws-seg-nome.
           display 'ultimo   nome.: ' ws-ult-nome. 
           display 'ponteiro......: ' ws-ponteiro.
           display 'ttotal campos.: ' ws-total.

           display 'tm. campo1....: ' ws-tm-cp1.
           display 'tm. campo2....: ' ws-tm-cp2.
           display 'tm. campo3....: ' ws-tm-cp3.  

      *-----------------------------------------------------------------
       0005-processamento.
           display "PROCESSAMENTO.....................................".
           
           initialize ws-nome-completo 
                      ws-nome 
                      ws-cont.

      *          1234567890123456789 
           move "celso;;;;;;andre;lima;" to ws-nome-completo.
           move 1                     to ws-ponteiro.

           unstring ws-nome-completo 
               delimited by '*' or all ';' 
               into ws-pri-nome count in ws-tm-cp1
                    ws-seg-nome count in ws-tm-cp2
                    ws-ult-nome count in ws-tm-cp3
               with pointer ws-ponteiro
               tallying in ws-total
           end-unstring.
           display 'primeiro nome.: ' ws-pri-nome.
           display 'segundo  nome.: ' ws-seg-nome.
           display 'ultimo   nome.: ' ws-ult-nome. 
           display 'ponteiro......: ' ws-ponteiro.
           display 'ttotal campos.: ' ws-total.

           display 'tm. campo1....: ' ws-tm-cp1.
           display 'tm. campo2....: ' ws-tm-cp2.
           display 'tm. campo3....: ' ws-tm-cp3.  


      *-----------------------------------------------------------------     
       0006-final.   
           display "FINAL DO PROCESSAMENTO............................".
           stop run.

      *----------------------------------------------------------------- 
       end program Aula31.