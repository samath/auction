-- Create databases

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
	description		CLOB
);

CREATE TABLE Category(
	id				int NOT NULL,
	category		varchar(255) NOT NULL
);

CREATE TABLE User(
	id				int PRIMARY KEY,
	rating			int,
	location		varchar(255),
	country			varchar(255)
);

CREATE TABLE Bid(
	item_id			int NOT NULL,
	user_id			int NOT NULL,
	time			float NOT NULL,
	amount			float NOT NULL,
	include_loc		int NOT NULL,
	CONSTRAINT bid_pk PRIMARY KEY (item_id, user_id, time)
);

	