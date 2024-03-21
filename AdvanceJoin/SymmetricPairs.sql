select distinct f1.x,f1.y
from (select x,y,row_number() over() as row_num from functions) f1
join (select x,y,row_number() over() as row_num from functions) f2 
on f1.x = f2.y
and f2.x = f1.y
and f1.row_num != f2.row_num
where f1.x <= f1.y
order by f1.x;
