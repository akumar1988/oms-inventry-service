DROP TABLE IF EXISTS PRDCT;
DROP TABLE IF EXISTS BRND;
DROP TABLE IF EXISTS CLR;
DROP TABLE IF EXISTS PRDCT_CTGR;
  
CREATE TABLE BRND (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  NAME VARCHAR(250) NOT NULL
);

  
CREATE TABLE CLR (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  NAME VARCHAR(250) NOT NULL,
  CODE VARCHAR(5) NOT NULL
);

  
CREATE TABLE PRDCT_CTGR (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  NAME VARCHAR(250) NOT NULL
);

  
CREATE TABLE PRDCT(
  id INT AUTO_INCREMENT  PRIMARY KEY,
  NAME VARCHAR(250) NOT NULL,
  QUANTITY INT NOT NULL,
  SIZE VARCHAR(5) NOT NULL,
  PRICE INT NOT NULL,
  BRND_ID INT NOT NULL,
  foreign key (BRND_ID) references BRND(ID),
  CLR_ID INT NOT NULL,
  foreign key (CLR_ID) references CLR(ID),
  PRDCT_CTGR_ID INT NOT NULL,
  foreign key (PRDCT_CTGR_ID) references PRDCT_CTGR(ID)
);