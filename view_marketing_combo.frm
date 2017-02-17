TYPE=VIEW
query=select `a`.`id_employee` AS `id_employee`,concat(`b`.`first_name`,\' \',`b`.`last_name`) AS `nama` from (`ideaccounting_dev`.`mst_marketing` `a` join `ideaccounting_dev`.`mst_employee` `b` on((`b`.`id_employee` = `a`.`id_employee`))) union all select \'OFC\' AS `OFC`,\'Office\' AS `Office`
md5=ef902cce18f137990e2ee76955010eb3
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:06
create-version=1
source=select `a`.`id_employee` AS `id_employee`,concat(`b`.`first_name`,\' \',`b`.`last_name`) AS `nama` from (`mst_marketing` `a` join `mst_employee` `b` on((`b`.`id_employee` = `a`.`id_employee`))) union all select \'OFC\' AS `OFC`,\'Office\' AS `Office`
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select `a`.`id_employee` AS `id_employee`,concat(`b`.`first_name`,\' \',`b`.`last_name`) AS `nama` from (`ideaccounting_dev`.`mst_marketing` `a` join `ideaccounting_dev`.`mst_employee` `b` on((`b`.`id_employee` = `a`.`id_employee`))) union all select \'OFC\' AS `OFC`,\'Office\' AS `Office`
