-- Pregunta
-- ===========================================================================
-- 
-- Obtenga los cinco (5) valores más pequeños de la 3ra columna.
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
u = LOAD 'data.tsv' using PigStorage('\t') AS (letra:chararray, fecha:chararray,id:int);
x = FOREACH u GENERATE id;
y = ORDER x BY $0;
z = LIMIT y 5; 
STORE z INTO './output' using PigStorage('\t');