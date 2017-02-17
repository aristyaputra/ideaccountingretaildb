TYPE=VIEW
query=select `a`.`no_purchase_order` AS `no_purchase_order`,concat((case when isnull(`b`.`first_name`) then \'\' else `b`.`first_name` end),\' \',(case when isnull(`b`.`last_name`) then \'\' else `b`.`last_name` end)) AS `nama`,`a`.`date_trn` AS `date_trn`,`a`.`freight` AS `freight`,((`a`.`tax` / 100) * (`a`.`subtotal` + `a`.`freight`)) AS `tax`,`a`.`notes` AS `notes`,`a`.`id_supplier` AS `id_supplier`,`c`.`id_item` AS `id_item`,`d`.`item_name` AS `item_name`,`c`.`qty` AS `qty`,`c`.`qty_received` AS `qty_received`,`c`.`id_unit` AS `id_unit`,`c`.`price` AS `price`,`c`.`nominal` AS `nominal`,`c`.`no_request_order` AS `no_request_order`,`c`.`notes` AS `notes_det`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,`c`.`id_curr` AS `id_curr` from (((`ideaccounting_dev`.`trn_purchase_order_head` `a` join `ideaccounting_dev`.`trn_purchase_order_det` `c` on((`c`.`no_purchase_order` = `a`.`no_purchase_order`))) join `ideaccounting_dev`.`mst_supplier` `b` on((`b`.`id_supplier` = `a`.`id_supplier`))) join `ideaccounting_dev`.`mst_item` `d` on((`d`.`id_item` = `c`.`id_item`)))
md5=a551f446c27eea6d4982b896c358113f
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:06
create-version=1
source=select `a`.`no_purchase_order` AS `no_purchase_order`,concat((case when isnull(`b`.`first_name`) then \'\' else `b`.`first_name` end),\' \',(case when isnull(`b`.`last_name`) then \'\' else `b`.`last_name` end)) AS `nama`,`a`.`date_trn` AS `date_trn`,`a`.`freight` AS `freight`,((`a`.`tax` / 100) * (`a`.`subtotal` + `a`.`freight`)) AS `tax`,`a`.`notes` AS `notes`,`a`.`id_supplier` AS `id_supplier`,`c`.`id_item` AS `id_item`,`d`.`item_name` AS `item_name`,`c`.`qty` AS `qty`,`c`.`qty_received` AS `qty_received`,`c`.`id_unit` AS `id_unit`,`c`.`price` AS `price`,`c`.`nominal` AS `nominal`,`c`.`no_request_order` AS `no_request_order`,`c`.`notes` AS `notes_det`,(select `mst_company`.`company_name` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_name`,`c`.`id_curr` AS `id_curr` from (((`trn_purchase_order_head` `a` join `trn_purchase_order_det` `c` on((`c`.`no_purchase_order` = `a`.`no_purchase_order`))) join `mst_supplier` `b` on((`b`.`id_supplier` = `a`.`id_supplier`))) join `mst_item` `d` on((`d`.`id_item` = `c`.`id_item`)))
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `a`.`no_purchase_order` AS `no_purchase_order`,concat((case when isnull(`b`.`first_name`) then \'\' else `b`.`first_name` end),\' \',(case when isnull(`b`.`last_name`) then \'\' else `b`.`last_name` end)) AS `nama`,`a`.`date_trn` AS `date_trn`,`a`.`freight` AS `freight`,((`a`.`tax` / 100) * (`a`.`subtotal` + `a`.`freight`)) AS `tax`,`a`.`notes` AS `notes`,`a`.`id_supplier` AS `id_supplier`,`c`.`id_item` AS `id_item`,`d`.`item_name` AS `item_name`,`c`.`qty` AS `qty`,`c`.`qty_received` AS `qty_received`,`c`.`id_unit` AS `id_unit`,`c`.`price` AS `price`,`c`.`nominal` AS `nominal`,`c`.`no_request_order` AS `no_request_order`,`c`.`notes` AS `notes_det`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,`c`.`id_curr` AS `id_curr` from (((`ideaccounting_dev`.`trn_purchase_order_head` `a` join `ideaccounting_dev`.`trn_purchase_order_det` `c` on((`c`.`no_purchase_order` = `a`.`no_purchase_order`))) join `ideaccounting_dev`.`mst_supplier` `b` on((`b`.`id_supplier` = `a`.`id_supplier`))) join `ideaccounting_dev`.`mst_item` `d` on((`d`.`id_item` = `c`.`id_item`)))