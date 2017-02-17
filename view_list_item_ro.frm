TYPE=VIEW
query=select `a`.`id_item` AS `id_item`,`b`.`item_name` AS `item_name`,`a`.`no_request_order` AS `no_request_order`,`a`.`approve_qty` AS `approve_qty`,`a`.`id_unit` AS `id_unit`,(case when isnull(`b`.`id_barcode`) then \'\' else `b`.`id_barcode` end) AS `id_barcode` from (`ideaccounting_dev`.`trn_request_order_det` `a` join `ideaccounting_dev`.`mst_item` `b` on((`b`.`id_item` = `a`.`id_item`))) where (((case when isnull(`a`.`flag_status`) then 0 else `a`.`flag_status` end) = 1) and ((case when isnull(`a`.`flag_po`) then 0 else `a`.`flag_po` end) = 0))
md5=8e300c49df0ab7b21ebe3ad7d2217873
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:05
create-version=1
source=select `a`.`id_item` AS `id_item`,`b`.`item_name` AS `item_name`,`a`.`no_request_order` AS `no_request_order`,`a`.`approve_qty` AS `approve_qty`,`a`.`id_unit` AS `id_unit`,(case when isnull(`b`.`id_barcode`) then \'\' else `b`.`id_barcode` end) AS `id_barcode` from (`trn_request_order_det` `a` join `mst_item` `b` on((`b`.`id_item` = `a`.`id_item`))) where (((case when isnull(`a`.`flag_status`) then 0 else `a`.`flag_status` end) = 1) and ((case when isnull(`a`.`flag_po`) then 0 else `a`.`flag_po` end) = 0))
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select `a`.`id_item` AS `id_item`,`b`.`item_name` AS `item_name`,`a`.`no_request_order` AS `no_request_order`,`a`.`approve_qty` AS `approve_qty`,`a`.`id_unit` AS `id_unit`,(case when isnull(`b`.`id_barcode`) then \'\' else `b`.`id_barcode` end) AS `id_barcode` from (`ideaccounting_dev`.`trn_request_order_det` `a` join `ideaccounting_dev`.`mst_item` `b` on((`b`.`id_item` = `a`.`id_item`))) where (((case when isnull(`a`.`flag_status`) then 0 else `a`.`flag_status` end) = 1) and ((case when isnull(`a`.`flag_po`) then 0 else `a`.`flag_po` end) = 0))
