SELECT NVL(SUM(PRICE), 0) 
FROM BB_ORDER 
WHERE ORDER_DATE BETWEEN  
(Select trunc(add_months(sysdate,-1)) - (to_number(to_char(add_months(sysdate,-1),'DD')) - 1) FROM dual)  
AND  
(SELECT add_months(trunc(add_months(sysdate,-1)) - (to_number(to_char(add_months(sysdate,-1),'DD')) - 1), 1) -1 FROM dual)