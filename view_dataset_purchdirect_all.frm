TYPE=VIEW
query=select distinct `a`.`no_purchase` AS `no_purchase`,`a`.`id_supplier` AS `id_supplier`,concat((case when isnull(`b`.`first_name`) then \'\' else `b`.`first_name` end),\' \',(case when isnull(`b`.`last_name`) then \'\' else `b`.`last_name` end)) AS `supplier_name`,`b`.`address` AS `address`,`a`.`date_trn` AS `date_trn` from (((`ideaccounting_dev`.`trn_purchasedirect_head` `a` join `ideaccounting_dev`.`trn_purchase_det` `s` on((`s`.`no_purchase` = `a`.`no_purchase`))) join `ideaccounting_dev`.`mst_supplier` `b` on((`b`.`id_supplier` = `a`.`id_supplier`))) left join `ideaccounting_dev`.`view_total_purchase_return` `f` on(((`f`.`id_item` = `s`.`id_item`) and (`f`.`no_purchase` = `s`.`no_purchase`))))
md5=cea81517ae6a189aa2a69111833d6b19
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:03
create-version=1
source=select distinct `a`.`no_purchase` AS `no_purchase`,`a`.`id_supplier` AS `id_supplier`,concat((case when isnull(`b`.`first_name`) then \'\' else `b`.`first_name` end),\' \',(case when isnull(`b`.`last_name`) then \'\' else `b`.`last_name` end)) AS `supplier_name`,`b`.`address` AS `address`,`a`.`date_trn` AS `date_trn` from (((`trn_purchasedirect_head` `a` join `trn_purchase_det` `s` on((`s`.`no_purchase` = `a`.`no_purchase`))) join `mst_supplier` `b` on((`b`.`id_supplier` = `a`.`id_supplier`))) left join `view_total_purchase_return` `f` on(((`f`.`id_item` = `s`.`id_item`) and (`f`.`no_purchase` = `s`.`no_purchase`))))
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select distinct `a`.`no_purchase` AS `no_purchase`,`a`.`id_supplier` AS `id_supplier`,concat((case when isnull(`b`.`first_name`) then \'\' else `b`.`first_name` end),\' \',(case when isnull(`b`.`last_name`) then \'\' else `b`.`last_name` end)) AS `supplier_name`,`b`.`address` AS `address`,`a`.`date_trn` AS `date_trn` from (((`ideaccounting_dev`.`trn_purchasedirect_head` `a` join `ideaccounting_dev`.`trn_purchase_det` `s` on((`s`.`no_purchase` = `a`.`no_purchase`))) join `ideaccounting_dev`.`mst_supplier` `b` on((`b`.`id_supplier` = `a`.`id_supplier`))) left join `ideaccounting_dev`.`view_total_purchase_return` `f` on(((`f`.`id_item` = `s`.`id_item`) and (`f`.`no_purchase` = `s`.`no_purchase`))))
