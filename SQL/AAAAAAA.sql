SELECT
  * 
FROM
  item 
  INNER JOIN buy_detail 
    ON item.id = buy_detail.item_id 
GROUP BY
  buy_detail.num; 



