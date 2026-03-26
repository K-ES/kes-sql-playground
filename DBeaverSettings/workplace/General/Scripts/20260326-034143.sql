-- Новый скрипт в postgres.
-- Дата: 26 мар. 2026 г.
-- Время: 03:41:43
/*
Используя таблицу Product, определить количество производителей, выпускающих по одной модели.
*/

select count(1) from (
select maker
from product o  
group by maker  
having count(1) = 1
) t
