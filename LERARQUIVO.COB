      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION                                          DIVISION.
       PROGRAM-ID. LERARQUIVO.
      ******************************************************************
       ENVIRONMENT                                             DIVISION.
       INPUT-OUTPUT                                             SECTION.
       FILE-CONTROL.
       SELECT STUDENT ASSIGN 
           TO 'C:\Users\gotic\opencobolfiles.\ARQ.txt'
           ORGANIZATION IS LINE SEQUENTIAL.
       DATA                                                    DIVISION.
       FILE                                                     SECTION.
      * FD -> FILE DESCRIPTION. 
       FD STUDENT.
       01 STUDENT-FILE.
           03 CD-STUDENT   PIC 9(05).
           03 NM-STUDENT   PIC A(20).
       
       WORKING-STORAGE                                          SECTION.
       77 WS-EOF           PIC A     VALUE SPACE.
       01 WS-DADOS         PIC X(25) VALUE SPACES.
       01 FILLER REDEFINES WS-DADOS.
          03 WS-CD-STUDENT PIC 9(05).
          03 WS-NM-STUDENT PIC A(20).
       
      ******************************************************************
       PROCEDURE                                               DIVISION.
           MAIN-PROCEDURE.
            DISPLAY "Hello world".
       
       0001-OPEN.
           OPEN INPUT STUDENT.
           
       0002-READ.
           PERFORM UNTIL WS-EOF ='F'
               READ STUDENT INTO WS-DADOS
                  AT END MOVE 'F' TO WS-EOF
                     NOT AT END
                         DISPLAY WS-CD-STUDENT " - " WS-NM-STUDENT
               END-READ
           END-PERFORM.
           CLOSE STUDENT.
            
            
       9999-STOP-PROGRAM.     
            STOP RUN.
       END PROGRAM LERARQUIVO.

