-- 코드를 입력하세요
SELECT B.USER_ID, B.NICKNAME, SUM(A.PRICE) AS TOTAL_SALES
FROM USED_GOODS_BOARD A JOIN USED_GOODS_USER B ON WRITER_ID = USER_ID
WHERE STATUS = 'DONE'
GROUP BY B.USER_ID
HAVING SUM(A.PRICE) >= 700000
ORDER BY SUM(A.PRICE) ASC