set @num := 21;
SELECT REPEAT('* ', @num := @num-1)  As Pattern
FROM information_schema.tables
LIMIT 20;