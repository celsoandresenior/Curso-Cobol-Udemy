       identification                                         division .
       program-id. Aula26.
       data                                                   division .
       file                                                    section .
       working-storage                                         section .
     
       procedure                                              division .

       perform main-procedure thru main-procedure-fim.
       perform 0001-inicio    thru 0001-inicio-fim.
      * perform 0002-inicio    thru 0002-inicio-fim.

       main-procedure.
           display "******************INICIO DO PROCESSAMENTO**********"
           display "pos processessamento....".
       main-procedure-fim. 

       0001-inicio.
           display "processamento....".
           perform 0002-inicio thru 0002-inicio-fim.
       0001-inicio-fim.

       0002-inicio.
           display "fim....".
           stop run .
       0002-inicio-fim.

       end program Aula26.