TYPE=VIEW
query=select `ideaccounting_dev`.`mst_department_produksi`.`department_id` AS `department_id`,`ideaccounting_dev`.`mst_department_produksi`.`department_name` AS `department_name` from `ideaccounting_dev`.`mst_department_produksi` where (`ideaccounting_dev`.`mst_department_produksi`.`flag_active` = 1) order by `ideaccounting_dev`.`mst_department_produksi`.`department_id`
md5=317d1b84248e43f9bae726b63c18a759
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:31:59
create-version=1
source=select `mst_department_produksi`.`department_id` AS `department_id`,`mst_department_produksi`.`department_name` AS `department_name` from `mst_department_produksi` where (`mst_department_produksi`.`flag_active` = 1) order by `mst_department_produksi`.`department_id`
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `ideaccounting_dev`.`mst_department_produksi`.`department_id` AS `department_id`,`ideaccounting_dev`.`mst_department_produksi`.`department_name` AS `department_name` from `ideaccounting_dev`.`mst_department_produksi` where (`ideaccounting_dev`.`mst_department_produksi`.`flag_active` = 1) order by `ideaccounting_dev`.`mst_department_produksi`.`department_id`
