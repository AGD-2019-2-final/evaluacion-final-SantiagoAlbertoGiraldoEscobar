-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para responder la pregunta use el archivo `data.csv`.
-- 
-- Escriba el código equivalente a la siguiente consulta SQL.
-- 
--    SELECT 
--        firstname, 
--        LOCATE('ia', firstname) 
--    FROM 
--        u;
-- 
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
u = LOAD 'data.csv' USING PigStorage(',') 
    AS (id:int, 
        firstname:CHARARRAY, 
        surname:CHARARRAY, 
        birthday:CHARARRAY, 
        color:CHARARRAY, 
        quantity:INT);
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
u = LOAD 'data.csv' USING PigStorage(',') AS (id:int, firstname:CHARARRAY, surname:CHARARRAY, birthday:CHARARRAY, color:CHARARRAY,quantity:INT);
x = FOREACH u GENERATE firstname as name;
y = FOREACH x GENERATE INDEXOF(name, 'ia',1);
STORE y INTO './output' using PigStorage(',');