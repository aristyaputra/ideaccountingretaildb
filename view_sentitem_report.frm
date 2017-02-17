TYPE=VIEW
query=select `a`.`no_delivery_order` AS `no_delivery_order`,concat((case when isnull(`b`.`first_name`) then \'\' else `b`.`first_name` end),\' \',(case when isnull(`b`.`last_name`) then \'\' else `b`.`last_name` end)) AS `nama`,`a`.`date_trn` AS `date_trn`,`a`.`notes` AS `notes`,`a`.`id_customer` AS `id_customer`,`a`.`no_sales_order` AS `no_sales_order`,`c`.`id_item` AS `id_item`,`d`.`item_name` AS `item_name`,`c`.`qty` AS `qty`,`c`.`sent_qty` AS `sent_qty`,`c`.`id_unit` AS `id_unit`,`d`.`notes` AS `notes_det`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name` from (((`ideaccounting_dev`.`trn_delivery_order_head` `a` join `ideaccounting_dev`.`trn_delivery_order_det` `c` on((`c`.`no_delivery_order` = `a`.`no_delivery_order`))) join `ideaccounting_dev`.`mst_customer` `b` on((`b`.`id_customer` = `a`.`id_customer`))) join `ideaccounting_dev`.`mst_item` `d` on((`d`.`id_item` = `c`.`id_item`)))
md5=ac0bf1e036e73f9ad1156228a70f6fc1
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:06
create-version=1
source=select `a`.`no_delivery_order` AS `no_delivery_order`,concat((case when isnull(`b`.`first_name`) then \'\' else `b`.`first_name` end),\' \',(case when isnull(`b`.`last_name`) then \'\' else `b`.`last_name` end)) AS `nama`,`a`.`date_trn` AS `date_trn`,`a`.`notes` AS `notes`,`a`.`id_customer` AS `id_customer`,`a`.`no_sales_order` AS `no_sales_order`,`c`.`id_item` AS `id_item`,`d`.`item_name` AS `item_name`,`c`.`qty` AS `qty`,`c`.`sent_qty` AS `sent_qty`,`c`.`id_unit` AS `id_unit`,`d`.`notes` AS `notes_det`,(select `mst_company`.`company_name` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_name` from (((`trn_delivery_order_head` `a` join `trn_delivery_order_det` `c` on((`c`.`no_delivery_order` = `a`.`no_delivery_order`))) join `mst_customer` `b` on((`b`.`id_customer` = `a`.`id_customer`))) join `mst_item` `d` on((`d`.`id_item` = `c`.`id_item`)))
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `a`.`no_delivery_order` AS `no_delivery_order`,concat((case when isnull(`b`.`first_name`) then \'\' else `b`.`first_name` end),\' \',(case when isnull(`b`.`last_name`) then \'\' else `b`.`last_name` end)) AS `nama`,`a`.`date_trn` AS `date_trn`,`a`.`notes` AS `notes`,`a`.`id_customer` AS `id_customer`,`a`.`no_sales_order` AS `no_sales_order`,`c`.`id_item` AS `id_item`,`d`.`item_name` AS `item_name`,`c`.`qty` AS `qty`,`c`.`sent_qty` AS `sent_qty`,`c`.`id_unit` AS `id_unit`,`d`.`notes` AS `notes_det`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name` from (((`ideaccounting_dev`.`trn_delivery_order_head` `a` join `ideaccounting_dev`.`trn_delivery_order_det` `c` on((`c`.`no_delivery_order` = `a`.`no_delivery_order`))) join `ideaccounting_dev`.`mst_customer` `b` on((`b`.`id_customer` = `a`.`id_customer`))) join `ideaccounting_dev`.`mst_item` `d` on((`d`.`id_item` = `c`.`id_item`)))