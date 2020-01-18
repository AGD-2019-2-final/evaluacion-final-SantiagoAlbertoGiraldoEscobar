-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` genere una tabla que contenga la primera columna,
-- la cantidad de elementos en la columna 2 y la cantidad de elementos en la 
-- columna 3 separados por coma. La tabla debe estar ordenada por las 
-- columnas 1, 2 y 3.
-- 
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
REGISTER 'nudf.py' USING jython AS nudf;

u = LOAD 'data.tsv' using PigStorage('\t') AS (columna1:chararray,columna2:chararray,columna3:chararray);
x = FOREACH u GENERATE  columna1, nudf.count_elements(columna2) as data1, nudf.count_elements(columna3) as data2;
y = ORDER x BY $0,$1,$2;
STORE y INTO './output' using PigStorage(',');
