       identification                                         division .
       program-id. Aula23.
       data                                                   division .
       file                                                    section .
       working-storage                                         section .
       77 ws-mostra pic x(20) value spaces. 
       procedure                                              division .
       main-procedure.
           display "infome algo: ".
           accept ws-mostra
           display ws-mostra.
           stop run.
       end program Aula23.
       
       
       
       