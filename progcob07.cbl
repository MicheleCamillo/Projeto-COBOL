      ******************************************************************
      * Author:Michele Camillo
      * Date:20200522
      * Purpose: AND, OR
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB07.
       ENVIRONMENT DIVISION.
        CONFIGURATION SECTION.
           SPECIAL-NAMES.
               DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WRK-LARGURA         PIC 9(03)V99    VALUE ZEROS.
       77 WRK-COMPRIMENTO     PIC 9(03)V99    VALUE ZEROS.
       77 WRK-AREA            PIC 9(03)V99    VALUE ZEROS.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           DISPLAY 'LARGURA:'
           ACCEPT WRK-LARGURA.
           DISPLAY 'COMPRIMENTO:'
           ACCEPT WRK-COMPRIMENTO.


           IF WRK-LARGURA > 0 AND WRK-COMPRIMENTO > 0
               COMPUTE WRK-AREA = (WRK-LARGURA * WRK-COMPRIMENTO)
               DISPLAY 'AREA: ' WRK-AREA
           ELSE
               DISPLAY 'FALTA INFORMAR VALOR'
           END-IF

            STOP RUN.
       END PROGRAM PROGCOB07.
