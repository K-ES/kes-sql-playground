--Найдите производителей самых дешевых цветных принтеров. Вывести: maker, price

-- просто в лоб
select distinct pro.maker , t.price  from printer t
join product pro on pro.model = t.model 
where t.color  = 'y'
and t.price = (select min(price) from printer p2 where p2.color  = 'y')
  