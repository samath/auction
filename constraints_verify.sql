SELECT 1, count(*) FROM Item GROUP BY id HAVING count(*) > 1;
SELECT distinct(2) FROM Category WHERE id NOT IN (SELECT id FROM Item);
SELECT distinct(3) FROM Bid WHERE item_id NOT IN (SELECT id FROM Item);
SELECT distinct(4) FROM Item WHERE current_bid < first_bid;
SELECT distinct(5) FROM Item WHERE current_bid != first_bid AND current_bid !=
	(SELECT MAX(amount) FROM Bid WHERE item_id = id);
SELECT distinct(6) FROM Bid a, Bid b WHERE a.item_id = b.item_id AND
	a.amount > b.amount AND a.time < b.time;
SELECT 7, number_of_bids FROM Item WHERE number_of_bids !=
	(SELECT COUNT(*) FROM Bid WHERE id = item_id);
SELECT distinct(8) FROM Bid WHERE time <
	(SELECT start_time FROM Item WHERE id = item_id);
SELECT distinct(9) FROM BID WHERE time > 
	(SELECT end_time FROM Item WHERE id = item_id);
SELECT 10, count(*) FROM Category GROUP BY id, category HAVING count(*) > 1;
SELECT 11, count(*) FROM User GROUP BY id HAVING count(*) > 1;
SELECT distinct(12) FROM Bid WHERE user_id NOT IN (SELECT id FROM User);
SELECT distinct(13) FROM Item WHERE seller_id NOT IN (SELECT id FROM User);
SELECT 14, count(*) FROM Bid GROUP BY item_id, time HAVING count(*) > 1;