TYPE=VIEW
query=select `d`.`id_category` AS `id_category`,sum(`b`.`total`) AS `total` from (((`ideaccounting_dev`.`trn_sales_det` `a` join `ideaccounting_dev`.`trn_sales_head` `b` on((`b`.`no_sales` = `a`.`no_sales`))) join `ideaccounting_dev`.`mst_item` `d` on((`d`.`id_item` = `a`.`id_item`))) join `ideaccounting_dev`.`mst_itemcat` `e` on((`e`.`mst_itemcat_id` = `d`.`id_category`))) group by `d`.`id_category` union all select `d`.`id_category` AS `id_category`,sum(`b`.`total`) AS `total` from (((`ideaccounting_dev`.`trn_cashier_det` `a` join `ideaccounting_dev`.`trn_cashier_head` `b` on((`b`.`no_sales` = `a`.`no_sales`))) join `ideaccounting_dev`.`mst_item` `d` on((`d`.`id_item` = `a`.`id_item`))) join `ideaccounting_dev`.`mst_itemcat` `e` on((`e`.`mst_itemcat_id` = `d`.`id_category`))) group by `d`.`id_category`
md5=2439c0e82c47099f220d04f84e5e86b3
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:31:59
create-version=1
source=select `d`.`id_category` AS `id_category`,sum(`b`.`total`) AS `total` from (((`trn_sales_det` `a` join `trn_sales_head` `b` on((`b`.`no_sales` = `a`.`no_sales`))) join `mst_item` `d` on((`d`.`id_item` = `a`.`id_item`))) join `mst_itemcat` `e` on((`e`.`mst_itemcat_id` = `d`.`id_category`))) group by `d`.`id_category` union all select `d`.`id_category` AS `id_category`,sum(`b`.`total`) AS `total` from (((`trn_cashier_det` `a` join `trn_cashier_head` `b` on((`b`.`no_sales` = `a`.`no_sales`))) join `mst_item` `d` on((`d`.`id_item` = `a`.`id_item`))) join `mst_itemcat` `e` on((`e`.`mst_itemcat_id` = `d`.`id_category`))) group by `d`.`id_category`
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select `d`.`id_category` AS `id_category`,sum(`b`.`total`) AS `total` from (((`ideaccounting_dev`.`trn_sales_det` `a` join `ideaccounting_dev`.`trn_sales_head` `b` on((`b`.`no_sales` = `a`.`no_sales`))) join `ideaccounting_dev`.`mst_item` `d` on((`d`.`id_item` = `a`.`id_item`))) join `ideaccounting_dev`.`mst_itemcat` `e` on((`e`.`mst_itemcat_id` = `d`.`id_category`))) group by `d`.`id_category` union all select `d`.`id_category` AS `id_category`,sum(`b`.`total`) AS `total` from (((`ideaccounting_dev`.`trn_cashier_det` `a` join `ideaccounting_dev`.`trn_cashier_head` `b` on((`b`.`no_sales` = `a`.`no_sales`))) join `ideaccounting_dev`.`mst_item` `d` on((`d`.`id_item` = `a`.`id_item`))) join `ideaccounting_dev`.`mst_itemcat` `e` on((`e`.`mst_itemcat_id` = `d`.`id_category`))) group by `d`.`id_category`
