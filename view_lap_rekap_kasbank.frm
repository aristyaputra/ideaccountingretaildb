TYPE=VIEW
query=select `a`.`cashbank_no` AS `cashbank_no`,cast(`a`.`date_trn` as date) AS `date_trn`,`a`.`id_account` AS `id_account`,`c`.`account_name` AS `account_name`,`a`.`total` AS `total`,`a`.`notes` AS `notes`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city`,`a`.`id_currency` AS `id_currency` from (`ideaccounting_dev`.`trn_cashbank_head` `a` left join `ideaccounting_dev`.`mst_account` `c` on((`c`.`id_account` = `a`.`id_account`)))
md5=5155f9501a930f74d3dc6d371767e398
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:05
create-version=1
source=select `a`.`cashbank_no` AS `cashbank_no`,cast(`a`.`date_trn` as date) AS `date_trn`,`a`.`id_account` AS `id_account`,`c`.`account_name` AS `account_name`,`a`.`total` AS `total`,`a`.`notes` AS `notes`,(select `mst_company`.`company_name` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_name`,(select `mst_company`.`address` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_address`,(select `mst_company`.`city` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_city`,`a`.`id_currency` AS `id_currency` from (`trn_cashbank_head` `a` left join `mst_account` `c` on((`c`.`id_account` = `a`.`id_account`)))
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select `a`.`cashbank_no` AS `cashbank_no`,cast(`a`.`date_trn` as date) AS `date_trn`,`a`.`id_account` AS `id_account`,`c`.`account_name` AS `account_name`,`a`.`total` AS `total`,`a`.`notes` AS `notes`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city`,`a`.`id_currency` AS `id_currency` from (`ideaccounting_dev`.`trn_cashbank_head` `a` left join `ideaccounting_dev`.`mst_account` `c` on((`c`.`id_account` = `a`.`id_account`)))
