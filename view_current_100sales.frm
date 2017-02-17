TYPE=VIEW
query=select `a`.`no_sales` AS `no_sales`,`a`.`date_trn` AS `date_trn`,concat((case when isnull(`b`.`first_name`) then \'\' else `b`.`first_name` end),\' \',(case when isnull(`b`.`last_name`) then \'\' else `b`.`last_name` end)) AS `customer`,`a`.`total` AS `total` from (`ideaccounting_dev`.`trn_sales_head` `a` join `ideaccounting_dev`.`mst_customer` `b` on((`b`.`id_customer` = `a`.`id_customer`))) union all select `a`.`no_sales` AS `no_sales`,`a`.`date_trn` AS `date_trn`,(case when isnull(`a`.`customer`) then concat((case when isnull(`b`.`first_name`) then \'\' else `b`.`first_name` end),\' \',(case when isnull(`b`.`last_name`) then \'\' else `b`.`last_name` end)) else `a`.`customer` end) AS `customer`,`a`.`total` AS `total` from (`ideaccounting_dev`.`trn_cashier_head` `a` left join `ideaccounting_dev`.`mst_customer` `b` on((`b`.`id_customer` = `a`.`id_customer`))) order by `no_sales` desc limit 100
md5=61e103d861e440b4a3a9f454c9968647
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:02
create-version=1
source=select `a`.`no_sales` AS `no_sales`,`a`.`date_trn` AS `date_trn`,concat((case when isnull(`b`.`first_name`) then \'\' else `b`.`first_name` end),\' \',(case when isnull(`b`.`last_name`) then \'\' else `b`.`last_name` end)) AS `customer`,`a`.`total` AS `total` from (`trn_sales_head` `a` join `mst_customer` `b` on((`b`.`id_customer` = `a`.`id_customer`))) union all select `a`.`no_sales` AS `no_sales`,`a`.`date_trn` AS `date_trn`,(case when isnull(`a`.`customer`) then concat((case when isnull(`b`.`first_name`) then \'\' else `b`.`first_name` end),\' \',(case when isnull(`b`.`last_name`) then \'\' else `b`.`last_name` end)) else `a`.`customer` end) AS `customer`,`a`.`total` AS `total` from (`trn_cashier_head` `a` left join `mst_customer` `b` on((`b`.`id_customer` = `a`.`id_customer`))) order by `no_sales` desc limit 100
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `a`.`no_sales` AS `no_sales`,`a`.`date_trn` AS `date_trn`,concat((case when isnull(`b`.`first_name`) then \'\' else `b`.`first_name` end),\' \',(case when isnull(`b`.`last_name`) then \'\' else `b`.`last_name` end)) AS `customer`,`a`.`total` AS `total` from (`ideaccounting_dev`.`trn_sales_head` `a` join `ideaccounting_dev`.`mst_customer` `b` on((`b`.`id_customer` = `a`.`id_customer`))) union all select `a`.`no_sales` AS `no_sales`,`a`.`date_trn` AS `date_trn`,(case when isnull(`a`.`customer`) then concat((case when isnull(`b`.`first_name`) then \'\' else `b`.`first_name` end),\' \',(case when isnull(`b`.`last_name`) then \'\' else `b`.`last_name` end)) else `a`.`customer` end) AS `customer`,`a`.`total` AS `total` from (`ideaccounting_dev`.`trn_cashier_head` `a` left join `ideaccounting_dev`.`mst_customer` `b` on((`b`.`id_customer` = `a`.`id_customer`))) order by `no_sales` desc limit 100
