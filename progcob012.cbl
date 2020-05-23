      ******************************************************************
      * Author:Michele Camillo
      * Date:20200522
      * Purpose: Variáveis tipo tabela - redefines
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB012.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
               DECIMAL-POINT IS COMMA.

       DATA DIVISION.

       FILE SECTION.

       WORKING-STORAGE SECTION.
        01 WRK-MESES-EXTENSO.
           02 FILLER PIC X(03) VALUE 'JAN'.
           02 FILLER PIC X(03) VALUE 'FEV'.
           02 FILLER PIC X(03) VALUE 'MAR'.
           02 FILLER PIC X(03) VALUE 'ABR'.
           02 FILLER PIC X(03) VALUE 'MAI'.
           02 FILLER PIC X(03) VALUE 'JUN'.
           02 FILLER PIC X(03) VALUE 'JUL'.
           02 FILLER PIC X(03) VALUE 'AGO'.
           02 FILLER PIC X(03) VALUE 'SET'.
           02 FILLER PIC X(03) VALUE 'OUT'.
           02 FILLER PIC X(03) VALUE 'NOV'.
           02 FILLER PIC X(03) VALUE 'DEZ'.

        01 WRK-MESES REDEFINES WRK-MESES-EXTENSO.
           02 WRK-MES PIC X(03) OCCURS 12 TIMES.

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
           0300-FINALIZAR.
            DISPLAY 'DATA: ' WRK-DIA-D 'DE ' WRK-MES(WRK-MES-D)
            'DE ' WRK-ANO-D.

       END PROGRAM PROGCOB012.
