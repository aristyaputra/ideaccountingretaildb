TYPE=VIEW
query=select `h`.`no_purchase_order` AS `no_purchase_order`,concat((case when isnull(`s`.`first_name`) then \'\' else `s`.`first_name` end),\' \',(case when isnull(`s`.`last_name`) then \'\' else `s`.`last_name` end)) AS `nm_supplier`,`h`.`date_trn` AS `date_trn`,`h`.`subtotal` AS `subtotal`,`h`.`freight` AS `freight`,`h`.`tax` AS `tax`,`h`.`total` AS `total`,`h`.`notes` AS `notes` from ((`ideaccounting_dev`.`trn_purchase_order_head` `h` join `ideaccounting_dev`.`trn_purchase_order_det` `d` on((`h`.`no_purchase_order` = `d`.`no_purchase_order`))) join `ideaccounting_dev`.`mst_supplier` `s` on((`h`.`id_supplier` = `s`.`id_supplier`)))
md5=6e7469843b9da04355f376ac8bd21683
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:05
create-version=1
source=select `h`.`no_purchase_order` AS `no_purchase_order`,concat((case when isnull(`s`.`first_name`) then \'\' else `s`.`first_name` end),\' \',(case when isnull(`s`.`last_name`) then \'\' else `s`.`last_name` end)) AS `nm_supplier`,`h`.`date_trn` AS `date_trn`,`h`.`subtotal` AS `subtotal`,`h`.`freight` AS `freight`,`h`.`tax` AS `tax`,`h`.`total` AS `total`,`h`.`notes` AS `notes` from ((`trn_purchase_order_head` `h` join `trn_purchase_order_det` `d` on((`h`.`no_purchase_order` = `d`.`no_purchase_order`))) join `mst_supplier` `s` on((`h`.`id_supplier` = `s`.`id_supplier`)))
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `h`.`no_purchase_order` AS `no_purchase_order`,concat((case when isnull(`s`.`first_name`) then \'\' else `s`.`first_name` end),\' \',(case when isnull(`s`.`last_name`) then \'\' else `s`.`last_name` end)) AS `nm_supplier`,`h`.`date_trn` AS `date_trn`,`h`.`subtotal` AS `subtotal`,`h`.`freight` AS `freight`,`h`.`tax` AS `tax`,`h`.`total` AS `total`,`h`.`notes` AS `notes` from ((`ideaccounting_dev`.`trn_purchase_order_head` `h` join `ideaccounting_dev`.`trn_purchase_order_det` `d` on((`h`.`no_purchase_order` = `d`.`no_purchase_order`))) join `ideaccounting_dev`.`mst_supplier` `s` on((`h`.`id_supplier` = `s`.`id_supplier`)))
