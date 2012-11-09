-- Create databases with constraints

CREATE TABLE User(
	id				int PRIMARY KEY,
	rating			int,
	location		varchar(255),
	country			varchar(255)
);

CREATE TABLE Item(
	id 				int PRIMARY KEY,
	name			varchar(255) NOT NULL,
	current_bid 	float NOT NULL,
	first_bid 		float NOT NULL,
	number_of_bids 	int NOT NULL,
	buy_price 		float,
	start_time		float NOT NULL,
	end_time		float NOT NULL,
	seller_id		int NOT NULL,
	description		CLOB,
	FOREIGN KEY(seller_id) REFERENCES User(id),
	CHECK (current_bid >= first_bid)
);

CREATE TABLE Category(
	id				int NOT NULL,
	category		varchar(255) NOT NULL,
	FOREIGN KEY(id) REFERENCES Item(id),
	PRIMARY KEY(id, category)
);

CREATE TABLE Bid(
	item_id			int NOT NULL,
	user_id			int NOT NULL,
	time			float NOT NULL,
	amount			float NOT NULL,
	include_loc		int NOT NULL,
	CONSTRAINT bid_pk PRIMARY KEY (item_id, time),
	FOREIGN KEY(item_id) REFERENCES Item(id),
	FOREIGN KEY(user_id) REFERENCES User(id)
);

CREATE TRIGGER current_bid_trigger
AFTER INSERT ON Bid
BEGIN
UPDATE Item SET current_bid = new.amount,
number_of_bids = number_of_bids + 1
WHERE id = new.item_id;
END;


	