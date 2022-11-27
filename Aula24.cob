       identification                                         division .
       program-id. Aula24.
       data                                                   division .
       file                                                    section .
       working-storage                                         section .
       77 ws-data pic x(20) value spaces. 
       77 ws-data-d pic x(20) value spaces. 
       procedure                                              division .
       main-procedure.
           display "******************INICIO DO PROCESSAMENTO**********"
           
           move '20221127' to ws-data.
           move '2023'     to ws-data(01:04)
           move '01'       to ws-data(05:02)
           move '01'       to ws-data(07:02)
           display ws-data
           
           display "******************FINAL DO PROCESSAMENTO***********"
           stop run.
       end program Aula24.