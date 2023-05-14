 CREATE DATABASE dhonhanoi;
 USE DHonHaNoi;
 -- drop database dhonhanoi;
 CREATE TABLE truongDH (
MaTruong varchar(10) NOT NULL unique PRIMARY KEY,
TenTruong VARCHAR(224) NOT NULL,
linkaccess VARCHAR(50)
);

-- sắp xếp theo mã trường
select * from truongDH
order by MaTruong ASC;

CREATE TABLE Users (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255),
  email VARCHAR(50) not null unique,
  CONSTRAINT email_must_end_with_gmail CHECK (email LIKE '%@gmail.com'),
  password varchar(15) not null,
  CONSTRAINT password_must_contain_special_char CHECK (password REGEXP '[@$!%*?&]'),
  CONSTRAINT password_must_contain_digit CHECK (password REGEXP '[0-9]'),
  CONSTRAINT password_must_contain_uppercase CHECK (password REGEXP '[A-Z]'),
  CONSTRAINT password_must_contain_lowercase CHECK (password REGEXP '[a-z]'), 
  PRIMARY KEY (id)
);


create table images (
id int not null auto_increment,
name varchar(255) not null,
image longblob not null,
primary key(id)
);
INSERT INTO image (name, image) VALUES ('BKA', LOAD_FILE('C:\Lib\practice\html\project1\static\img\pics\BKA.png'));
INSERT INTO image (name, image) VALUES ('BVH', LOAD_FILE('C:\Lib\practice\html\project1\static\img\pics\BVH.png'));
INSERT INTO image (name, image) VALUES ('C01', LOAD_FILE('C:\Lib\practice\html\project1\static\img\pics\C01.png'));
INSERT INTO image (name, image) VALUES ('CCM', LOAD_FILE('C:\Lib\practice\html\project1\static\img\pics\CCM.jpg'));
INSERT INTO image (name, image) VALUES ('DCN', LOAD_FILE('C:\Lib\practice\html\project1\static\img\pics\DCN.png'));
INSERT INTO image (name, image) VALUES ('DCQ', LOAD_FILE('C:\Lib\practice\html\project1\static\img\pics\DCQ.JPG'));



