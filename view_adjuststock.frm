TYPE=VIEW
query=select `a`.`no_adjust_stock` AS `no_adjust_stock`,`b`.`warehouse_name` AS `warehouse_name`,`a`.`date_trn` AS `date_trn`,`a`.`total_adjust` AS `total_adjust`,`a`.`notes` AS `notes` from (`ideaccounting_dev`.`trn_adjust_stock_head` `a` join `ideaccounting_dev`.`mst_warehouse` `b` on((`b`.`id_warehouse` = `a`.`id_warehouse`)))
md5=8494c5867b3cdca7c96a485cb58fd5e5
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:00
create-version=1
source=select `a`.`no_adjust_stock` AS `no_adjust_stock`,`b`.`warehouse_name` AS `warehouse_name`,`a`.`date_trn` AS `date_trn`,`a`.`total_adjust` AS `total_adjust`,`a`.`notes` AS `notes` from (`trn_adjust_stock_head` `a` join `mst_warehouse` `b` on((`b`.`id_warehouse` = `a`.`id_warehouse`)))
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select `a`.`no_adjust_stock` AS `no_adjust_stock`,`b`.`warehouse_name` AS `warehouse_name`,`a`.`date_trn` AS `date_trn`,`a`.`total_adjust` AS `total_adjust`,`a`.`notes` AS `notes` from (`ideaccounting_dev`.`trn_adjust_stock_head` `a` join `ideaccounting_dev`.`mst_warehouse` `b` on((`b`.`id_warehouse` = `a`.`id_warehouse`)))
