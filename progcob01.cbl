      ******************************************************************
      * Author:Michele Camillo
      * Date:20200522
      * Purpose: Learning
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB01.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
               DECIMAL-POINT IS COMMA.

       DATA DIVISION.

       FILE SECTION.

       WORKING-STORAGE SECTION.
      * Seção de variáveis.
      * Variávies únicas, locais e públicas
      * PIC A(tamanho) value spaces: alfabético
      * PIC X(tamanho) value spaces: alfanumerico
      * PIC 9(tamanho) value zeros: numérico
        77 WRK-NOME        PIC X(20)       VALUE SPACES.
        77 WRK-SALARIO     PIC 9(06)V99    VALUE ZEROS.
      * A clausula zzz suprime os 0, caso eles existam
        77 WRK-SALARIO-ED  PIC $ZZZ.ZZ9,99 VALUE ZEROS.

      * Podemos ter também, variáveis estruturadas
      * Nao precisam ter o tipo definido e podem ir ate o nivel 49
      * Com ela, é possível fazer um "split" da variavel pai
        01 WRK-DATA.
           02 WRK-ANO PIC 9(04) VALUE ZEROS.
           02 WRK-MES PIC 9(02) VALUE ZEROS.
           02 WRK-DIA PIC 9(02) VALUE ZEROS.


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            ACCEPT WRK-NOME    FROM CONSOLE.
            ACCEPT WRK-DATA    FROM DATE YYYYMMDD.
            ACCEPT WRK-SALARIO FROM CONSOLE.

            DISPLAY 'NOME: ' WRK-NOME(1:10).
            DISPLAY 'DATA: ' WRK-DIA ' DE ' WRK-MES ' DE ' WRK-ANO.
            MOVE WRK-SALARIO TO WRK-SALARIO-ED.
            DISPLAY 'SALARIO: ' WRK-SALARIO-ED.


            STOP RUN.
       END PROGRAM PROGCOB01.
