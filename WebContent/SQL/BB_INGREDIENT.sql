--BB_INGREDIENT

SELECT * FROM BB_INGREDIENT;

DROP TABLE BB_INGREDIENT
CASCADE CONSTRAINT;

DROP SEQUENCE BB_INGREDIENT_SEQ;

CREATE TABLE BB_INGREDIENT(
	SEQ NUMBER(10) PRIMARY KEY,
	NAME VARCHAR2(100) NOT NULL,
	TYPES NUMBER(1) NOT NULL,
	PRICE NUMBER(20) NOT NULL,
	CAL NUMBER(20) NOT NULL,
	DEL NUMBER(1) NOT NULL
);

CREATE SEQUENCE BB_INGREDIENT_SEQ
START WITH 1
INCREMENT BY 1;








