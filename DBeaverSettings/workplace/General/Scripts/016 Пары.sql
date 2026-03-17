-- 016 Найдите пары моделей PC, имеющих одинаковые скорость и RAM. 
-- В результате каждая пара указывается только один раз, т.е. (i,j), но не (j,i), 
-- Порядок вывода: модель с большим номером, модель с меньшим номером, скорость и RAM.


select distinct p1.model , p2.model , p1.speed , p1.ram  from pc p1
join pc p2 on p2.speed = p1.speed and p2.ram  = p1.ram 
and p1.model > p2.model 
