TYPE=VIEW
query=select `b`.`id_item` AS `id_item`,`a`.`item_name` AS `item_name`,`b`.`id_unit` AS `id_unit`,(case when isnull(`b`.`balance`) then 0 else `b`.`balance` end) AS `balance`,(case when isnull(`b`.`price`) then 0 else `b`.`price` end) AS `price`,(case when isnull(`b`.`notes`) then \'\' else `b`.`notes` end) AS `notes`,`b`.`id_warehouse` AS `id_warehouse` from (`ideaccounting_dev`.`mst_item` `a` join `ideaccounting_dev`.`i_item_beg_balance` `b` on((`b`.`id_item` = `a`.`id_item`)))
md5=c92a0e2f4d7b4427c19ae64c54e737f2
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:04
create-version=1
source=select `b`.`id_item` AS `id_item`,`a`.`item_name` AS `item_name`,`b`.`id_unit` AS `id_unit`,(case when isnull(`b`.`balance`) then 0 else `b`.`balance` end) AS `balance`,(case when isnull(`b`.`price`) then 0 else `b`.`price` end) AS `price`,(case when isnull(`b`.`notes`) then \'\' else `b`.`notes` end) AS `notes`,`b`.`id_warehouse` AS `id_warehouse` from (`mst_item` `a` join `i_item_beg_balance` `b` on((`b`.`id_item` = `a`.`id_item`)))
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select `b`.`id_item` AS `id_item`,`a`.`item_name` AS `item_name`,`b`.`id_unit` AS `id_unit`,(case when isnull(`b`.`balance`) then 0 else `b`.`balance` end) AS `balance`,(case when isnull(`b`.`price`) then 0 else `b`.`price` end) AS `price`,(case when isnull(`b`.`notes`) then \'\' else `b`.`notes` end) AS `notes`,`b`.`id_warehouse` AS `id_warehouse` from (`ideaccounting_dev`.`mst_item` `a` join `ideaccounting_dev`.`i_item_beg_balance` `b` on((`b`.`id_item` = `a`.`id_item`)))
