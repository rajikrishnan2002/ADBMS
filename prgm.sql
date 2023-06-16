CREATE TABLE borrow (loanno VARCHAR(8)CHECK(loanno LIKE 'l%'),cname VARCHAR(15)REFERENCES customers(cname),bname VARCHAR(20)REFERENCES branch(bname),amount FLOAT(8)CHECK(amount>0));
CREATE TABLE deposit (actno VARCHAR(5)CHECK(actno LIKE 'd'),cname VARCHAR(15)REFERENCES customers(cname),bname VARCHAR(20)REFERENCES branch(bname),amount FLOAT(8)CHECK(amount>0),adate DATE);
CREATE TABLE customers(cname VARCHAR(15)PRIMARY KEY,city VARCHAR(20));
INSERT INTO customers VALUES('anil','culcutta');
INSERT INTO customers VALUES('sunil','delhi');
INSERT INTO customers VALUES('pramod','nagpur');
INSERT INTO branch VALUES('vrce','nagpur');
INSERT INTO branch VALUES('ajni','nagpur');
INSERT INTO branch VALUES('chandni','delhi');
INSERT INTO deposit VALUES('d100','anil','vrce',1000.00);
INSERT INTO deposit VALUES('d101','sunil','anjni',500.00);
INSERT INTO deposit VALUES('d103','pramod','chandni',2000.00);
INSERT INTO borrow VALUES('l201','anil','vrce',1000.00);
DROP TABLE customer
INSERT INTO borrow VALUES('l311','sunli','anjni',500.00);
INSERT INTO borrow VALUES('l371','pramod','chandni',2000.00);