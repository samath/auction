select count(*) from (select id, count(*) from category group by id having count(*) = 4);
