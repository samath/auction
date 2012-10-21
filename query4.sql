select id from item where current_bid = (select max(current_bid) from item);
