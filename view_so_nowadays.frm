TYPE=VIEW
query=select `d`.`date_trn` AS `date_trn`,`a`.`no_sales_order` AS `no_sales_order`,`a`.`id_item` AS `id_item`,`b`.`item_name` AS `item_name`,`a`.`qty` AS `qty`,`a`.`id_unit` AS `id_unit`,`a`.`price` AS `price`,`a`.`nominal` AS `nominal`,`a`.`id_curr` AS `id_curr` from ((`ideaccounting_dev`.`trn_sales_order_det` `a` join `ideaccounting_dev`.`mst_item` `b` on((`b`.`id_item` = `a`.`id_item`))) join `ideaccounting_dev`.`trn_sales_order_head` `d` on((`d`.`no_sales_order` = `a`.`no_sales_order`)))
md5=bb0eec51591cebf9597afaeb73b04695
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:06
create-version=1
source=select `d`.`date_trn` AS `date_trn`,`a`.`no_sales_order` AS `no_sales_order`,`a`.`id_item` AS `id_item`,`b`.`item_name` AS `item_name`,`a`.`qty` AS `qty`,`a`.`id_unit` AS `id_unit`,`a`.`price` AS `price`,`a`.`nominal` AS `nominal`,`a`.`id_curr` AS `id_curr` from ((`trn_sales_order_det` `a` join `mst_item` `b` on((`b`.`id_item` = `a`.`id_item`))) join `trn_sales_order_head` `d` on((`d`.`no_sales_order` = `a`.`no_sales_order`)))
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `d`.`date_trn` AS `date_trn`,`a`.`no_sales_order` AS `no_sales_order`,`a`.`id_item` AS `id_item`,`b`.`item_name` AS `item_name`,`a`.`qty` AS `qty`,`a`.`id_unit` AS `id_unit`,`a`.`price` AS `price`,`a`.`nominal` AS `nominal`,`a`.`id_curr` AS `id_curr` from ((`ideaccounting_dev`.`trn_sales_order_det` `a` join `ideaccounting_dev`.`mst_item` `b` on((`b`.`id_item` = `a`.`id_item`))) join `ideaccounting_dev`.`trn_sales_order_head` `d` on((`d`.`no_sales_order` = `a`.`no_sales_order`)))
