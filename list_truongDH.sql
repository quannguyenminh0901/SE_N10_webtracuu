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
order by TenTruong ASC;

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




