-- 014 Найдите класс, имя и страну для кораблей из таблицы Ships, имеющих не менее 10 орудий.

select t."class" , t."name" , c.country  from ships t
join classes  c on c."class" = t."class" 
where c.numguns >= 10 
