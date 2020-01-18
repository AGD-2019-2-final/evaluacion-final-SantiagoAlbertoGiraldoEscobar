-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` compute la cantidad de registros por letra. 
-- Escriba el resultado a la carpeta `output` del directorio actual.
--
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
u = LOAD 'data.tsv' using PigStorage('\t') AS (letra:chararray, fecha:chararray,id:int);
x = FOREACH u GENERATE letra;
y = GROUP x BY $0;
z = FOREACH y GENERATE group, COUNT(x);
STORE z INTO './output' using PigStorage('\t');