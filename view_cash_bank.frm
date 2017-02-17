TYPE=VIEW
query=select `ch`.`cashbank_no` AS `cashbank_no`,`ch`.`date_trn` AS `date_trn`,`ch`.`total` AS `total`,`ch`.`notes` AS `notes`,`ch`.`flag_trans` AS `flag_trans`,`cd`.`notes` AS `notes_detail`,`cd`.`amount` AS `amount`,`cd`.`id_account` AS `id_account`,`ma`.`account_name` AS `account_name` from ((`ideaccounting_dev`.`trn_cashbank_head` `ch` join `ideaccounting_dev`.`trn_cashbank_det` `cd` on((`ch`.`cashbank_no` = `cd`.`cashbank_no`))) join `ideaccounting_dev`.`mst_account` `ma` on((`cd`.`id_account` = `ma`.`id_account`)))
md5=67a713e34957aaec91dd904202c8e18b
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:01
create-version=1
source=select `ch`.`cashbank_no` AS `cashbank_no`,`ch`.`date_trn` AS `date_trn`,`ch`.`total` AS `total`,`ch`.`notes` AS `notes`,`ch`.`flag_trans` AS `flag_trans`,`cd`.`notes` AS `notes_detail`,`cd`.`amount` AS `amount`,`cd`.`id_account` AS `id_account`,`ma`.`account_name` AS `account_name` from ((`trn_cashbank_head` `ch` join `trn_cashbank_det` `cd` on((`ch`.`cashbank_no` = `cd`.`cashbank_no`))) join `mst_account` `ma` on((`cd`.`id_account` = `ma`.`id_account`)))
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select `ch`.`cashbank_no` AS `cashbank_no`,`ch`.`date_trn` AS `date_trn`,`ch`.`total` AS `total`,`ch`.`notes` AS `notes`,`ch`.`flag_trans` AS `flag_trans`,`cd`.`notes` AS `notes_detail`,`cd`.`amount` AS `amount`,`cd`.`id_account` AS `id_account`,`ma`.`account_name` AS `account_name` from ((`ideaccounting_dev`.`trn_cashbank_head` `ch` join `ideaccounting_dev`.`trn_cashbank_det` `cd` on((`ch`.`cashbank_no` = `cd`.`cashbank_no`))) join `ideaccounting_dev`.`mst_account` `ma` on((`cd`.`id_account` = `ma`.`id_account`)))
