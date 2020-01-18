-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` compute Calcule la cantidad de registros en que 
-- aparece cada letra minúscula en la columna 2.
-- 
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
datos = LOAD 'data.tsv' using PigStorage('\t') AS (columna1:chararray,columna2:chararray,columna3:chararray);
x = FOREACH datos GENERATE FLATTEN(TOKENIZE(columna2,',')) as data;
x = FOREACH x GENERATE REPLACE(data,'([^a-zA-Z\\s]+)','') as data;
y = GROUP x BY $0;
z = FOREACH y GENERATE group, COUNT(x);
STORE z INTO './output' using PigStorage('\t');
