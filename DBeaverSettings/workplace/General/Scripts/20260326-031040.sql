-- Новый скрипт в postgres.
-- Дата: 26 мар. 2026 г.
-- Время: 03:10:40
/*
Найдите среднюю цену ПК и ноутбуков, выпущенных производителем A (латинская буква). Вывести: одна общая средняя цена.
*/

select avg(price) from (
SELECT price FROM product t
join laptop l on l.model = t.model
where t.maker = 'A'
union all
SELECT price FROM product t
join pc p on p.model = t.model
where t.maker = 'A'
) t
