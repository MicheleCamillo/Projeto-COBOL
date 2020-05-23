      ******************************************************************
      * Author: Michele Camillo
      * Date:20200523
      * Purpose: IF-ELSE
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB03.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA1 PIC 9(02) VALUE ZEROS.
       77 WRK-NOTA2 PIC 9(02) VALUE ZEROS.
       77 WRK-MEDIA PIC 9(02)V9 VALUE ZEROS.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           ACCEPT WRK-NOTA1.
           ACCEPT WRK-NOTA2.
           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.

           IF WRK-MEDIA >= 6
               DISPLAY 'APROVADO'
           ELSE
               IF WRK-MEDIA >=2
                    DISPLAY 'RECUPERACAO'
               ELSE
                   DISPLAY 'REPROVADO'
               END-IF
           END-IF.

            DISPLAY 'MEDIA ' WRK-MEDIA.

            STOP RUN.
       END PROGRAM PROGCOB03.
