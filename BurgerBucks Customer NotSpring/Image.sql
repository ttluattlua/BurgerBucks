/* 이미지 테이블 */
DROP TABLE BB_IMAGE
CASCADE CONSTRAINT;

DROP SEQUENCE BB_IMAGE;

CREATE TABLE BB_IMAGE(
  SEQ NUMBER(10) PRIMARY KEY,
  TABLE_NAME VARCHAR2(100) NOT NULL,
  WHAT_IMAGE VARCHAR2(100) NOT NULL,
  IMAGE_SRC VARCHAR2(100) NOT NULL,
  REF_SEQ NUMBER(10) NOT NULL,
  DEL NUMBER(1) NOT NULL
);

CREATE SEQUENCE BB_IMAGE_SEQ
START WITH 1
INCREMENT BY 1;

INSERT INTO BB_IMAGE
VALUES(BB_IMAGE_SEQ.NEXTVAL, '재료', '리소스', './Ingredient/bread_homil.png', 1, 0);

INSERT INTO BB_IMAGE
VALUES(BB_IMAGE_SEQ.NEXTVAL, '재료', '리소스', './Ingredient/bread_mil.png', 2, 0);

INSERT INTO BB_IMAGE
VALUES(BB_IMAGE_SEQ.NEXTVAL, '재료', '리소스', './Ingredient/bread_black.png', 3, 0);

INSERT INTO BB_IMAGE
VALUES(BB_IMAGE_SEQ.NEXTVAL, '재료', '리소스', './Ingredient/meat_beaf.png', 4, 0);

INSERT INTO BB_IMAGE
VALUES(BB_IMAGE_SEQ.NEXTVAL, '재료', '리소스', './Ingredient/meat_steak.png', 5, 0);

INSERT INTO BB_IMAGE
VALUES(BB_IMAGE_SEQ.NEXTVAL, '재료', '리소스', './Ingredient/bread_chicken.png', 6, 0);

INSERT INTO BB_IMAGE
VALUES(BB_IMAGE_SEQ.NEXTVAL, '재료', '리소스', './Ingredient/vege_lettuce.png', 7, 0);

INSERT INTO BB_IMAGE
VALUES(BB_IMAGE_SEQ.NEXTVAL, '재료', '리소스', './Ingredient/vege_tomato.png', 8, 0);

INSERT INTO BB_IMAGE
VALUES(BB_IMAGE_SEQ.NEXTVAL, '재료', '리소스', './Ingredient/vege_onion.png', 9, 0);

INSERT INTO BB_IMAGE
VALUES(BB_IMAGE_SEQ.NEXTVAL, '재료', '리소스', './Ingredient/etc_cheesse.png', 10, 0);


