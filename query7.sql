select count(*) from (select distinct category from category c where id in
(select item_id from bid b where b.amount > 100));
