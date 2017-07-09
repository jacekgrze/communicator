CREATE TABLE User (
	id int auto_increment,
    email varchar(255) unique,
    username varchar(255),
    hashed_password varchar(255),
    PRIMARY KEY(id)
);


CREATE TABLE Message (
	id int auto_increment,
    sender_id int NOT NULL,
    receiver_id int NOT NULL,
    content text,
    primary key(id),
    foreign key(sender_id) references User(id),
    foreign key(receiver_id) references User(id)
);