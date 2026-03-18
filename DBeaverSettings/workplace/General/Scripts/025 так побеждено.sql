-- 025 Найдите производителей принтеров
--, которые производят ПК с наименьшим объемом RAM 
-- и с самым быстрым процессором среди всех ПК, имеющих наименьший объем RAM. 
--Вывести: Maker

-- пк с наименьшим объемом RAM
select distinct maker from  product p
where p.model in (
select model
from (
select model, ram, speed,
       min(ram) over() as min_ram,
       max(speed) over(partition by ram) as max_speed
from pc
) t1
where ram = min_ram
and speed = max_speed
)
and p.type = 'PC'
intersect 
select distinct maker from product p where p.type = 'Printer'