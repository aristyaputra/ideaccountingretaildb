TYPE=VIEW
query=select `ideaccounting_dev`.`mst_employee`.`id_employee` AS `id_employee`,concat(`ideaccounting_dev`.`mst_employee`.`first_name`,\' \',`ideaccounting_dev`.`mst_employee`.`last_name`) AS `employee_nm`,`ideaccounting_dev`.`mst_employee`.`position_id` AS `position_id`,`ideaccounting_dev`.`mst_employee`.`department_id` AS `department_id` from `ideaccounting_dev`.`mst_employee`
md5=643adb2f85867c85d70b8b626119e088
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:03
create-version=1
source=select `mst_employee`.`id_employee` AS `id_employee`,concat(`mst_employee`.`first_name`,\' \',`mst_employee`.`last_name`) AS `employee_nm`,`mst_employee`.`position_id` AS `position_id`,`mst_employee`.`department_id` AS `department_id` from `mst_employee`
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select `ideaccounting_dev`.`mst_employee`.`id_employee` AS `id_employee`,concat(`ideaccounting_dev`.`mst_employee`.`first_name`,\' \',`ideaccounting_dev`.`mst_employee`.`last_name`) AS `employee_nm`,`ideaccounting_dev`.`mst_employee`.`position_id` AS `position_id`,`ideaccounting_dev`.`mst_employee`.`department_id` AS `department_id` from `ideaccounting_dev`.`mst_employee`
