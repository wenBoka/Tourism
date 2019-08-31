USE xz;
CREATE TABLE xz_login(
    id INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(50),
    upwd VARCHAR(32)
);
INSERT INTO xz_login VALUES 
(null,'ken',md5('123')),
(null,'gir',md5('456'));

-- xz_laptop img_url VARCHAR(255) 
ALTER TABLE xz_laptop ADD img_url VARCHAR(255);
UPDATE xz_laptop SET img_url='01.jpg';

create table xz_cart(
    id int primary key auto_increment,
    lid int,
    uid int,
    count int,
    lname varchar(255),
    price decimal(10,2)
);

CREATE TABLE racoon_details(
    id INT PRIMARY KEY AUTO_INCREMENT,
    rid,INT,
    retitle VARCHAR(100),
    resubtit VARCHAR(300),
    reprice INT,
    recountry VARCHAR(15),
    restock INT,
    lbid INT,
    thid INT,
);




