      ******************************************************************
      * Author:Michele Camillo
      * Date:20200522
      * Purpose:Variavel 88 - Lógica
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB06.
       ENVIRONMENT DIVISION.
        CONFIGURATION SECTION.
           SPECIAL-NAMES.
               DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WRK-USUARIO   PIC X(20)       VALUE SPACES.
       77 WRK-NIVEL     PIC 9(04)V99    VALUE ZEROS.
           88 ADM      VALUE 01.
           88 USER     VALUE 02.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           DISPLAY 'USUARIO:'
           ACCEPT WRK-USUARIO.
           DISPLAY 'NIVEL:'
           ACCEPT WRK-NIVEL.

           IF ADM
               DISPLAY 'NIVEL - ADMINISTRADOR'
           ELSE
               IF USER
                   DISPLAY 'NIVEL-USUARIO'
               ELSE
                   DISPLAY 'USUARIO NAO AUTORIZADO'
               END-IF
           END-IF.

            STOP RUN.
       END PROGRAM PROGCOB06.
