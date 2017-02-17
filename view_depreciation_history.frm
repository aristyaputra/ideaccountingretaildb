TYPE=VIEW
query=select `a`.`id_aset` AS `id_aset`,`b`.`nama` AS `nama`,`c`.`type` AS `type`,`a`.`date_trn` AS `date_trn`,`a`.`nominal` AS `nominal`,`a`.`period` AS `period`,`a`.`years` AS `years`,`d`.`department_name` AS `department_name`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city`,(select (case when isnull(`ideaccounting_dev`.`i_project_name`.`header_text`) then \'\' else `ideaccounting_dev`.`i_project_name`.`header_text` end) AS `header_text` from `ideaccounting_dev`.`i_project_name` where (`ideaccounting_dev`.`i_project_name`.`project_default` = 1)) AS `header_text` from (((`ideaccounting_dev`.`i_aset_depreciation` `a` join `ideaccounting_dev`.`mst_aset` `b` on((`b`.`id_aset` = `a`.`id_aset`))) join `ideaccounting_dev`.`mst_golaset` `c` on((`c`.`id_golongan` = `b`.`id_golongan`))) join `ideaccounting_dev`.`mst_department` `d` on((`d`.`department_id` = `b`.`id_department`)))
md5=ffa22f63e04b95599016169501c409c3
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:03
create-version=1
source=select `a`.`id_aset` AS `id_aset`,`b`.`nama` AS `nama`,`c`.`type` AS `type`,`a`.`date_trn` AS `date_trn`,`a`.`nominal` AS `nominal`,`a`.`period` AS `period`,`a`.`years` AS `years`,`d`.`department_name` AS `department_name`,(select `mst_company`.`company_name` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_name`,(select `mst_company`.`address` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_address`,(select `mst_company`.`city` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_city`,(select (case when isnull(`i_project_name`.`header_text`) then \'\' else `i_project_name`.`header_text` end) AS `header_text` from `i_project_name` where (`i_project_name`.`project_default` = 1)) AS `header_text` from (((`i_aset_depreciation` `a` join `mst_aset` `b` on((`b`.`id_aset` = `a`.`id_aset`))) join `mst_golaset` `c` on((`c`.`id_golongan` = `b`.`id_golongan`))) join `mst_department` `d` on((`d`.`department_id` = `b`.`id_department`)))
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select `a`.`id_aset` AS `id_aset`,`b`.`nama` AS `nama`,`c`.`type` AS `type`,`a`.`date_trn` AS `date_trn`,`a`.`nominal` AS `nominal`,`a`.`period` AS `period`,`a`.`years` AS `years`,`d`.`department_name` AS `department_name`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city`,(select (case when isnull(`ideaccounting_dev`.`i_project_name`.`header_text`) then \'\' else `ideaccounting_dev`.`i_project_name`.`header_text` end) AS `header_text` from `ideaccounting_dev`.`i_project_name` where (`ideaccounting_dev`.`i_project_name`.`project_default` = 1)) AS `header_text` from (((`ideaccounting_dev`.`i_aset_depreciation` `a` join `ideaccounting_dev`.`mst_aset` `b` on((`b`.`id_aset` = `a`.`id_aset`))) join `ideaccounting_dev`.`mst_golaset` `c` on((`c`.`id_golongan` = `b`.`id_golongan`))) join `ideaccounting_dev`.`mst_department` `d` on((`d`.`department_id` = `b`.`id_department`)))
