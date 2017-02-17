TYPE=VIEW
query=select month(`ideaccounting_dev`.`trn_purchase_head`.`date_trn`) AS `bulan`,sum((`ideaccounting_dev`.`trn_purchase_head`.`total` * `ideaccounting_dev`.`trn_purchase_head`.`kurs`)) AS `total` from `ideaccounting_dev`.`trn_purchase_head` where (year(`ideaccounting_dev`.`trn_purchase_head`.`date_trn`) = (select `get_year`())) group by month(`ideaccounting_dev`.`trn_purchase_head`.`date_trn`)
md5=a032183d676e4f6fe80d5429aedee84c
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:31:59
create-version=1
source=select month(`trn_purchase_head`.`date_trn`) AS `bulan`,sum((`trn_purchase_head`.`total` * `trn_purchase_head`.`kurs`)) AS `total` from `trn_purchase_head` where (year(`trn_purchase_head`.`date_trn`) = (select `get_year`())) group by month(`trn_purchase_head`.`date_trn`)
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select month(`ideaccounting_dev`.`trn_purchase_head`.`date_trn`) AS `bulan`,sum((`ideaccounting_dev`.`trn_purchase_head`.`total` * `ideaccounting_dev`.`trn_purchase_head`.`kurs`)) AS `total` from `ideaccounting_dev`.`trn_purchase_head` where (year(`ideaccounting_dev`.`trn_purchase_head`.`date_trn`) = (select `get_year`())) group by month(`ideaccounting_dev`.`trn_purchase_head`.`date_trn`)
