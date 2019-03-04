SELECT item.*, sum(buy_detail.num) as number FROM buy_detail INNER JOIN item ON buy_detail.item_id = item.id group by item.id order by number desc, id LIMIT 3;



