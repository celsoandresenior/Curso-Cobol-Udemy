      * Dados de identificação do programa
       identification                                         division .
       program-id. Aula28.
       AUTHOR. Celso André.
      *-----------------------------------------------------------------
      *
       data                                                   division .
       file                                                    section .
      * Area dedicada a declaração de variaveis. 
       working-storage                                         section .
       01 ws-data           pic x(10) value spaces .
       01 filler redefines ws-data.
          03 ws-data-dd     pic 9(02).
          03 filler         pic x.
          03 ws-data-mm     pic 9(02).
          03 filler         pic x.
          03 ws-data-aa     pic 9(02).
       77 ws-total          pic 9(02) value zeros .
       77 filler            pic x(10) values "12/02/2021".

       01 ws-meses-ano      pic 9(2) value zeros .
          88 ws-mes-atual            value 1 thru 12.

       01 ws-dias-mes       pic 99 value zeros.
          88 ws-fev-nb             value 1 thru 28.
          88 ws-fev-b              value 1 thru 29.
          88 ws-mes-30             value 1 thru 30.
          88 ws-mes-31             value 1 thru 31.   

      *-----------------------------------------------------------------
      * Area dedicada a execução das procedures do programa.
      * basicamente area de processamento.
       procedure                                              division .
       main-procedure.
           display "PROCEDURE PRINCIPAL...............................".
           display ws-data.
           perform 0001-inicio.
           perform 0002-processamento.
           perform 0002-final.
 
       0001-inicio.
           display "******************INICIO DO PROCESSAMENTO*********".
           move "09"   to ws-data(01:02).
           move "/"    to ws-data(03:01).
           move "12"   to ws-data(04:02).
           move "/"    to ws-data(06:01).
           move "1984" to ws-data(07:04).
           display ws-data.
       0002-processamento.
           display "PROCESSAMENTO.....................................".
           display "contando todos os caracteres.......".
           inspect ws-data tallying ws-total for all CHARACTERS .
           display ws-total.

           display "contando caracteres especificos....".
           move 0 to ws-total.
           inspect ws-data tallying ws-total for all "/" 
               before initial "2021".
           display ws-total.

           
    
       0002-final.   
           display "FINAL DO PROCESSAMENTO............................".
           stop run.

      *----------------------------------------------------------------- 
       end program Aula28.