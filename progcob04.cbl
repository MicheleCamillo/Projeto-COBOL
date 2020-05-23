      ******************************************************************
      * Author: Michele Camillo
      * Date:20200523
      * Purpose: EVALUATE
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB04.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA1 PIC 9(02) VALUE ZEROS.
       77 WRK-NOTA2 PIC 9(02) VALUE ZEROS.
       77 WRK-MEDIA PIC 9(02)V9 VALUE ZEROS.
       PROCEDURE DIVISION.
       0001-PRINCIPAL.
               PERFORM 0100-INICIALIZAR.
               IF WRK-NOTA1 > 0 AND WRK-NOTA2 > 2
                   PERFORM 0200-PROCESSAR
               END-IF.
               PERFORM 0300-FINALIZAR.
            STOP RUN.

       0100-INICIALIZAR.
           ACCEPT WRK-NOTA1.
           ACCEPT WRK-NOTA2.
       0200-PROCESSAR.
           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.

           EVALUATE WRK-MEDIA
               WHEN 6 THRU 10
               DISPLAY 'APROVADO'
               WHEN 2 THRU 5
                    DISPLAY 'RECUPERACAO'
               WHEN OTHER
                   DISPLAY 'REPROVADO'
           END-EVALUATE.

       0300-FINALIZAR.
            DISPLAY 'MEDIA ' WRK-MEDIA.

       END PROGRAM PROGCOB04.
