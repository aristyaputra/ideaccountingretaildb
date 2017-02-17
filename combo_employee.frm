TYPE=VIEW
query=select `a`.`id_employee` AS `id_employee`,concat((case when isnull(`a`.`first_name`) then \'\' else `a`.`first_name` end),\' \',(case when isnull(`a`.`last_name`) then \'\' else `a`.`last_name` end)) AS `nama`,(case when isnull(`b`.`position_name`) then \'\' else `b`.`position_name` end) AS `position_name`,(case when isnull(`c`.`department_name`) then \'\' else `c`.`department_name` end) AS `department_name` from ((`ideaccounting_dev`.`mst_employee` `a` left join `ideaccounting_dev`.`mst_position` `b` on((`b`.`position_id` = `a`.`position_id`))) left join `ideaccounting_dev`.`mst_department` `c` on((`c`.`department_id` = `a`.`department_id`)))
md5=cfda28cad6ca3b000191c2b8bbd393cd
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:31:59
create-version=1
source=select `a`.`id_employee` AS `id_employee`,concat((case when isnull(`a`.`first_name`) then \'\' else `a`.`first_name` end),\' \',(case when isnull(`a`.`last_name`) then \'\' else `a`.`last_name` end)) AS `nama`,(case when isnull(`b`.`position_name`) then \'\' else `b`.`position_name` end) AS `position_name`,(case when isnull(`c`.`department_name`) then \'\' else `c`.`department_name` end) AS `department_name` from ((`mst_employee` `a` left join `mst_position` `b` on((`b`.`position_id` = `a`.`position_id`))) left join `mst_department` `c` on((`c`.`department_id` = `a`.`department_id`)))
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `a`.`id_employee` AS `id_employee`,concat((case when isnull(`a`.`first_name`) then \'\' else `a`.`first_name` end),\' \',(case when isnull(`a`.`last_name`) then \'\' else `a`.`last_name` end)) AS `nama`,(case when isnull(`b`.`position_name`) then \'\' else `b`.`position_name` end) AS `position_name`,(case when isnull(`c`.`department_name`) then \'\' else `c`.`department_name` end) AS `department_name` from ((`ideaccounting_dev`.`mst_employee` `a` left join `ideaccounting_dev`.`mst_position` `b` on((`b`.`position_id` = `a`.`position_id`))) left join `ideaccounting_dev`.`mst_department` `c` on((`c`.`department_id` = `a`.`department_id`)))
