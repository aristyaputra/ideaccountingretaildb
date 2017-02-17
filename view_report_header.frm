TYPE=VIEW
query=select `a`.`header_text` AS `header_text`,`b`.`company_name` AS `company_name`,`c`.`id_currency` AS `id_currency` from ((`ideaccounting_dev`.`i_project_name` `a` join `ideaccounting_dev`.`mst_company` `b`) join `ideaccounting_dev`.`view_curr_def` `c`) where ((`a`.`project_default` = 1) and (`b`.`flag_active` = 1))
md5=d3a3d57f243c950f7014549073fec57a
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:06
create-version=1
source=select `a`.`header_text` AS `header_text`,`b`.`company_name` AS `company_name`,`c`.`id_currency` AS `id_currency` from ((`i_project_name` `a` join `mst_company` `b`) join `view_curr_def` `c`) where ((`a`.`project_default` = 1) and (`b`.`flag_active` = 1))
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `a`.`header_text` AS `header_text`,`b`.`company_name` AS `company_name`,`c`.`id_currency` AS `id_currency` from ((`ideaccounting_dev`.`i_project_name` `a` join `ideaccounting_dev`.`mst_company` `b`) join `ideaccounting_dev`.`view_curr_def` `c`) where ((`a`.`project_default` = 1) and (`b`.`flag_active` = 1))
