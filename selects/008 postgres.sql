-- 8 Найдите производителя, выпускающего ПК, но не ПК-блокноты.

-- некорректно, сглючит на NULL
select distinct maker
from Product
where type = 'PC'
  and maker not in (
      select maker from Product where type = 'Laptop'
  );


select maker
from Product
where type = 'PC'
except
select maker
from Product
where type = 'Laptop';