TYPE=VIEW
query=select `a`.`no_purchase` AS `no_purchase`,concat((case when isnull(`c`.`first_name`) then \'\' else `c`.`first_name` end),\' \',(case when isnull(`c`.`last_name`) then \'\' else `c`.`last_name` end)) AS `supplier`,`a`.`purchase_amount` AS `purchase_amount`,`a`.`return_amount` AS `return_amount`,(`a`.`purchase_amount` - `a`.`return_amount`) AS `nett_purch`,`b`.`no_payment_ap` AS `no_payment_ap`,`d`.`date_trn` AS `date_trn`,`a`.`disc_amount` AS `disc_amount`,`b`.`paid_amount` AS `paid_amount`,`d`.`notes` AS `notes`,`d`.`id_supplier` AS `id_supplier`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city`,`d`.`id_currency` AS `id_currency` from (((`ideaccounting_dev`.`ap_status` `a` join `ideaccounting_dev`.`trn_payment_ap_det` `b` on((`b`.`no_purchase` = `a`.`no_purchase`))) join `ideaccounting_dev`.`mst_supplier` `c` on((`c`.`id_supplier` = `a`.`id_supplier`))) join `ideaccounting_dev`.`trn_payment_ap_head` `d` on((`d`.`no_payment_ap` = `b`.`no_payment_ap`))) where (`a`.`balance` = 0)
md5=ecf6b3e3473fe74e73e2c2af676f089d
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:04
create-version=1
source=select `a`.`no_purchase` AS `no_purchase`,concat((case when isnull(`c`.`first_name`) then \'\' else `c`.`first_name` end),\' \',(case when isnull(`c`.`last_name`) then \'\' else `c`.`last_name` end)) AS `supplier`,`a`.`purchase_amount` AS `purchase_amount`,`a`.`return_amount` AS `return_amount`,(`a`.`purchase_amount` - `a`.`return_amount`) AS `nett_purch`,`b`.`no_payment_ap` AS `no_payment_ap`,`d`.`date_trn` AS `date_trn`,`a`.`disc_amount` AS `disc_amount`,`b`.`paid_amount` AS `paid_amount`,`d`.`notes` AS `notes`,`d`.`id_supplier` AS `id_supplier`,(select `mst_company`.`company_name` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_name`,(select `mst_company`.`address` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_address`,(select `mst_company`.`city` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_city`,`d`.`id_currency` AS `id_currency` from (((`ap_status` `a` join `trn_payment_ap_det` `b` on((`b`.`no_purchase` = `a`.`no_purchase`))) join `mst_supplier` `c` on((`c`.`id_supplier` = `a`.`id_supplier`))) join `trn_payment_ap_head` `d` on((`d`.`no_payment_ap` = `b`.`no_payment_ap`))) where (`a`.`balance` = 0)
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `a`.`no_purchase` AS `no_purchase`,concat((case when isnull(`c`.`first_name`) then \'\' else `c`.`first_name` end),\' \',(case when isnull(`c`.`last_name`) then \'\' else `c`.`last_name` end)) AS `supplier`,`a`.`purchase_amount` AS `purchase_amount`,`a`.`return_amount` AS `return_amount`,(`a`.`purchase_amount` - `a`.`return_amount`) AS `nett_purch`,`b`.`no_payment_ap` AS `no_payment_ap`,`d`.`date_trn` AS `date_trn`,`a`.`disc_amount` AS `disc_amount`,`b`.`paid_amount` AS `paid_amount`,`d`.`notes` AS `notes`,`d`.`id_supplier` AS `id_supplier`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city`,`d`.`id_currency` AS `id_currency` from (((`ideaccounting_dev`.`ap_status` `a` join `ideaccounting_dev`.`trn_payment_ap_det` `b` on((`b`.`no_purchase` = `a`.`no_purchase`))) join `ideaccounting_dev`.`mst_supplier` `c` on((`c`.`id_supplier` = `a`.`id_supplier`))) join `ideaccounting_dev`.`trn_payment_ap_head` `d` on((`d`.`no_payment_ap` = `b`.`no_payment_ap`))) where (`a`.`balance` = 0)