DROP TABLE IF EXISTS POSITIONS;
DROP TABLE IF EXISTS PRODUCTS;
DROP TABLE IF EXISTS USERS;

CREATE TABLE POSITIONS (
  ID INT PRIMARY KEY,
  NAME VARCHAR(100) NOT NULL
);

CREATE TABLE PRODUCTS (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  NAME VARCHAR(100) NOT NULL,
  STOCK BIGINT NOT NULL,
  REGISTRATION_DATE DATE NOT NULL,
  EDITION_DATE DATE,
  REGISTER_USER BIGINT NOT NULL,
  EDITOR_USER BIGINT
);

CREATE TABLE USERS (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  NAME VARCHAR(100) NOT NULL,
  LASTNAME VARCHAR(100) NOT NULL,
  BIRTH_DATE DATE NOT NULL,
  POSITION_ID INT NOT NULL,
  JOINING_DATE DATE NOT NULL,
  FOREIGN KEY (POSITION_ID) REFERENCES POSITIONS(ID)
);

INSERT INTO POSITIONS (ID, NAME) VALUES
  ('1', 'administrator'),
  ('2', 'adviser'),
  ('3', 'support');

INSERT INTO USERS (NAME, LASTNAME, BIRTH_DATE, POSITION_ID, JOINING_DATE) VALUES
  ('Gabriel', 'Garcia', '1991-11-26', '1', '2019-10-15'),
  ('Mario', 'Mendoza', '1980-06-19', '2', '2012-01-09'),
  ('Santiago', 'Gamboa', '1995-06-29', '3', '2006-12-31');

INSERT INTO PRODUCTS (NAME, STOCK, REGISTRATION_DATE, REGISTER_USER) VALUES
  ('Llanta P265-65R17', '25', '2021-06-28', '1'),
  ('Cruceta Cromada 15', '30', '2021-06-28', '2'),
  ('Kit Carretera Abc', '60', '2021-06-28', '3');

  