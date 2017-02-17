TYPE=VIEW
query=select date_format(`a`.`date_trn`,\'%M,%D\') AS `date_trn`,`a`.`no_sales_order` AS `no_sales_order`,concat(`b`.`first_name`,\' \',`b`.`last_name`) AS `customer`,`a`.`total` AS `total`,\'in progress for invoice\' AS `status_notes` from (`ideaccounting_dev`.`trn_sales_order_head` `a` join `ideaccounting_dev`.`mst_customer` `b` on((`b`.`id_customer` = `a`.`id_customer`))) where ((case when isnull(`a`.`flag_status_invoice`) then 0 else `a`.`flag_status_invoice` end) = 0)
md5=323bbc33ce142beadfcfe8b861234eff
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:00
create-version=1
source=select date_format(`a`.`date_trn`,\'%M,%D\') AS `date_trn`,`a`.`no_sales_order` AS `no_sales_order`,concat(`b`.`first_name`,\' \',`b`.`last_name`) AS `customer`,`a`.`total` AS `total`,\'in progress for invoice\' AS `status_notes` from (`trn_sales_order_head` `a` join `mst_customer` `b` on((`b`.`id_customer` = `a`.`id_customer`))) where ((case when isnull(`a`.`flag_status_invoice`) then 0 else `a`.`flag_status_invoice` end) = 0)
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select date_format(`a`.`date_trn`,\'%M,%D\') AS `date_trn`,`a`.`no_sales_order` AS `no_sales_order`,concat(`b`.`first_name`,\' \',`b`.`last_name`) AS `customer`,`a`.`total` AS `total`,\'in progress for invoice\' AS `status_notes` from (`ideaccounting_dev`.`trn_sales_order_head` `a` join `ideaccounting_dev`.`mst_customer` `b` on((`b`.`id_customer` = `a`.`id_customer`))) where ((case when isnull(`a`.`flag_status_invoice`) then 0 else `a`.`flag_status_invoice` end) = 0)
