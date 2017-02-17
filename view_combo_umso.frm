TYPE=VIEW
query=select `x`.`date_trn` AS `date_trn`,`x`.`no_sales_order` AS `no_sales_order`,concat((case when isnull(`d`.`first_name`) then \'\' else `d`.`first_name` end),\' \',(case when isnull(`d`.`last_name`) then \'\' else `d`.`last_name` end)) AS `nm_customer`,`d`.`address` AS `address`,`d`.`city` AS `city`,(case when isnull(`x`.`uang_muka`) then 0 else `x`.`uang_muka` end) AS `uang_muka` from (`ideaccounting_dev`.`trn_sales_order_head` `x` join `ideaccounting_dev`.`mst_customer` `d` on((`d`.`id_customer` = `x`.`id_customer`))) where ((case when isnull(`x`.`uang_muka`) then 0 else `x`.`uang_muka` end) > 0)
md5=38af86eb44da50548a5808c61699e8d9
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:01
create-version=1
source=select `x`.`date_trn` AS `date_trn`,`x`.`no_sales_order` AS `no_sales_order`,concat((case when isnull(`d`.`first_name`) then \'\' else `d`.`first_name` end),\' \',(case when isnull(`d`.`last_name`) then \'\' else `d`.`last_name` end)) AS `nm_customer`,`d`.`address` AS `address`,`d`.`city` AS `city`,(case when isnull(`x`.`uang_muka`) then 0 else `x`.`uang_muka` end) AS `uang_muka` from (`trn_sales_order_head` `x` join `mst_customer` `d` on((`d`.`id_customer` = `x`.`id_customer`))) where ((case when isnull(`x`.`uang_muka`) then 0 else `x`.`uang_muka` end) > 0)
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `x`.`date_trn` AS `date_trn`,`x`.`no_sales_order` AS `no_sales_order`,concat((case when isnull(`d`.`first_name`) then \'\' else `d`.`first_name` end),\' \',(case when isnull(`d`.`last_name`) then \'\' else `d`.`last_name` end)) AS `nm_customer`,`d`.`address` AS `address`,`d`.`city` AS `city`,(case when isnull(`x`.`uang_muka`) then 0 else `x`.`uang_muka` end) AS `uang_muka` from (`ideaccounting_dev`.`trn_sales_order_head` `x` join `ideaccounting_dev`.`mst_customer` `d` on((`d`.`id_customer` = `x`.`id_customer`))) where ((case when isnull(`x`.`uang_muka`) then 0 else `x`.`uang_muka` end) > 0)
