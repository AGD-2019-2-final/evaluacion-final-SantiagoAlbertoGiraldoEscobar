-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para responder la pregunta use el archivo `data.csv`.
-- 
-- Escriba el código equivalente a la siguiente consulta SQL.
-- 
--    SELECT 
--        firstname 
--    FROM 
--        u 
--    WHERE 
--        SUBSTRING(firstname, 0, 1) >= 'm';
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
-- u = LOAD 'data.csv' USING PigStorage(',') AS (id:int, firstname:CHARARRAY, surname:CHARARRAY, birthday:CHARARRAY, color:CHARARRAY,quantity:INT);
-- x = FOREACH u GENERATE firstname as name;
-- y = FOREACH x GENERATE name as name, SIZE(name) as calc;
-- w = ORDER y BY calc DESC, name;
-- STORE w INTO './output' using PigStorage(',');

datos = LOAD 'data.csv' USING PigStorage(',') 
    AS (id:int, 
        firstname:CHARARRAY, 
        surname:CHARARRAY, 
        birthday:CHARARRAY, 
        color:CHARARRAY, 
        quantity:INT);

datos = FOREACH datos GENERATE firstname as firstname;
datos1 = FILTER datos BY (firstname matches '[M-Z].*');
STORE datos1 INTO './output' using PigStorage(',');