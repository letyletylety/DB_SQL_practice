select *
from patients
where conditions like '% DIAB1%'
    or conditions like 'DIAB1%';
-- select * from patients where conditions regexp '\\bDIAB1';