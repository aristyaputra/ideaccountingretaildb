TYPE=VIEW
query=select `a`.`no_delivery_order` AS `no_delivery_order`,`a`.`date_trn` AS `date_trn`,concat((case when isnull(`d`.`first_name`) then \'\' else `d`.`first_name` end),\' \',(case when isnull(`d`.`last_name`) then \'\' else `d`.`last_name` end)) AS `pelanggan`,`d`.`address` AS `address`,`d`.`city` AS `city`,(case when isnull(`e`.`freight_est`) then 0 else `e`.`freight_est` end) AS `freight_est` from ((`ideaccounting_dev`.`trn_delivery_order_head` `a` join `ideaccounting_dev`.`mst_customer` `d` on((`d`.`id_customer` = `a`.`id_customer`))) join `ideaccounting_dev`.`trn_sales_order_head` `e` on((`e`.`no_sales_order` = `a`.`no_sales_order`))) where (((case when isnull(`e`.`freight_est`) then 0 else `e`.`freight_est` end) > 0) and (not(`e`.`no_sales_order` in (select `ideaccounting_dev`.`trn_sales_head`.`no_sales_order` from `ideaccounting_dev`.`trn_sales_head`))))
md5=5911e10d6175269918b2d8e4ec4a5e02
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:03
create-version=1
source=select `a`.`no_delivery_order` AS `no_delivery_order`,`a`.`date_trn` AS `date_trn`,concat((case when isnull(`d`.`first_name`) then \'\' else `d`.`first_name` end),\' \',(case when isnull(`d`.`last_name`) then \'\' else `d`.`last_name` end)) AS `pelanggan`,`d`.`address` AS `address`,`d`.`city` AS `city`,(case when isnull(`e`.`freight_est`) then 0 else `e`.`freight_est` end) AS `freight_est` from ((`trn_delivery_order_head` `a` join `mst_customer` `d` on((`d`.`id_customer` = `a`.`id_customer`))) join `trn_sales_order_head` `e` on((`e`.`no_sales_order` = `a`.`no_sales_order`))) where (((case when isnull(`e`.`freight_est`) then 0 else `e`.`freight_est` end) > 0) and (not(`e`.`no_sales_order` in (select `trn_sales_head`.`no_sales_order` from `trn_sales_head`))))
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `a`.`no_delivery_order` AS `no_delivery_order`,`a`.`date_trn` AS `date_trn`,concat((case when isnull(`d`.`first_name`) then \'\' else `d`.`first_name` end),\' \',(case when isnull(`d`.`last_name`) then \'\' else `d`.`last_name` end)) AS `pelanggan`,`d`.`address` AS `address`,`d`.`city` AS `city`,(case when isnull(`e`.`freight_est`) then 0 else `e`.`freight_est` end) AS `freight_est` from ((`ideaccounting_dev`.`trn_delivery_order_head` `a` join `ideaccounting_dev`.`mst_customer` `d` on((`d`.`id_customer` = `a`.`id_customer`))) join `ideaccounting_dev`.`trn_sales_order_head` `e` on((`e`.`no_sales_order` = `a`.`no_sales_order`))) where (((case when isnull(`e`.`freight_est`) then 0 else `e`.`freight_est` end) > 0) and (not(`e`.`no_sales_order` in (select `ideaccounting_dev`.`trn_sales_head`.`no_sales_order` from `ideaccounting_dev`.`trn_sales_head`))))
