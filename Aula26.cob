       identification                                         division .
       program-id. Aula26.
       data                                                   division .
       file                                                    section .
       working-storage                                         section .
     
       procedure                                              division .
       
      * perform main-procedure.
      
       main-procedure.
           display "******************INICIO DO PROCESSAMENTO**********"
           display "processamento....".
           perform 0001-inicio.
           perform 0002-final.
 

       0001-inicio.
           display "processamento....".
    
       0002-final.   
           display "******************FINAL DO PROCESSAMENTO***********"
           stop run.

       end program Aula26.