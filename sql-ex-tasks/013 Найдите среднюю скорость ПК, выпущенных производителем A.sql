-- Найдите среднюю скорость ПК, выпущенных производителем A.

select avg(t.speed) from pc t
join product p on p.model  = t.model 
where p.maker = 'A'