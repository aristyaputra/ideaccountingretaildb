TYPE=VIEW
query=select `a`.`no_received_order` AS `no_received_order`,concat((case when isnull(`b`.`first_name`) then \'\' else `b`.`first_name` end),\' \',(case when isnull(`b`.`last_name`) then \'\' else `b`.`last_name` end)) AS `nama`,`a`.`date_trn` AS `date_trn`,`a`.`notes` AS `notes`,`a`.`id_supplier` AS `id_supplier`,`a`.`no_purchase_order` AS `no_purchase_order`,`c`.`id_item` AS `id_item`,`d`.`item_name` AS `item_name`,`c`.`qty` AS `qty`,`c`.`received_qty` AS `received_qty`,`c`.`id_unit` AS `id_unit`,`d`.`notes` AS `notes_det`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name` from (((`ideaccounting_dev`.`trn_received_order_head` `a` join `ideaccounting_dev`.`trn_received_order_det` `c` on((`c`.`no_received_order` = `a`.`no_received_order`))) join `ideaccounting_dev`.`mst_supplier` `b` on((`b`.`id_supplier` = `a`.`id_supplier`))) join `ideaccounting_dev`.`mst_item` `d` on((`d`.`id_item` = `c`.`id_item`)))
md5=0c0e466c395b583abef14e75a8cb23ea
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:06
create-version=1
source=select `a`.`no_received_order` AS `no_received_order`,concat((case when isnull(`b`.`first_name`) then \'\' else `b`.`first_name` end),\' \',(case when isnull(`b`.`last_name`) then \'\' else `b`.`last_name` end)) AS `nama`,`a`.`date_trn` AS `date_trn`,`a`.`notes` AS `notes`,`a`.`id_supplier` AS `id_supplier`,`a`.`no_purchase_order` AS `no_purchase_order`,`c`.`id_item` AS `id_item`,`d`.`item_name` AS `item_name`,`c`.`qty` AS `qty`,`c`.`received_qty` AS `received_qty`,`c`.`id_unit` AS `id_unit`,`d`.`notes` AS `notes_det`,(select `mst_company`.`company_name` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_name` from (((`trn_received_order_head` `a` join `trn_received_order_det` `c` on((`c`.`no_received_order` = `a`.`no_received_order`))) join `mst_supplier` `b` on((`b`.`id_supplier` = `a`.`id_supplier`))) join `mst_item` `d` on((`d`.`id_item` = `c`.`id_item`)))
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `a`.`no_received_order` AS `no_received_order`,concat((case when isnull(`b`.`first_name`) then \'\' else `b`.`first_name` end),\' \',(case when isnull(`b`.`last_name`) then \'\' else `b`.`last_name` end)) AS `nama`,`a`.`date_trn` AS `date_trn`,`a`.`notes` AS `notes`,`a`.`id_supplier` AS `id_supplier`,`a`.`no_purchase_order` AS `no_purchase_order`,`c`.`id_item` AS `id_item`,`d`.`item_name` AS `item_name`,`c`.`qty` AS `qty`,`c`.`received_qty` AS `received_qty`,`c`.`id_unit` AS `id_unit`,`d`.`notes` AS `notes_det`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name` from (((`ideaccounting_dev`.`trn_received_order_head` `a` join `ideaccounting_dev`.`trn_received_order_det` `c` on((`c`.`no_received_order` = `a`.`no_received_order`))) join `ideaccounting_dev`.`mst_supplier` `b` on((`b`.`id_supplier` = `a`.`id_supplier`))) join `ideaccounting_dev`.`mst_item` `d` on((`d`.`id_item` = `c`.`id_item`)))
