TYPE=VIEW
query=select `a`.`no_sales_order` AS `no_sales_order`,`a`.`id_item` AS `id_item`,`b`.`item_name` AS `item_name`,`a`.`qty` AS `qty`,`a`.`id_unit` AS `id_unit` from (`ideaccounting_dev`.`trn_so_discitem_det` `a` join `ideaccounting_dev`.`mst_item` `b` on((`b`.`id_item` = `a`.`id_item`)))
md5=cfd64d4ffd3fad73a13676da0dfcdc0c
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:03
create-version=1
source=select `a`.`no_sales_order` AS `no_sales_order`,`a`.`id_item` AS `id_item`,`b`.`item_name` AS `item_name`,`a`.`qty` AS `qty`,`a`.`id_unit` AS `id_unit` from (`trn_so_discitem_det` `a` join `mst_item` `b` on((`b`.`id_item` = `a`.`id_item`)))
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select `a`.`no_sales_order` AS `no_sales_order`,`a`.`id_item` AS `id_item`,`b`.`item_name` AS `item_name`,`a`.`qty` AS `qty`,`a`.`id_unit` AS `id_unit` from (`ideaccounting_dev`.`trn_so_discitem_det` `a` join `ideaccounting_dev`.`mst_item` `b` on((`b`.`id_item` = `a`.`id_item`)))
