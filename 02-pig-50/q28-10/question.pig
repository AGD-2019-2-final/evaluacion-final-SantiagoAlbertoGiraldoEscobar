-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para responder la pregunta use el archivo `data.csv`.
-- 
-- Escriba el código equivalente a la siguiente consulta SQL.
-- 
--    SELECT 
--        birthday, 
--        DATE_FORMAT(birthday, "yyyy"),
--        DATE_FORMAT(birthday, "yy"),
--    FROM 
--        persons
--    LIMIT
--        5;
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
x = FOREACH u GENERATE birthday as date;
y = FOREACH x GENERATE CONCAT(SUBSTRING($0,0,4),',',SUBSTRING($0,2,4));
STORE y INTO './output' using PigStorage(',');
