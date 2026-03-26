-- Новый скрипт в postgres.
-- Дата: 26 мар. 2026 г.
-- Время: 03:26:58
/*
Найдите средний размер диска ПК каждого из тех производителей, которые выпускают и принтеры. Вывести: maker, средний размер HD.
*/

select r.maker, avg(p.hd) from product r
join pc p on p.model = r.model
where maker in 
(
 select maker 
   from product r
  where r."type"   = 'Printer'
   )
group by r.maker
