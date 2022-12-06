       01 CADASTRO-PF.
           03 WS-NOME.
               05 WS-PRIMEIRO-NOME PIC X(20).
               05 WS-ULTIMO-NOME   PIC X(20).
           03 WS-TELEFONE.
               05 WS-PAIS          PIC 9(02).
               05 WS-DDD           PIC 9(02).
               05 WS-PREFIXO       PIC 9(04).
               05 WS-SUFIXO        PIC 9(04).
           03 WS-ENDERECO.
               05 WS-RUA           PIC X(15).
               05 WS-BAIRRO        PIC X(15).
               05 WS-CIDADE        PIC X(15).
               05 WS-UF            PIC X(02).
               05 WS-CEP.
                   07 WS-CEP-1     PIC X(04).
                   07 WS-CEP-2     PIC X(03).
           03 WS-NACIONALIDADE     PIC X(20).
           03 WS-PROFISSAO         PIC X(20).
