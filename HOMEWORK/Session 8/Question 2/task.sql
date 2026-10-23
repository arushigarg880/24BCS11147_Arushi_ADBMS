-- Tesla: unfinished parts
SELECT part, assembly_step
FROM parts
WHERE finish_date IS NULL;
