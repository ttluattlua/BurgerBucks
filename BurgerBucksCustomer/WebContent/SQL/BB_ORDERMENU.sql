--BB_ORDERMENU

SELECT * FROM BB_ORDERMENU;

DROP TABLE BB_ORDERMENU
CASCADE CONSTRAINT;

DROP SEQUENCE BB_ORDERMENU_SEQ;

CREATE TABLE BB_ORDERMENU(
	SEQ NUMBER(10) PRIMARY KEY,
	ORDER_SEQ NUMBER(10) NOT NULL,
	MENU_SEQ NUMBER(10) NOT NULL,
	QUANTITY NUMBER(4) NOT NULL,
	DEL NUMBER(1) NOT NULL
);

CREATE SEQUENCE BB_ORDERMENU_SEQ
START WITH 1
INCREMENT BY 1;

ALTER TABLE BB_ORDERMENU
ADD CONSTRAINT FK_BB_O_ORDERMENU_SEQ FOREIGN KEY(ORDER_SEQ)
REFERENCES BB_ORDER(SEQ);

ALTER TABLE BB_ORDERMENU
ADD CONSTRAINT FK_BB_M_ORDERMENU_SEQ FOREIGN KEY(MENU_SEQ)
REFERENCES BB_MENU(SEQ);

INSERT INTO BB_ORDERMENU(SEQ, ORDER_SEQ, MENU_SEQ, QUANTITY, DEL)
VALUES (BB_ORDERMENU_SEQ.NEXTVAL, 1, 22, 1, 0);

