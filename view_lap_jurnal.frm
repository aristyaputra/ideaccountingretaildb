TYPE=VIEW
query=select cast(`a`.`date_trn` as date) AS `date_trn`,`b`.`no_ledger` AS `no_ledger`,`b`.`id_account` AS `id_account`,`c`.`account_name` AS `account_name`,`b`.`notes` AS `notes`,(case when (`b`.`nominal` > 0) then `b`.`nominal` else 0 end) AS `debit`,(case when (`b`.`nominal` < 0) then (-(1) * `b`.`nominal`) else 0 end) AS `kredit`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city`,(select `ideaccounting_dev`.`mst_currency`.`id_currency` from `ideaccounting_dev`.`mst_currency` where (`ideaccounting_dev`.`mst_currency`.`flag_default` = 1)) AS `curr`,(select (case when isnull(`ideaccounting_dev`.`i_project_name`.`header_text`) then \'\' else `ideaccounting_dev`.`i_project_name`.`header_text` end) AS `header_text` from `ideaccounting_dev`.`i_project_name` where (`ideaccounting_dev`.`i_project_name`.`project_default` = 1)) AS `header_text` from ((`ideaccounting_dev`.`trn_ledger_head` `a` join `ideaccounting_dev`.`trn_ledger_det` `b` on((`b`.`no_ledger` = `a`.`no_ledger`))) join `ideaccounting_dev`.`mst_account` `c` on((`c`.`id_account` = `b`.`id_account`))) order by `a`.`date_trn`,`a`.`no_ledger`
md5=26eb271445069355607ca15c8f0ef3b6
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:04
create-version=1
source=select cast(`a`.`date_trn` as date) AS `date_trn`,`b`.`no_ledger` AS `no_ledger`,`b`.`id_account` AS `id_account`,`c`.`account_name` AS `account_name`,`b`.`notes` AS `notes`,(case when (`b`.`nominal` > 0) then `b`.`nominal` else 0 end) AS `debit`,(case when (`b`.`nominal` < 0) then (-(1) * `b`.`nominal`) else 0 end) AS `kredit`,(select `mst_company`.`company_name` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_name`,(select `mst_company`.`address` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_address`,(select `mst_company`.`city` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_city`,(select `mst_currency`.`id_currency` from `mst_currency` where (`mst_currency`.`flag_default` = 1)) AS `curr`,(select (case when isnull(`i_project_name`.`header_text`) then \'\' else `i_project_name`.`header_text` end) AS `header_text` from `i_project_name` where (`i_project_name`.`project_default` = 1)) AS `header_text` from ((`trn_ledger_head` `a` join `trn_ledger_det` `b` on((`b`.`no_ledger` = `a`.`no_ledger`))) join `mst_account` `c` on((`c`.`id_account` = `b`.`id_account`))) order by `a`.`date_trn`,`a`.`no_ledger`
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select cast(`a`.`date_trn` as date) AS `date_trn`,`b`.`no_ledger` AS `no_ledger`,`b`.`id_account` AS `id_account`,`c`.`account_name` AS `account_name`,`b`.`notes` AS `notes`,(case when (`b`.`nominal` > 0) then `b`.`nominal` else 0 end) AS `debit`,(case when (`b`.`nominal` < 0) then (-(1) * `b`.`nominal`) else 0 end) AS `kredit`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city`,(select `ideaccounting_dev`.`mst_currency`.`id_currency` from `ideaccounting_dev`.`mst_currency` where (`ideaccounting_dev`.`mst_currency`.`flag_default` = 1)) AS `curr`,(select (case when isnull(`ideaccounting_dev`.`i_project_name`.`header_text`) then \'\' else `ideaccounting_dev`.`i_project_name`.`header_text` end) AS `header_text` from `ideaccounting_dev`.`i_project_name` where (`ideaccounting_dev`.`i_project_name`.`project_default` = 1)) AS `header_text` from ((`ideaccounting_dev`.`trn_ledger_head` `a` join `ideaccounting_dev`.`trn_ledger_det` `b` on((`b`.`no_ledger` = `a`.`no_ledger`))) join `ideaccounting_dev`.`mst_account` `c` on((`c`.`id_account` = `b`.`id_account`))) order by `a`.`date_trn`,`a`.`no_ledger`
