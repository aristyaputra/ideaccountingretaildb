TYPE=VIEW
query=select `a`.`no_reconcile` AS `no_reconcile`,`b`.`account_name` AS `nama`,`a`.`date_trn` AS `date_trn`,`a`.`notes` AS `notes`,`a`.`id_account_bank` AS `id_account_bank`,`c`.`id_account` AS `id_account_det`,`d`.`account_name` AS `account_name`,`c`.`amount_in` AS `amount_in`,`c`.`amount_out` AS `amount_out`,`c`.`notes` AS `notes_det`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,`a`.`balance_before` AS `balance_before`,`a`.`balance_after` AS `balance_after`,`a`.`reconcile` AS `reconcile` from (((`ideaccounting_dev`.`trn_reconcile_head` `a` join `ideaccounting_dev`.`trn_reconcile_det` `c` on((`c`.`no_reconcile` = `a`.`no_reconcile`))) join `ideaccounting_dev`.`mst_account` `b` on((`b`.`id_account` = `a`.`id_account_bank`))) join `ideaccounting_dev`.`mst_account` `d` on((`d`.`id_account` = `c`.`id_account`)))
md5=d5804ac99d8950d9e71dc6afae35e992
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:06
create-version=1
source=select `a`.`no_reconcile` AS `no_reconcile`,`b`.`account_name` AS `nama`,`a`.`date_trn` AS `date_trn`,`a`.`notes` AS `notes`,`a`.`id_account_bank` AS `id_account_bank`,`c`.`id_account` AS `id_account_det`,`d`.`account_name` AS `account_name`,`c`.`amount_in` AS `amount_in`,`c`.`amount_out` AS `amount_out`,`c`.`notes` AS `notes_det`,(select `mst_company`.`company_name` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_name`,`a`.`balance_before` AS `balance_before`,`a`.`balance_after` AS `balance_after`,`a`.`reconcile` AS `reconcile` from (((`trn_reconcile_head` `a` join `trn_reconcile_det` `c` on((`c`.`no_reconcile` = `a`.`no_reconcile`))) join `mst_account` `b` on((`b`.`id_account` = `a`.`id_account_bank`))) join `mst_account` `d` on((`d`.`id_account` = `c`.`id_account`)))
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select `a`.`no_reconcile` AS `no_reconcile`,`b`.`account_name` AS `nama`,`a`.`date_trn` AS `date_trn`,`a`.`notes` AS `notes`,`a`.`id_account_bank` AS `id_account_bank`,`c`.`id_account` AS `id_account_det`,`d`.`account_name` AS `account_name`,`c`.`amount_in` AS `amount_in`,`c`.`amount_out` AS `amount_out`,`c`.`notes` AS `notes_det`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,`a`.`balance_before` AS `balance_before`,`a`.`balance_after` AS `balance_after`,`a`.`reconcile` AS `reconcile` from (((`ideaccounting_dev`.`trn_reconcile_head` `a` join `ideaccounting_dev`.`trn_reconcile_det` `c` on((`c`.`no_reconcile` = `a`.`no_reconcile`))) join `ideaccounting_dev`.`mst_account` `b` on((`b`.`id_account` = `a`.`id_account_bank`))) join `ideaccounting_dev`.`mst_account` `d` on((`d`.`id_account` = `c`.`id_account`)))
