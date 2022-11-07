CREATE DATABASE fashionShop;


CREATE TABLE memberInfo

(

    id VARCHAR(30) ,
    pw VARCHAR(30),
    name VARCHAR(30),
    date VARCHAR(30),
    gender VARCHAR(30),
    tel VARCHAR(30),
    styleList VARCHAR(30)


);

CREATE TABLE boardInfo

(

    title VARCHAR(30),
    category VARCHAR(30) ,
    name VARCHAR(30),
    date VARCHAR(30),
    content VARCHAR(300)


);
ALTER TABLE boardInfo
MODIFY COLUMN content VARCHAR(3000);


DELETE FROM memberInfo;

WHERE Name = 'soo';