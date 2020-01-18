-- Pregunta
-- ===========================================================================
-- 
-- Ordene el archivo `data.tsv`  por letra y valor (3ra columna).
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
-- 
--  >>> Escriba el codigo del mapper a partir de este punto <<<
-- 
u = LOAD 'data.tsv' using PigStorage('\t') AS (letra:chararray, fecha:chararray,id:int);
y = ORDER u BY letra,id; 
STORE y INTO './output' using PigStorage('\t');

