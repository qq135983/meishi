SET NAMES UTF8;
DROP DATABASE IF EXISTS meishi;
CREATE DATABASE meishi CHARSET=UTF8;
USE meishi;
CREATE TABLE ms_main(
    did INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(64),
    price FLOAT(6,2),
    img_sm VARCHAR(64),
    img_lg VARCHAR(64),
    detail VARCHAR(2048),
    material VARCHAR(2048)
);
INSERT INTO ms_main VALUES
(NULL,'美味的马卡龙蛋糕','12.00','tp1.jpg','tp1.jpg','美味的马卡龙蛋糕','不知道哦！真不知道哦！'),
(NULL,'健康养生果','12.00','tp2.jpg','tp2.jpg','健康养生果','不知道哦！真不知道哦！'),
(NULL,'甜心小蛋糕','12.00','tp3.jpg','tp3.jpg','甜蜜到心间','不知道哦！真不知道哦！'),
(NULL,'甜心小蛋糕','12.00','tp4.jpg','tp4.jpg','甜蜜到心间','不知道哦！真不知道哦！'),
(NULL,'甜心小蛋糕','12.00','tp5.jpg','tp5.jpg','甜蜜到心间','不知道哦！真不知道哦！'),
(NULL,'甜心小蛋糕','12.00','tp6.jpg','tp6.jpg','甜蜜到心间','不知道哦！真不知道哦！'),
(NULL,'甜心小蛋糕','12.00','ms01.jpg','ms01.jpg','甜蜜到心间','不知道哦！真不知道哦！'),
(NULL,'甜心小蛋糕','12.00','ms02.jpg','ms02.jpg','甜蜜到心间','不知道哦！真不知道哦！'),
(NULL,'甜心小蛋糕','12.00','ms03.jpg','ms03.jpg','甜蜜到心间','不知道哦！真不知道哦！'),
(NULL,'甜心小蛋糕','12.00','ms04.jpg','ms04.jpg','甜蜜到心间','不知道哦！真不知道哦！'),
(NULL,'甜心小蛋糕','12.00','ms05.jpg','ms05.jpg','甜蜜到心间','不知道哦！真不知道哦！'),
(NULL,'甜心小蛋糕','12.00','ms06.jpg','ms06.jpg','甜蜜到心间','不知道哦！真不知道哦！'),
(NULL,'甜心小蛋糕','12.00','ms07.jpg','ms07.jpg','甜蜜到心间','不知道哦！真不知道哦！'),
(NULL,'甜心小蛋糕','12.00','ms08.jpg','ms08.jpg','甜蜜到心间','不知道哦！真不知道哦！'),
(NULL,'甜心小蛋糕','12.00','ms09.jpg','ms09.jpg','甜蜜到心间','不知道哦！真不知道哦！'),
(NULL,'甜心小蛋糕','12.00','ms10.jpg','ms10.jpg','甜蜜到心间','不知道哦！真不知道哦！'),
(NULL,'甜心小蛋糕','12.00','ms11.jpg','ms11.jpg','甜蜜到心间','不知道哦！真不知道哦！'),
(NULL,'甜心小蛋糕','12.00','ms12.jpg','ms12.jpg','甜蜜到心间','不知道哦！真不知道哦！'),
(NULL,'甜心小蛋糕','12.00','ms13.jpg','ms13.jpg','甜蜜到心间','不知道哦！真不知道哦！'),
(NULL,'甜心小蛋糕','12.00','ms14.jpg','ms14.jpg','甜蜜到心间','不知道哦！真不知道哦！'),
(NULL,'甜心小蛋糕','12.00','ms15.jpg','ms15.jpg','甜蜜到心间','不知道哦！真不知道哦！'),
(NULL,'甜心小蛋糕','12.00','ms16.jpg','ms16.jpg','甜蜜到心间','不知道哦！真不知道哦！'),
(NULL,'甜心小蛋糕','12.00','ms17.jpg','ms17.jpg','甜蜜到心间','不知道哦！真不知道哦！'),
(NULL,'甜心小蛋糕','12.00','ms18.jpg','ms18.jpg','甜蜜到心间','不知道哦！真不知道哦！');

CREATE TABLE kf_order(
    oid INT PRIMARY KEY AUTO_INCREMENT,
    phone VARCHAR(16),
    user_name VARCHAR(16),
    sex INT,    /*1:男  2:女*/
    order_time LONG,
    addr VARCHAR(256),
    did INT
);
INSERT INTO kf_order(oid, phone,user_name,sex,order_time,addr,did) VALUES
(NULL,'13501234567','婷婷',2,1445154859209,'中鼎B座',3),
(NULL,'13501234567','婷婷',2,1445254959209,'中鼎B座',2),
(NULL,'13501234567','婷婷',2,1445354959209,'中鼎B座',5);