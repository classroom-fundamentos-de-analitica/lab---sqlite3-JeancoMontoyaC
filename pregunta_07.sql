-- 
--  Sea el siguiente conjunto de tablas en una base de datos:
-- 
--    tbl0
--    ------------------------
--    K0  CHAR(1)
--    c01 INT
--    c02 INT
--    c03 CHAR(4)
--    c04 FLOAT
--        
--    tbl1
--    ------------------------
--    K0  CHAR(1)
--    K1  INT
--    c12 FLOAT
--    c13 INT
--    c14 DATE
--    c15 FLOAT
--    c16 CHAR(4)
--
--    tbl2
--    ------------------------
--    K1  INT,
--    c21 FLOAT,
--    c22 INT,
--    c23 DATE,
--    c24 FLOAT,
--    c25 CHAR(5)
--
--  Escriba una consulta que retorne todos los campos de 
--  la tabla tbl1 ordenada por fecha (c14) para los 
--  registros con K0 diferente a A y B y c13 diferente 
--  de 200 y 900
--
--  Rta/
--     K0  K1     c12  c13         c14   c15   c16
--  0   E  14  832.44  800  2016-11-22  0.39  EGFD
--  1   E   8  302.86  700  2016-12-22  0.14  DFCC
--  ...
--  11  C  19  570.43  400  2019-04-12  0.48  FBEE
--  12  C  24  482.32  300  2019-05-03  0.11  CCCE
-- 
--  >>> Escriba su codigo a partir de este punto <<<
--
selct *
from tbl1 
where K0 not in ('A','B') and c13 not in (200,900)
order by c14