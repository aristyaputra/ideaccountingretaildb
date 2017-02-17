TYPE=VIEW
query=select `a`.`id_supplier` AS `id_supplier`,concat((case when isnull(`d`.`first_name`) then \'\' else `d`.`first_name` end),\' \',(case when isnull(`d`.`last_name`) then \'\' else `d`.`last_name` end)) AS `nm_customer`,`d`.`address` AS `address`,`d`.`city` AS `city`,`d`.`phone1` AS `phone1`,`d`.`phone2` AS `phone2`,`d`.`phone3` AS `phone3`,`a`.`no_purchase_order` AS `no_purchase_order`,`a`.`date_trn` AS `date_trn`,`b`.`id_item` AS `id_item`,`e`.`item_name` AS `item_name`,`b`.`qty` AS `qty`,`b`.`id_unit` AS `id_unit`,`f`.`unit` AS `unit`,`b`.`price` AS `price`,`b`.`nominal` AS `nominal`,`a`.`subtotal` AS `subtotal`,`a`.`tax` AS `tax`,`a`.`total` AS `total`,`a`.`notes` AS `notes`,`a`.`freight` AS `freight`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city` from ((((`ideaccounting_dev`.`trn_purchase_order_head` `a` join `ideaccounting_dev`.`trn_purchase_order_det` `b` on((`b`.`no_purchase_order` = `a`.`no_purchase_order`))) join `ideaccounting_dev`.`mst_supplier` `d` on((`d`.`id_supplier` = `a`.`id_supplier`))) join `ideaccounting_dev`.`mst_item` `e` on((`e`.`id_item` = `b`.`id_item`))) join `ideaccounting_dev`.`mst_unit` `f` on((`f`.`id_unit` = `b`.`id_unit`)))
md5=68ede72f6289198966e324ccbc50dff2
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:02
create-version=1
source=select `a`.`id_supplier` AS `id_supplier`,concat((case when isnull(`d`.`first_name`) then \'\' else `d`.`first_name` end),\' \',(case when isnull(`d`.`last_name`) then \'\' else `d`.`last_name` end)) AS `nm_customer`,`d`.`address` AS `address`,`d`.`city` AS `city`,`d`.`phone1` AS `phone1`,`d`.`phone2` AS `phone2`,`d`.`phone3` AS `phone3`,`a`.`no_purchase_order` AS `no_purchase_order`,`a`.`date_trn` AS `date_trn`,`b`.`id_item` AS `id_item`,`e`.`item_name` AS `item_name`,`b`.`qty` AS `qty`,`b`.`id_unit` AS `id_unit`,`f`.`unit` AS `unit`,`b`.`price` AS `price`,`b`.`nominal` AS `nominal`,`a`.`subtotal` AS `subtotal`,`a`.`tax` AS `tax`,`a`.`total` AS `total`,`a`.`notes` AS `notes`,`a`.`freight` AS `freight`,(select `mst_company`.`company_name` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_name`,(select `mst_company`.`address` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_address`,(select `mst_company`.`city` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_city` from ((((`trn_purchase_order_head` `a` join `trn_purchase_order_det` `b` on((`b`.`no_purchase_order` = `a`.`no_purchase_order`))) join `mst_supplier` `d` on((`d`.`id_supplier` = `a`.`id_supplier`))) join `mst_item` `e` on((`e`.`id_item` = `b`.`id_item`))) join `mst_unit` `f` on((`f`.`id_unit` = `b`.`id_unit`)))
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `a`.`id_supplier` AS `id_supplier`,concat((case when isnull(`d`.`first_name`) then \'\' else `d`.`first_name` end),\' \',(case when isnull(`d`.`last_name`) then \'\' else `d`.`last_name` end)) AS `nm_customer`,`d`.`address` AS `address`,`d`.`city` AS `city`,`d`.`phone1` AS `phone1`,`d`.`phone2` AS `phone2`,`d`.`phone3` AS `phone3`,`a`.`no_purchase_order` AS `no_purchase_order`,`a`.`date_trn` AS `date_trn`,`b`.`id_item` AS `id_item`,`e`.`item_name` AS `item_name`,`b`.`qty` AS `qty`,`b`.`id_unit` AS `id_unit`,`f`.`unit` AS `unit`,`b`.`price` AS `price`,`b`.`nominal` AS `nominal`,`a`.`subtotal` AS `subtotal`,`a`.`tax` AS `tax`,`a`.`total` AS `total`,`a`.`notes` AS `notes`,`a`.`freight` AS `freight`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city` from ((((`ideaccounting_dev`.`trn_purchase_order_head` `a` join `ideaccounting_dev`.`trn_purchase_order_det` `b` on((`b`.`no_purchase_order` = `a`.`no_purchase_order`))) join `ideaccounting_dev`.`mst_supplier` `d` on((`d`.`id_supplier` = `a`.`id_supplier`))) join `ideaccounting_dev`.`mst_item` `e` on((`e`.`id_item` = `b`.`id_item`))) join `ideaccounting_dev`.`mst_unit` `f` on((`f`.`id_unit` = `b`.`id_unit`)))