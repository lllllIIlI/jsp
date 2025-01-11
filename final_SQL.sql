create database menu; 

use menu;

create table place (
 no int not null,
 name varchar(20) primary key,
 menu varchar(20),
 open int,
 breaktime varchar(10),
 close int,
 distance int,
 phone varchar(20)
);

INSERT INTO place VALUES (4111,'가시버시','막걸리',10,'',22,3,'010-5249-6439');
INSERT INTO place VALUES (2141,'고수찜닭','찜닭',11,'15시~17시',23,15,'032-867-9982');
INSERT INTO place VALUES (4146,'닭살부부','통닭 & 목삼겹',17,NULL,2,10,'032-872-7787');
INSERT INTO place VALUES (2311,'산쪼메','라멘',11,'15시~17시',21,10,'032-876-2584');
INSERT INTO place VALUES (2110,'송부육개장','육개장',10,NULL,22,2,'032-875-2018');
INSERT INTO place VALUES (2111,'알촌','알밥',9,NULL,21,4,'032-868-9399');
INSERT INTO place VALUES (2146,'홍곱창','곱창',17,NULL,24,4,'0507-1359-9304');

CREATE TABLE admin (
  id varchar(20) NOT NULL,
  password varchar(20) DEFAULT NULL,
  PRIMARY KEY (id)
);
INSERT INTO admin VALUES ('123','123');
