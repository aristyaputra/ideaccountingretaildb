TYPE=VIEW
query=select `a`.`no_purchase` AS `no_purchase`,cast(`a`.`date_trn` as date) AS `date_trn`,`a`.`id_supplier` AS `id_supplier`,concat((case when isnull(`c`.`first_name`) then \'\' else `c`.`first_name` end),\' \',(case when isnull(`c`.`last_name`) then \'\' else `c`.`last_name` end)) AS `nama_supplier`,`a`.`subtotal` AS `subtotal`,`a`.`freight` AS `freight`,((`a`.`disc` * (`a`.`subtotal` + `a`.`freight`)) / 100) AS `discount`,((`a`.`subtotal` + `a`.`freight`) - ((`a`.`disc` * (`a`.`subtotal` + `a`.`freight`)) / 100)) AS `subtotal_nett`,((`a`.`tax` / 100) * ((`a`.`subtotal` + `a`.`freight`) - ((`a`.`disc` * `a`.`subtotal`) / 100))) AS `PPN`,`a`.`total` AS `total`,`a`.`notes` AS `notes`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city` from (`ideaccounting_dev`.`trn_purchase_head` `a` join `ideaccounting_dev`.`mst_supplier` `c` on((`c`.`id_supplier` = `a`.`id_supplier`)))
md5=c2078b658811c172bcde45c240104990
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:05
create-version=1
source=select `a`.`no_purchase` AS `no_purchase`,cast(`a`.`date_trn` as date) AS `date_trn`,`a`.`id_supplier` AS `id_supplier`,concat((case when isnull(`c`.`first_name`) then \'\' else `c`.`first_name` end),\' \',(case when isnull(`c`.`last_name`) then \'\' else `c`.`last_name` end)) AS `nama_supplier`,`a`.`subtotal` AS `subtotal`,`a`.`freight` AS `freight`,((`a`.`disc` * (`a`.`subtotal` + `a`.`freight`)) / 100) AS `discount`,((`a`.`subtotal` + `a`.`freight`) - ((`a`.`disc` * (`a`.`subtotal` + `a`.`freight`)) / 100)) AS `subtotal_nett`,((`a`.`tax` / 100) * ((`a`.`subtotal` + `a`.`freight`) - ((`a`.`disc` * `a`.`subtotal`) / 100))) AS `PPN`,`a`.`total` AS `total`,`a`.`notes` AS `notes`,(select `mst_company`.`company_name` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_name`,(select `mst_company`.`address` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_address`,(select `mst_company`.`city` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_city` from (`trn_purchase_head` `a` join `mst_supplier` `c` on((`c`.`id_supplier` = `a`.`id_supplier`)))
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `a`.`no_purchase` AS `no_purchase`,cast(`a`.`date_trn` as date) AS `date_trn`,`a`.`id_supplier` AS `id_supplier`,concat((case when isnull(`c`.`first_name`) then \'\' else `c`.`first_name` end),\' \',(case when isnull(`c`.`last_name`) then \'\' else `c`.`last_name` end)) AS `nama_supplier`,`a`.`subtotal` AS `subtotal`,`a`.`freight` AS `freight`,((`a`.`disc` * (`a`.`subtotal` + `a`.`freight`)) / 100) AS `discount`,((`a`.`subtotal` + `a`.`freight`) - ((`a`.`disc` * (`a`.`subtotal` + `a`.`freight`)) / 100)) AS `subtotal_nett`,((`a`.`tax` / 100) * ((`a`.`subtotal` + `a`.`freight`) - ((`a`.`disc` * `a`.`subtotal`) / 100))) AS `PPN`,`a`.`total` AS `total`,`a`.`notes` AS `notes`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city` from (`ideaccounting_dev`.`trn_purchase_head` `a` join `ideaccounting_dev`.`mst_supplier` `c` on((`c`.`id_supplier` = `a`.`id_supplier`)))
