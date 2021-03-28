data = LOAD '/user/rishabhtiwari2048gmail/pig/airlines.csv' USING PigStorage(',') AS (IATA:chararray, NAME:chararray);
name_data = FOREACH data GENERATE NAME;
final_output = FOREACH name_data GENERATE NAME, UPPER(NAME);
STORE final_output INTO '/user/rishabhtiwari2048gmail/pig/output/output.txt'