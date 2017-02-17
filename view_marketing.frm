TYPE=VIEW
query=select `a`.`id_employee` AS `id_employee`,concat(`b`.`first_name`,\' \',`b`.`last_name`) AS `nama`,(case when isnull(`c`.`city_name`) then \'\' else `c`.`city_name` end) AS `city`,(case when isnull(`a`.`comission`) then 0 else `a`.`comission` end) AS `comission` from ((`ideaccounting_dev`.`mst_marketing` `a` join `ideaccounting_dev`.`mst_employee` `b` on((`b`.`id_employee` = `a`.`id_employee`))) join `ideaccounting_dev`.`mst_city` `c` on((`c`.`city_code` = `a`.`city_code`)))
md5=8d13378f352ce882ccace3efdc7307e4
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:05
create-version=1
source=select `a`.`id_employee` AS `id_employee`,concat(`b`.`first_name`,\' \',`b`.`last_name`) AS `nama`,(case when isnull(`c`.`city_name`) then \'\' else `c`.`city_name` end) AS `city`,(case when isnull(`a`.`comission`) then 0 else `a`.`comission` end) AS `comission` from ((`mst_marketing` `a` join `mst_employee` `b` on((`b`.`id_employee` = `a`.`id_employee`))) join `mst_city` `c` on((`c`.`city_code` = `a`.`city_code`)))
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `a`.`id_employee` AS `id_employee`,concat(`b`.`first_name`,\' \',`b`.`last_name`) AS `nama`,(case when isnull(`c`.`city_name`) then \'\' else `c`.`city_name` end) AS `city`,(case when isnull(`a`.`comission`) then 0 else `a`.`comission` end) AS `comission` from ((`ideaccounting_dev`.`mst_marketing` `a` join `ideaccounting_dev`.`mst_employee` `b` on((`b`.`id_employee` = `a`.`id_employee`))) join `ideaccounting_dev`.`mst_city` `c` on((`c`.`city_code` = `a`.`city_code`)))
