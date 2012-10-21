select count(*) from (select distinct I.seller_id from item I, user U where I.seller_id = U.id AND rating > 1000);
