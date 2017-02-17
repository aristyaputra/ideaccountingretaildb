TYPE=VIEW
query=select `a`.`username` AS `username`,`a`.`password` AS `password`,(case when isnull(`a`.`flag_active`) then 0 else `a`.`flag_active` end) AS `flag_active`,concat((case when isnull(`b`.`first_name`) then \'\' else `b`.`first_name` end),\' \',(case when isnull(`b`.`last_name`) then \'\' else `b`.`last_name` end)) AS `nama`,(case when isnull(`c`.`position_name`) then \'\' else `c`.`position_name` end) AS `position`,(case when isnull(`d`.`department_name`) then \'\' else `d`.`department_name` end) AS `departement` from (((`ideaccounting_dev`.`mst_user` `a` join `ideaccounting_dev`.`mst_employee` `b` on((`b`.`id_employee` = `a`.`id_employee`))) left join `ideaccounting_dev`.`mst_position` `c` on((`c`.`position_id` = `b`.`position_id`))) left join `ideaccounting_dev`.`mst_department` `d` on((`d`.`department_id` = `b`.`department_id`)))
md5=20e25969719d4f481dfbf71de1198d70
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:06
create-version=1
source=select `a`.`username` AS `username`,`a`.`password` AS `password`,(case when isnull(`a`.`flag_active`) then 0 else `a`.`flag_active` end) AS `flag_active`,concat((case when isnull(`b`.`first_name`) then \'\' else `b`.`first_name` end),\' \',(case when isnull(`b`.`last_name`) then \'\' else `b`.`last_name` end)) AS `nama`,(case when isnull(`c`.`position_name`) then \'\' else `c`.`position_name` end) AS `position`,(case when isnull(`d`.`department_name`) then \'\' else `d`.`department_name` end) AS `departement` from (((`mst_user` `a` join `mst_employee` `b` on((`b`.`id_employee` = `a`.`id_employee`))) left join `mst_position` `c` on((`c`.`position_id` = `b`.`position_id`))) left join `mst_department` `d` on((`d`.`department_id` = `b`.`department_id`)))
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `a`.`username` AS `username`,`a`.`password` AS `password`,(case when isnull(`a`.`flag_active`) then 0 else `a`.`flag_active` end) AS `flag_active`,concat((case when isnull(`b`.`first_name`) then \'\' else `b`.`first_name` end),\' \',(case when isnull(`b`.`last_name`) then \'\' else `b`.`last_name` end)) AS `nama`,(case when isnull(`c`.`position_name`) then \'\' else `c`.`position_name` end) AS `position`,(case when isnull(`d`.`department_name`) then \'\' else `d`.`department_name` end) AS `departement` from (((`ideaccounting_dev`.`mst_user` `a` join `ideaccounting_dev`.`mst_employee` `b` on((`b`.`id_employee` = `a`.`id_employee`))) left join `ideaccounting_dev`.`mst_position` `c` on((`c`.`position_id` = `b`.`position_id`))) left join `ideaccounting_dev`.`mst_department` `d` on((`d`.`department_id` = `b`.`department_id`)))
