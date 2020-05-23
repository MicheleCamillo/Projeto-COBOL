      ******************************************************************
      * Author:Michele Camillo
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
         IDENTIFICATION DIVISION.
         PROGRAM-ID. PROGCOB02.
         DATA DIVISION.
         FILE SECTION.
         WORKING-STORAGE SECTION.
           77 WRK-NUM1        PIC 9(02)       VALUE ZEROS.
           77 WRK-NUM2        PIC 9(02)       VALUE ZEROS.
           77 WRK-RESUL       PIC S9(03)       VALUE ZEROS.
           77 WRK-RESTO       PIC 9(03)       VALUE ZEROS.
         PROCEDURE DIVISION.
         MAIN-PROCEDURE.
           ACCEPT WRK-NUM1 FROM CONSOLE.
           ACCEPT WRK-NUM2 FROM CONSOLE.

           ADD WRK-NUM1 WRK-NUM2 TO WRK-RESUL.
           DISPLAY 'SOMA = ' WRK-RESUL.

           SUBTRACT WRK-NUM1 FROM WRK-NUM2 GIVING WRK-RESUL.
           DISPLAY 'SUBTRACAO = ' WRK-RESUL.

           DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL
           REMAINDER WRK-RESTO.
           DISPLAY 'DIVISAO = ' WRK-RESUL.
           DISPLAY 'RESTO = ' WRK-RESTO.

           MULTIPLY WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL.
           DISPLAY 'MULTIPLICACAO = ' WRK-RESUL.

      *Expressao
           COMPUTE WRK-RESUL = (WRK-NUM1 + WRK-NUM2) / 2.
           DISPLAY 'MEDIA = ' WRK-RESUL.
           STOP RUN.
           END PROGRAM PROGCOB02.
