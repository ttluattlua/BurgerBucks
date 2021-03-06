--BB_MENU

SELECT * FROM BB_MENU;

DROP TABLE BB_MENU
CASCADE CONSTRAINT;

DROP SEQUENCE BB_MENU_SEQ;

CREATE TABLE BB_MENU(
	SEQ NUMBER(10) PRIMARY KEY,
	BURGER NUMBER(10) NOT NULL,
	SIDE NUMBER(10) NOT NULL,
	BEVERAGE NUMBER(10) NOT NULL,
	NAME VARCHAR2(100) NOT NULL,
	CREATOR NUMBER(20) NOT NULL,
	PRICE NUMBER(20) NOT NULL,
	CAL NUMBER(20) NOT NULL,
	DEL NUMBER(1) NOT NULL
);

CREATE SEQUENCE BB_MENU_SEQ
START WITH 1
INCREMENT BY 1;

ALTER TABLE BB_MENU
ADD CONSTRAINT FK_BB_BURGER_MENU_SEQ FOREIGN KEY(BURGER)
REFERENCES BB_BURGER(SEQ);

ALTER TABLE BB_MENU
ADD CONSTRAINT FK_BB_SIDE_MENU_SEQ FOREIGN KEY(SIDE)
REFERENCES BB_SIDE(SEQ);

ALTER TABLE BB_MENU
ADD CONSTRAINT FK_BB_BEVERAGE_MENU_SEQ FOREIGN KEY(BEVERAGE)
REFERENCES BB_BEVERAGE(SEQ);

INSERT INTO BB_MENU
VALUES (BB_MENU_SEQ.NEXTVAL, 1, 1, 1, '치킨버거', 0, 5500, 5000, 0);
