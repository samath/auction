select count(*) from (select distinct i.seller_id from item i, bid b where i.seller_id = b.user_id);
