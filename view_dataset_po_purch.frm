TYPE=VIEW
query=select distinct `a`.`no_purchase_order` AS `no_purchase_order`,`a`.`id_supplier` AS `id_supplier`,concat((case when isnull(`b`.`first_name`) then \'\' else `b`.`first_name` end),\' \',(case when isnull(`b`.`last_name`) then \'\' else `b`.`last_name` end)) AS `supplier_name`,`b`.`address` AS `address`,`a`.`date_trn` AS `date_trn` from ((`ideaccounting_dev`.`trn_purchase_order_head` `a` join `ideaccounting_dev`.`mst_supplier` `b` on((`b`.`id_supplier` = `a`.`id_supplier`))) join `ideaccounting_dev`.`trn_purchase_order_det` `c` on((`c`.`no_purchase_order` = `a`.`no_purchase_order`))) where (((case when isnull(`c`.`qty_received`) then 0 else `c`.`qty_received` end) > 0) and ((case when isnull(`a`.`flag_status_invoice`) then 0 else `a`.`flag_status_invoice` end) = 0))
md5=0ca9d458f5f47579726331f387cc05aa
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:03
create-version=1
source=select distinct `a`.`no_purchase_order` AS `no_purchase_order`,`a`.`id_supplier` AS `id_supplier`,concat((case when isnull(`b`.`first_name`) then \'\' else `b`.`first_name` end),\' \',(case when isnull(`b`.`last_name`) then \'\' else `b`.`last_name` end)) AS `supplier_name`,`b`.`address` AS `address`,`a`.`date_trn` AS `date_trn` from ((`trn_purchase_order_head` `a` join `mst_supplier` `b` on((`b`.`id_supplier` = `a`.`id_supplier`))) join `trn_purchase_order_det` `c` on((`c`.`no_purchase_order` = `a`.`no_purchase_order`))) where (((case when isnull(`c`.`qty_received`) then 0 else `c`.`qty_received` end) > 0) and ((case when isnull(`a`.`flag_status_invoice`) then 0 else `a`.`flag_status_invoice` end) = 0))
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select distinct `a`.`no_purchase_order` AS `no_purchase_order`,`a`.`id_supplier` AS `id_supplier`,concat((case when isnull(`b`.`first_name`) then \'\' else `b`.`first_name` end),\' \',(case when isnull(`b`.`last_name`) then \'\' else `b`.`last_name` end)) AS `supplier_name`,`b`.`address` AS `address`,`a`.`date_trn` AS `date_trn` from ((`ideaccounting_dev`.`trn_purchase_order_head` `a` join `ideaccounting_dev`.`mst_supplier` `b` on((`b`.`id_supplier` = `a`.`id_supplier`))) join `ideaccounting_dev`.`trn_purchase_order_det` `c` on((`c`.`no_purchase_order` = `a`.`no_purchase_order`))) where (((case when isnull(`c`.`qty_received`) then 0 else `c`.`qty_received` end) > 0) and ((case when isnull(`a`.`flag_status_invoice`) then 0 else `a`.`flag_status_invoice` end) = 0))
