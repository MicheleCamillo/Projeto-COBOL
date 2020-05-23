      ******************************************************************
      * Author: Michele Camillo
      * Date:20200523
      * Purpose: Perform Until
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB010.
       DATA DIVISION.
       FILE SECTION.

       WORKING-STORAGE SECTION.
           COPY 'book.cob'.

       PROCEDURE DIVISION.
       0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.

           PERFORM 0200-PROCESSAR UNTIL WRK-VENDAS = 0.

           PERFORM 0300-FINALIZAR.

           STOP RUN.

       0100-INICIALIZAR.
             ACCEPT WRK-VENDAS.

       0200-PROCESSAR.
               ADD 1 TO WRK-QTD.
               ADD WRK-VENDAS TO WRK-TOTAL.
               PERFORM 0100-INICIALIZAR.

       0300-FINALIZAR.
               DISPLAY 'TOTAL: ' WRK-TOTAL.
               DISPLAY 'TOTAL: ' WRK-QTD.

       END PROGRAM PROGCOB010.
