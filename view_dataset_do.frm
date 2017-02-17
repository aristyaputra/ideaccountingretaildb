TYPE=VIEW
query=select distinct `a`.`no_sales_order` AS `no_sales_order`,`a`.`id_customer` AS `id_customer`,concat((case when isnull(`b`.`first_name`) then \'\' else `b`.`first_name` end),\' \',(case when isnull(`b`.`last_name`) then \'\' else `b`.`last_name` end)) AS `customer_name`,`b`.`address` AS `address`,`a`.`date_trn` AS `date_trn` from ((`ideaccounting_dev`.`trn_sales_order_head` `a` join `ideaccounting_dev`.`mst_customer` `b` on((`b`.`id_customer` = `a`.`id_customer`))) join `ideaccounting_dev`.`trn_sales_order_det` `c` on((`c`.`no_sales_order` = `a`.`no_sales_order`))) where (((case when isnull(`c`.`qty`) then 0 else `c`.`qty` end) - (case when isnull(`c`.`sent_qty`) then 0 else `c`.`sent_qty` end)) <> 0)
md5=b14448475090f05bb09aa7523ea62071
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:02
create-version=1
source=select distinct `a`.`no_sales_order` AS `no_sales_order`,`a`.`id_customer` AS `id_customer`,concat((case when isnull(`b`.`first_name`) then \'\' else `b`.`first_name` end),\' \',(case when isnull(`b`.`last_name`) then \'\' else `b`.`last_name` end)) AS `customer_name`,`b`.`address` AS `address`,`a`.`date_trn` AS `date_trn` from ((`trn_sales_order_head` `a` join `mst_customer` `b` on((`b`.`id_customer` = `a`.`id_customer`))) join `trn_sales_order_det` `c` on((`c`.`no_sales_order` = `a`.`no_sales_order`))) where (((case when isnull(`c`.`qty`) then 0 else `c`.`qty` end) - (case when isnull(`c`.`sent_qty`) then 0 else `c`.`sent_qty` end)) <> 0)
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select distinct `a`.`no_sales_order` AS `no_sales_order`,`a`.`id_customer` AS `id_customer`,concat((case when isnull(`b`.`first_name`) then \'\' else `b`.`first_name` end),\' \',(case when isnull(`b`.`last_name`) then \'\' else `b`.`last_name` end)) AS `customer_name`,`b`.`address` AS `address`,`a`.`date_trn` AS `date_trn` from ((`ideaccounting_dev`.`trn_sales_order_head` `a` join `ideaccounting_dev`.`mst_customer` `b` on((`b`.`id_customer` = `a`.`id_customer`))) join `ideaccounting_dev`.`trn_sales_order_det` `c` on((`c`.`no_sales_order` = `a`.`no_sales_order`))) where (((case when isnull(`c`.`qty`) then 0 else `c`.`qty` end) - (case when isnull(`c`.`sent_qty`) then 0 else `c`.`sent_qty` end)) <> 0)
