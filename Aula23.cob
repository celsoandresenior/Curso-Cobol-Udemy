       identification                                         division .
       program-id. Aula23.
       data                                                   division .
       file                                                    section .
       working-storage                                         section .
       77 ws-mostra pic x(20) value spaces. 
       77 ws-data pic x(20) value spaces. 
       procedure                                              division .
       main-procedure.
           display "infome algo: ".
           accept ws-mostra
           accept ws-data from date YYYYMMDD                             Formatando data com ano em 4 digitos.
           display ws-mostra ' - ' ws-data .
           stop run.
       end program Aula23.
       
       
       
       