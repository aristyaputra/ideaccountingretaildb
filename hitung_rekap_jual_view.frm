TYPE=VIEW
query=select month(`ideaccounting_dev`.`trn_sales_head`.`date_trn`) AS `tanggal`,sum(`ideaccounting_dev`.`trn_sales_head`.`total`) AS `total` from `ideaccounting_dev`.`trn_sales_head` where (year(`ideaccounting_dev`.`trn_sales_head`.`date_trn`) = (select `get_year`())) group by month(`ideaccounting_dev`.`trn_sales_head`.`date_trn`) union all select month(`ideaccounting_dev`.`trn_cashier_head`.`date_trn`) AS `tanggal`,sum(`ideaccounting_dev`.`trn_cashier_head`.`total`) AS `total` from `ideaccounting_dev`.`trn_cashier_head` where (year(`ideaccounting_dev`.`trn_cashier_head`.`date_trn`) = (select `get_year`())) group by month(`ideaccounting_dev`.`trn_cashier_head`.`date_trn`)
md5=a10462fbca9cf31cf88555b41ac6694e
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:31:59
create-version=1
source=select month(`trn_sales_head`.`date_trn`) AS `tanggal`,sum(`trn_sales_head`.`total`) AS `total` from `trn_sales_head` where (year(`trn_sales_head`.`date_trn`) = (select `get_year`())) group by month(`trn_sales_head`.`date_trn`) union all select month(`trn_cashier_head`.`date_trn`) AS `tanggal`,sum(`trn_cashier_head`.`total`) AS `total` from `trn_cashier_head` where (year(`trn_cashier_head`.`date_trn`) = (select `get_year`())) group by month(`trn_cashier_head`.`date_trn`)
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select month(`ideaccounting_dev`.`trn_sales_head`.`date_trn`) AS `tanggal`,sum(`ideaccounting_dev`.`trn_sales_head`.`total`) AS `total` from `ideaccounting_dev`.`trn_sales_head` where (year(`ideaccounting_dev`.`trn_sales_head`.`date_trn`) = (select `get_year`())) group by month(`ideaccounting_dev`.`trn_sales_head`.`date_trn`) union all select month(`ideaccounting_dev`.`trn_cashier_head`.`date_trn`) AS `tanggal`,sum(`ideaccounting_dev`.`trn_cashier_head`.`total`) AS `total` from `ideaccounting_dev`.`trn_cashier_head` where (year(`ideaccounting_dev`.`trn_cashier_head`.`date_trn`) = (select `get_year`())) group by month(`ideaccounting_dev`.`trn_cashier_head`.`date_trn`)
