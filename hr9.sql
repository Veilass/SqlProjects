SELECT TO_CHAR(TO_DATE('16!SEP?20'),'dd-mon-yyyy hh24:mi:ss') FROM dual;
SELECT TO_DATE('16!SEP?19') FROM dual; 


SELECT TO_DATE('18:40 2019!17-Sep', 'hh24:mi yyyy!dd-Mon') FROM dual;

SELECT TO_CHAR(TO_DATE('28-SEP-19 15:16:18', 'dd-Mon-RR hh24:mi:ss'),
'dd-Mon-RR hh24:mi:ss') FROM dual;

SELECT TO_DATE('18-SEP-10', 'fxDD-MON-YYYY') FROM dual;
SELECT * FROM employees WHERE hire_date > TO_DATE('01-JAN-05', 'dd-Mon-RR');

SELECT TO_CHAR(TO_DATE('18-SEP-10','DD-MON-RR'), 'Month') FROM dual;

SELECT TO_CHAR(TO_DATE('15?1987$17$18$19/09', 'hh24?YYYY$MI$SS$DD/mm'),
'dd-MON-yyyy hh24:mi:ss') alias FROM dual;

SELECT TO_NUMBER('$4785.77', '$9999.999') FROM dual;
SELECT TO_NUMBER('4,785.77', '999,999.999') FROM dual;
SELECT TO_NUMBER('<4,785.77>', '9999.999PR') FROM dual;
SELECT TO_CHAR('3.17', '99.9') FROM dual;
SELECT TO_NUMBER('3.17','99.9') FROM dual; -- асдер ньхайю --