-- 023 Найдите производителей, которые производили бы как ПК
--со скоростью не менее 750 МГц, так и ПК-блокноты со скоростью не менее 750 МГц.
--Вывести: Maker

select maker from product p
join pc c on c.model  = p.model 
where speed >= 750 
intersect 
select maker from product p
join laptop l on l.model  = p.model  
where speed >= 750 
