Item (id, name, current_bid, first_bid, number_of_bids,
          buy_price, start_time, end_time, seller_id, description)
	Primary Key: id
	
Category (id, category)
	[no key]
		
User (id, rating, location, country)
	Primary Key: id
		
Bid (item_id, user_id, time, amount, include_loc)
	Primary Key: (item_id, user_id, time)
	
	
There are no functional or multivalued dependencies that hold over one 
of these four relations other than those on the keys.  They are currently 
in BCNF and 4NF.
