TYPE=VIEW
query=select `a`.`id_account` AS `id_account`,`a`.`account_name` AS `account_name`,`a`.`parent` AS `parent`,`a`.`saldo` AS `saldo`,`a`.`header_group` AS `header_group`,`a`.`company_name` AS `company_name`,`c`.`account_name` AS `account_parent`,(case when isnull(`b`.`saldo`) then 0 else `b`.`saldo` end) AS `saldo_th_lalu`,(select `view_curr_def`.`id_currency` from `ideaccounting_dev`.`view_curr_def`) AS `curr`,`c`.`parent` AS `parent2`,ucase(`d`.`account_name`) AS `account_parent2`,`d`.`parent` AS `parent3`,ucase(`e`.`account_name`) AS `account_parent3`,(select (case when isnull(`ideaccounting_dev`.`i_project_name`.`header_text`) then \'\' else `ideaccounting_dev`.`i_project_name`.`header_text` end) AS `header_text` from `ideaccounting_dev`.`i_project_name` where (`ideaccounting_dev`.`i_project_name`.`project_default` = 1)) AS `header_text`,(select (case when isnull(`ideaccounting_dev`.`i_project_name`.`profit_notes`) then \'\' else `ideaccounting_dev`.`i_project_name`.`profit_notes` end) AS `profit_notes` from `ideaccounting_dev`.`i_project_name` where (`ideaccounting_dev`.`i_project_name`.`project_default` = 1)) AS `profit_notes` from ((((`ideaccounting_dev`.`temp_income_lra` `a` left join `ideaccounting_dev`.`temp_income_lra_tahunlalu` `b` on((`b`.`id_account` = `a`.`id_account`))) join `ideaccounting_dev`.`mst_account` `c` on((`c`.`id_account` = `a`.`parent`))) join `ideaccounting_dev`.`mst_account` `d` on((`d`.`id_account` = `c`.`parent`))) join `ideaccounting_dev`.`mst_account` `e` on((`e`.`id_account` = `d`.`parent`)))
md5=e7188efae37e5391a2aba92032bb300f
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:04
create-version=1
source=select `a`.`id_account` AS `id_account`,`a`.`account_name` AS `account_name`,`a`.`parent` AS `parent`,`a`.`saldo` AS `saldo`,`a`.`header_group` AS `header_group`,`a`.`company_name` AS `company_name`,`c`.`account_name` AS `account_parent`,(case when isnull(`b`.`saldo`) then 0 else `b`.`saldo` end) AS `saldo_th_lalu`,(select `view_curr_def`.`id_currency` from `view_curr_def`) AS `curr`,`c`.`parent` AS `parent2`,ucase(`d`.`account_name`) AS `account_parent2`,`d`.`parent` AS `parent3`,ucase(`e`.`account_name`) AS `account_parent3`,(select (case when isnull(`i_project_name`.`header_text`) then \'\' else `i_project_name`.`header_text` end) AS `header_text` from `i_project_name` where (`i_project_name`.`project_default` = 1)) AS `header_text`,(select (case when isnull(`i_project_name`.`profit_notes`) then \'\' else `i_project_name`.`profit_notes` end) AS `profit_notes` from `i_project_name` where (`i_project_name`.`project_default` = 1)) AS `profit_notes` from ((((`temp_income_lra` `a` left join `temp_income_lra_tahunlalu` `b` on((`b`.`id_account` = `a`.`id_account`))) join `mst_account` `c` on((`c`.`id_account` = `a`.`parent`))) join `mst_account` `d` on((`d`.`id_account` = `c`.`parent`))) join `mst_account` `e` on((`e`.`id_account` = `d`.`parent`)))
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select `a`.`id_account` AS `id_account`,`a`.`account_name` AS `account_name`,`a`.`parent` AS `parent`,`a`.`saldo` AS `saldo`,`a`.`header_group` AS `header_group`,`a`.`company_name` AS `company_name`,`c`.`account_name` AS `account_parent`,(case when isnull(`b`.`saldo`) then 0 else `b`.`saldo` end) AS `saldo_th_lalu`,(select `view_curr_def`.`id_currency` from `ideaccounting_dev`.`view_curr_def`) AS `curr`,`c`.`parent` AS `parent2`,ucase(`d`.`account_name`) AS `account_parent2`,`d`.`parent` AS `parent3`,ucase(`e`.`account_name`) AS `account_parent3`,(select (case when isnull(`ideaccounting_dev`.`i_project_name`.`header_text`) then \'\' else `ideaccounting_dev`.`i_project_name`.`header_text` end) AS `header_text` from `ideaccounting_dev`.`i_project_name` where (`ideaccounting_dev`.`i_project_name`.`project_default` = 1)) AS `header_text`,(select (case when isnull(`ideaccounting_dev`.`i_project_name`.`profit_notes`) then \'\' else `ideaccounting_dev`.`i_project_name`.`profit_notes` end) AS `profit_notes` from `ideaccounting_dev`.`i_project_name` where (`ideaccounting_dev`.`i_project_name`.`project_default` = 1)) AS `profit_notes` from ((((`ideaccounting_dev`.`temp_income_lra` `a` left join `ideaccounting_dev`.`temp_income_lra_tahunlalu` `b` on((`b`.`id_account` = `a`.`id_account`))) join `ideaccounting_dev`.`mst_account` `c` on((`c`.`id_account` = `a`.`parent`))) join `ideaccounting_dev`.`mst_account` `d` on((`d`.`id_account` = `c`.`parent`))) join `ideaccounting_dev`.`mst_account` `e` on((`e`.`id_account` = `d`.`parent`)))