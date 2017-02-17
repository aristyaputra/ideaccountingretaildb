TYPE=VIEW
query=select `b`.`username` AS `username`,`a`.`id_employee` AS `id_employee`,(case when isnull(`a`.`photo`) then \'\' else `a`.`photo` end) AS `photo` from (`ideaccounting_dev`.`mst_employee` `a` join `ideaccounting_dev`.`mst_user` `b` on((`b`.`id_employee` = `a`.`id_employee`)))
md5=2b2e02fdb2174001eea259a98e203f87
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:06
create-version=1
source=select `b`.`username` AS `username`,`a`.`id_employee` AS `id_employee`,(case when isnull(`a`.`photo`) then \'\' else `a`.`photo` end) AS `photo` from (`mst_employee` `a` join `mst_user` `b` on((`b`.`id_employee` = `a`.`id_employee`)))
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select `b`.`username` AS `username`,`a`.`id_employee` AS `id_employee`,(case when isnull(`a`.`photo`) then \'\' else `a`.`photo` end) AS `photo` from (`ideaccounting_dev`.`mst_employee` `a` join `ideaccounting_dev`.`mst_user` `b` on((`b`.`id_employee` = `a`.`id_employee`)))
