-- 017 Найдите модели ПК-блокнотов, скорость которых меньше скорости каждого из ПК.

-- Опять не ясно, зачем distinct
select distinct p."type", t.model, speed from laptop t
join product p on p.model  = t.model 
where speed < (select min(speed) from pc)

-- через all
select distinct p."type", t.model, speed from laptop t
join product p on p.model  = t.model 
where speed < all (select p.speed from pc p);