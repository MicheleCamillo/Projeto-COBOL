      ******************************************************************
      * Author:Michele Camillo
      * Date:20200522
      * Purpose: Variáveis tipo tabela - occurs
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB011.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
               DECIMAL-POINT IS COMMA.

       DATA DIVISION.

       FILE SECTION.

       WORKING-STORAGE SECTION.
        01 WRK-MESES.
           02 WRK-MES PIC X(09) OCCURS 12 TIMES.

        01 WRK-DATA.
           02 WRK-ANO-D PIC 9(04) VALUE ZEROS.
           02 WRK-MES-D PIC 9(02) VALUE ZEROS.
           02 WRK-DIA-D PIC 9(02) VALUE ZEROS.

       PROCEDURE DIVISION.
           0001-PRINCIPAL.
               PERFORM 0100-INICIALIZAR.
               PERFORM 0200-PROCESSAR.
               PERFORM 0300-FINALIZAR.
               STOP RUN.
           0100-INICIALIZAR.
            ACCEPT WRK-DATA    FROM DATE YYYYMMDD.
           0200-PROCESSAR.
               PERFORM 0400-MONTAMES.
           0300-FINALIZAR.
            DISPLAY 'DATA: ' WRK-DIA-D 'DE ' WRK-MES(WRK-MES-D)
            'DE ' WRK-ANO-D.

           0400-MONTAMES.
              MOVE 'JANEIRO'   TO WRK-MES(01).
              MOVE 'FEVEREIRO' TO WRK-MES(02).
              MOVE 'MARCO'     TO WRK-MES(03).
              MOVE 'ABRIL'     TO WRK-MES(04).
              MOVE 'MAIO'      TO WRK-MES(05).
              MOVE 'JUNHO'     TO WRK-MES(06).
              MOVE 'JULHO'     TO WRK-MES(07).
              MOVE 'AGOSTO'    TO WRK-MES(08).
              MOVE 'SETEMBO'   TO WRK-MES(09).
              MOVE 'OUTUBRO'   TO WRK-MES(10).
              MOVE 'NOVEMBRO'  TO WRK-MES(11).
              MOVE 'DEZEMBRO'  TO WRK-MES(12).

       END PROGRAM PROGCOB011.
