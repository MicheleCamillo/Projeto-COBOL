      ******************************************************************
      * Author: Michele Camillo
      * Date:20200523
      * Purpose: Perform Times
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB08.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WRK-NUMERO       PIC 9(02)   VALUE ZEROS.
       77 WRK-CONTADOR     PIC 9(02)   VALUE 1.
       77 WRK-RESULTADO    PIC 9(03)   VALUE ZEROS.
       PROCEDURE DIVISION.
       0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.
           IF WRK-NUMERO > 0
               PERFORM 0200-PROCESSAR
           END-IF
           PERFORM 0300-FINALIZAR.

           STOP RUN.

       0100-INICIALIZAR.
             ACCEPT WRK-NUMERO.
       0200-PROCESSAR.

           PERFORM 10 TIMES
               COMPUTE WRK-RESULTADO = WRK-NUMERO * WRK-CONTADOR
               DISPLAY WRK-NUMERO '*' WRK-CONTADOR '=' WRK-RESULTADO
               ADD 1 TO WRK-CONTADOR

           END-PERFORM.

       0300-FINALIZAR.


       END PROGRAM PROGCOB08.
