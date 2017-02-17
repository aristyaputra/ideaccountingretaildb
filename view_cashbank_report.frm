TYPE=VIEW
query=select `a`.`cashbank_no` AS `cashbank_no`,`b`.`account_name` AS `nama`,`a`.`date_trn` AS `date_trn`,`a`.`notes` AS `notes`,`a`.`id_account` AS `id_account`,`c`.`id_account` AS `id_account_det`,`d`.`account_name` AS `account_name`,`c`.`amount` AS `amount`,`c`.`notes` AS `notes_det`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,`a`.`id_currency` AS `id_currency` from (((`ideaccounting_dev`.`trn_cashbank_head` `a` join `ideaccounting_dev`.`trn_cashbank_det` `c` on((`c`.`cashbank_no` = `a`.`cashbank_no`))) join `ideaccounting_dev`.`mst_account` `b` on((`b`.`id_account` = `a`.`id_account`))) join `ideaccounting_dev`.`mst_account` `d` on((`d`.`id_account` = `c`.`id_account`)))
md5=4599f9fc89a891750718b9c0afcc13c2
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:01
create-version=1
source=select `a`.`cashbank_no` AS `cashbank_no`,`b`.`account_name` AS `nama`,`a`.`date_trn` AS `date_trn`,`a`.`notes` AS `notes`,`a`.`id_account` AS `id_account`,`c`.`id_account` AS `id_account_det`,`d`.`account_name` AS `account_name`,`c`.`amount` AS `amount`,`c`.`notes` AS `notes_det`,(select `mst_company`.`company_name` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_name`,`a`.`id_currency` AS `id_currency` from (((`trn_cashbank_head` `a` join `trn_cashbank_det` `c` on((`c`.`cashbank_no` = `a`.`cashbank_no`))) join `mst_account` `b` on((`b`.`id_account` = `a`.`id_account`))) join `mst_account` `d` on((`d`.`id_account` = `c`.`id_account`)))
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select `a`.`cashbank_no` AS `cashbank_no`,`b`.`account_name` AS `nama`,`a`.`date_trn` AS `date_trn`,`a`.`notes` AS `notes`,`a`.`id_account` AS `id_account`,`c`.`id_account` AS `id_account_det`,`d`.`account_name` AS `account_name`,`c`.`amount` AS `amount`,`c`.`notes` AS `notes_det`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,`a`.`id_currency` AS `id_currency` from (((`ideaccounting_dev`.`trn_cashbank_head` `a` join `ideaccounting_dev`.`trn_cashbank_det` `c` on((`c`.`cashbank_no` = `a`.`cashbank_no`))) join `ideaccounting_dev`.`mst_account` `b` on((`b`.`id_account` = `a`.`id_account`))) join `ideaccounting_dev`.`mst_account` `d` on((`d`.`id_account` = `c`.`id_account`)))
