TYPE=VIEW
query=select `ideaccounting_dev`.`mst_standard_cost`.`id_cost` AS `id_cost`,`ideaccounting_dev`.`mst_standard_cost`.`cost_name` AS `cost_name`,`ideaccounting_dev`.`mst_standard_cost`.`cost_def` AS `cost_def` from `ideaccounting_dev`.`mst_standard_cost` where (`ideaccounting_dev`.`mst_standard_cost`.`flag_active` = 1)
md5=72de1cab1488abd55e39aff0df893917
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:31:59
create-version=1
source=select `mst_standard_cost`.`id_cost` AS `id_cost`,`mst_standard_cost`.`cost_name` AS `cost_name`,`mst_standard_cost`.`cost_def` AS `cost_def` from `mst_standard_cost` where (`mst_standard_cost`.`flag_active` = 1)
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `ideaccounting_dev`.`mst_standard_cost`.`id_cost` AS `id_cost`,`ideaccounting_dev`.`mst_standard_cost`.`cost_name` AS `cost_name`,`ideaccounting_dev`.`mst_standard_cost`.`cost_def` AS `cost_def` from `ideaccounting_dev`.`mst_standard_cost` where (`ideaccounting_dev`.`mst_standard_cost`.`flag_active` = 1)
