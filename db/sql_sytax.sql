CREATE TABLE user (
    id INT NOT NULL auto_increment,
    phone_number char(15) NOT NULL UNIQUE,
    first_name varchar(100) NOT NULL,
    last_name varchar(100) NOT NULL,
    dob date,
    gender char(1),
    email varchar(100) NOT NULL UNIQUE,
    PRIMARY KEY (id)
);

INSERT INTO user (phone_number, first_name, last_name, email)
VALUES ('62812345678', 'rahma', 'putri','rahmaputri13@gmail.com');