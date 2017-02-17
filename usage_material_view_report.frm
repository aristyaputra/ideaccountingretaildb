TYPE=VIEW
query=select `a`.`wo_no` AS `wo_no`,`a`.`usage_no` AS `usage_no`,`c`.`item_name` AS `item_name`,`a`.`total_cost` AS `total_cost`,`a`.`notes` AS `notes`,`d`.`item_name` AS `material_name`,`b`.`qty` AS `qty`,`e`.`unit` AS `unit`,`b`.`cost` AS `cost`,`b`.`total_cost` AS `total_cost_material`,`b`.`material_type_id` AS `material_type_id` from ((((`ideaccounting_dev`.`trn_usage_material_head` `a` join `ideaccounting_dev`.`trn_usage_material_det` `b` on((`a`.`usage_no` = `b`.`usage_no`))) join `ideaccounting_dev`.`mst_item` `c` on((`c`.`id_item` = `a`.`id_item_production`))) join `ideaccounting_dev`.`mst_item` `d` on((`d`.`id_item` = `b`.`item_id`))) join `ideaccounting_dev`.`mst_unit` `e` on((`e`.`id_unit` = `b`.`id_unit`)))
md5=88c044e8dd03f53332b3b132ab3b8a59
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:00
create-version=1
source=select `a`.`wo_no` AS `wo_no`,`a`.`usage_no` AS `usage_no`,`c`.`item_name` AS `item_name`,`a`.`total_cost` AS `total_cost`,`a`.`notes` AS `notes`,`d`.`item_name` AS `material_name`,`b`.`qty` AS `qty`,`e`.`unit` AS `unit`,`b`.`cost` AS `cost`,`b`.`total_cost` AS `total_cost_material`,`b`.`material_type_id` AS `material_type_id` from ((((`trn_usage_material_head` `a` join `trn_usage_material_det` `b` on((`a`.`usage_no` = `b`.`usage_no`))) join `mst_item` `c` on((`c`.`id_item` = `a`.`id_item_production`))) join `mst_item` `d` on((`d`.`id_item` = `b`.`item_id`))) join `mst_unit` `e` on((`e`.`id_unit` = `b`.`id_unit`)))
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `a`.`wo_no` AS `wo_no`,`a`.`usage_no` AS `usage_no`,`c`.`item_name` AS `item_name`,`a`.`total_cost` AS `total_cost`,`a`.`notes` AS `notes`,`d`.`item_name` AS `material_name`,`b`.`qty` AS `qty`,`e`.`unit` AS `unit`,`b`.`cost` AS `cost`,`b`.`total_cost` AS `total_cost_material`,`b`.`material_type_id` AS `material_type_id` from ((((`ideaccounting_dev`.`trn_usage_material_head` `a` join `ideaccounting_dev`.`trn_usage_material_det` `b` on((`a`.`usage_no` = `b`.`usage_no`))) join `ideaccounting_dev`.`mst_item` `c` on((`c`.`id_item` = `a`.`id_item_production`))) join `ideaccounting_dev`.`mst_item` `d` on((`d`.`id_item` = `b`.`item_id`))) join `ideaccounting_dev`.`mst_unit` `e` on((`e`.`id_unit` = `b`.`id_unit`)))
