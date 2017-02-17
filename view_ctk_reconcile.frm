TYPE=VIEW
query=select `a`.`no_reconcile` AS `no_reconcile`,`a`.`date_trn` AS `date_trn`,`a`.`id_account_bank` AS `id_account_bank`,`c`.`account_name` AS `acc_nm_bank`,`a`.`notes` AS `notes`,`a`.`balance_before` AS `balance_before`,`a`.`reconcile` AS `reconcile`,`a`.`balance_after` AS `balance_after`,`b`.`id_account` AS `id_account`,`d`.`account_name` AS `account_name`,`b`.`notes` AS `notes_det`,`b`.`amount_in` AS `amount_in`,`b`.`amount_out` AS `amount_out`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city` from (((`ideaccounting_dev`.`trn_reconcile_head` `a` join `ideaccounting_dev`.`trn_reconcile_det` `b` on((`b`.`no_reconcile` = `a`.`no_reconcile`))) join `ideaccounting_dev`.`mst_account` `c` on((`c`.`id_account` = `a`.`id_account_bank`))) join `ideaccounting_dev`.`mst_account` `d` on((`d`.`id_account` = `b`.`id_account`)))
md5=8d2a7b179c4fb4b3579ffef5308e1c00
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:02
create-version=1
source=select `a`.`no_reconcile` AS `no_reconcile`,`a`.`date_trn` AS `date_trn`,`a`.`id_account_bank` AS `id_account_bank`,`c`.`account_name` AS `acc_nm_bank`,`a`.`notes` AS `notes`,`a`.`balance_before` AS `balance_before`,`a`.`reconcile` AS `reconcile`,`a`.`balance_after` AS `balance_after`,`b`.`id_account` AS `id_account`,`d`.`account_name` AS `account_name`,`b`.`notes` AS `notes_det`,`b`.`amount_in` AS `amount_in`,`b`.`amount_out` AS `amount_out`,(select `mst_company`.`company_name` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_name`,(select `mst_company`.`address` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_address`,(select `mst_company`.`city` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_city` from (((`trn_reconcile_head` `a` join `trn_reconcile_det` `b` on((`b`.`no_reconcile` = `a`.`no_reconcile`))) join `mst_account` `c` on((`c`.`id_account` = `a`.`id_account_bank`))) join `mst_account` `d` on((`d`.`id_account` = `b`.`id_account`)))
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select `a`.`no_reconcile` AS `no_reconcile`,`a`.`date_trn` AS `date_trn`,`a`.`id_account_bank` AS `id_account_bank`,`c`.`account_name` AS `acc_nm_bank`,`a`.`notes` AS `notes`,`a`.`balance_before` AS `balance_before`,`a`.`reconcile` AS `reconcile`,`a`.`balance_after` AS `balance_after`,`b`.`id_account` AS `id_account`,`d`.`account_name` AS `account_name`,`b`.`notes` AS `notes_det`,`b`.`amount_in` AS `amount_in`,`b`.`amount_out` AS `amount_out`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city` from (((`ideaccounting_dev`.`trn_reconcile_head` `a` join `ideaccounting_dev`.`trn_reconcile_det` `b` on((`b`.`no_reconcile` = `a`.`no_reconcile`))) join `ideaccounting_dev`.`mst_account` `c` on((`c`.`id_account` = `a`.`id_account_bank`))) join `ideaccounting_dev`.`mst_account` `d` on((`d`.`id_account` = `b`.`id_account`)))