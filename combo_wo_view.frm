TYPE=VIEW
query=select `a`.`wo_no` AS `wo_no`,`b`.`department_name` AS `department_name`,`a`.`department_id` AS `department_id`,cast(`a`.`start_date` as date) AS `tgl_mulai`,concat((case when isnull(`c`.`first_name`) then \'\' else `c`.`first_name` end),\' \',(case when isnull(`c`.`last_name`) then \'\' else `c`.`last_name` end)) AS `pic`,cast(`a`.`expected_date` as date) AS `expected_date` from ((`ideaccounting_dev`.`trn_wo_head` `a` join `ideaccounting_dev`.`mst_department_produksi` `b` on((`b`.`department_id` = `a`.`department_id`))) join `ideaccounting_dev`.`mst_employee` `c` on((`c`.`id_employee` = `a`.`pic`))) where ((case when isnull(`a`.`finished`) then 0 else `a`.`finished` end) = 0)
md5=fa42e8e5d1a1ba8c2625640d1d05005f
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:31:59
create-version=1
source=select `a`.`wo_no` AS `wo_no`,`b`.`department_name` AS `department_name`,`a`.`department_id` AS `department_id`,cast(`a`.`start_date` as date) AS `tgl_mulai`,concat((case when isnull(`c`.`first_name`) then \'\' else `c`.`first_name` end),\' \',(case when isnull(`c`.`last_name`) then \'\' else `c`.`last_name` end)) AS `pic`,cast(`a`.`expected_date` as date) AS `expected_date` from ((`trn_wo_head` `a` join `mst_department_produksi` `b` on((`b`.`department_id` = `a`.`department_id`))) join `mst_employee` `c` on((`c`.`id_employee` = `a`.`pic`))) where ((case when isnull(`a`.`finished`) then 0 else `a`.`finished` end) = 0)
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `a`.`wo_no` AS `wo_no`,`b`.`department_name` AS `department_name`,`a`.`department_id` AS `department_id`,cast(`a`.`start_date` as date) AS `tgl_mulai`,concat((case when isnull(`c`.`first_name`) then \'\' else `c`.`first_name` end),\' \',(case when isnull(`c`.`last_name`) then \'\' else `c`.`last_name` end)) AS `pic`,cast(`a`.`expected_date` as date) AS `expected_date` from ((`ideaccounting_dev`.`trn_wo_head` `a` join `ideaccounting_dev`.`mst_department_produksi` `b` on((`b`.`department_id` = `a`.`department_id`))) join `ideaccounting_dev`.`mst_employee` `c` on((`c`.`id_employee` = `a`.`pic`))) where ((case when isnull(`a`.`finished`) then 0 else `a`.`finished` end) = 0)
