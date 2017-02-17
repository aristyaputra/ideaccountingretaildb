TYPE=VIEW
query=select cast(`a`.`date_trn` as date) AS `date_trn`,`a`.`no_sales` AS `no_sales`,`a`.`no_sales_order` AS `no_sales_order`,concat((case when isnull(`d`.`first_name`) then \'\' else `d`.`first_name` end),\' \',(case when isnull(`d`.`last_name`) then \'\' else `d`.`last_name` end)) AS `customer`,`a`.`total` AS `total`,`c`.`id_curr` AS `id_curr` from ((`ideaccounting_dev`.`trn_sales_head` `a` join `ideaccounting_dev`.`trn_sales_det` `c` on((`c`.`no_sales` = `a`.`no_sales`))) join `ideaccounting_dev`.`mst_customer` `d` on((`d`.`id_customer` = `a`.`id_customer`))) group by `a`.`no_sales`
md5=c3e2aad421f2b9e29ce5210f52bdb0ed
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:06
create-version=1
source=select cast(`a`.`date_trn` as date) AS `date_trn`,`a`.`no_sales` AS `no_sales`,`a`.`no_sales_order` AS `no_sales_order`,concat((case when isnull(`d`.`first_name`) then \'\' else `d`.`first_name` end),\' \',(case when isnull(`d`.`last_name`) then \'\' else `d`.`last_name` end)) AS `customer`,`a`.`total` AS `total`,`c`.`id_curr` AS `id_curr` from ((`trn_sales_head` `a` join `trn_sales_det` `c` on((`c`.`no_sales` = `a`.`no_sales`))) join `mst_customer` `d` on((`d`.`id_customer` = `a`.`id_customer`))) group by `a`.`no_sales`
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select cast(`a`.`date_trn` as date) AS `date_trn`,`a`.`no_sales` AS `no_sales`,`a`.`no_sales_order` AS `no_sales_order`,concat((case when isnull(`d`.`first_name`) then \'\' else `d`.`first_name` end),\' \',(case when isnull(`d`.`last_name`) then \'\' else `d`.`last_name` end)) AS `customer`,`a`.`total` AS `total`,`c`.`id_curr` AS `id_curr` from ((`ideaccounting_dev`.`trn_sales_head` `a` join `ideaccounting_dev`.`trn_sales_det` `c` on((`c`.`no_sales` = `a`.`no_sales`))) join `ideaccounting_dev`.`mst_customer` `d` on((`d`.`id_customer` = `a`.`id_customer`))) group by `a`.`no_sales`
