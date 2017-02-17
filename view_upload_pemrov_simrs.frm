TYPE=VIEW
query=select `ideaccounting_dev`.`i_upload_pemrov_simrs`.`date_trn` AS `date_trn`,`ideaccounting_dev`.`i_upload_pemrov_simrs`.`evidence_no` AS `evidence_no`,`ideaccounting_dev`.`i_upload_pemrov_simrs`.`reff_acc_cost` AS `reff_acc_cost`,`ideaccounting_dev`.`i_upload_pemrov_simrs`.`reff_prog` AS `reff_prog`,`ideaccounting_dev`.`i_upload_pemrov_simrs`.`reff_keg` AS `reff_keg`,`ideaccounting_dev`.`i_upload_pemrov_simrs`.`reff_acc_cashbank` AS `reff_acc_cashbank`,`ideaccounting_dev`.`i_upload_pemrov_simrs`.`notes` AS `notes`,`ideaccounting_dev`.`i_upload_pemrov_simrs`.`receipt_amount` AS `receipt_amount`,`ideaccounting_dev`.`i_upload_pemrov_simrs`.`spend_amount` AS `spend_amount`,(case when (isnull(`ideaccounting_dev`.`i_upload_pemrov_simrs`.`posting_status`) or (`ideaccounting_dev`.`i_upload_pemrov_simrs`.`posting_status` = 0)) then \'Menunggu Proses Validasi\' else \'Tervalidasi\' end) AS `posting_status`,`ideaccounting_dev`.`i_upload_pemrov_simrs`.`date_trn` AS `convert_tgl`,`ideaccounting_dev`.`i_upload_pemrov_simrs`.`id_import` AS `id_import` from `ideaccounting_dev`.`i_upload_pemrov_simrs` where (`ideaccounting_dev`.`i_upload_pemrov_simrs`.`posting_status` = 0)
md5=c90528b26ebb6e6572e55f6899ab6105
updatable=1
algorithm=0
definer_user=root
definer_host=%
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:06
create-version=1
source=select `i_upload_pemrov_simrs`.`date_trn` AS `date_trn`,`i_upload_pemrov_simrs`.`evidence_no` AS `evidence_no`,`i_upload_pemrov_simrs`.`reff_acc_cost` AS `reff_acc_cost`,`i_upload_pemrov_simrs`.`reff_prog` AS `reff_prog`,`i_upload_pemrov_simrs`.`reff_keg` AS `reff_keg`,`i_upload_pemrov_simrs`.`reff_acc_cashbank` AS `reff_acc_cashbank`,`i_upload_pemrov_simrs`.`notes` AS `notes`,`i_upload_pemrov_simrs`.`receipt_amount` AS `receipt_amount`,`i_upload_pemrov_simrs`.`spend_amount` AS `spend_amount`,(case when (isnull(`i_upload_pemrov_simrs`.`posting_status`) or (`i_upload_pemrov_simrs`.`posting_status` = 0)) then \'Menunggu Proses Validasi\' else \'Tervalidasi\' end) AS `posting_status`,`i_upload_pemrov_simrs`.`date_trn` AS `convert_tgl`,`i_upload_pemrov_simrs`.`id_import` AS `id_import` from `i_upload_pemrov_simrs` where (`i_upload_pemrov_simrs`.`posting_status` = 0)
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select `ideaccounting_dev`.`i_upload_pemrov_simrs`.`date_trn` AS `date_trn`,`ideaccounting_dev`.`i_upload_pemrov_simrs`.`evidence_no` AS `evidence_no`,`ideaccounting_dev`.`i_upload_pemrov_simrs`.`reff_acc_cost` AS `reff_acc_cost`,`ideaccounting_dev`.`i_upload_pemrov_simrs`.`reff_prog` AS `reff_prog`,`ideaccounting_dev`.`i_upload_pemrov_simrs`.`reff_keg` AS `reff_keg`,`ideaccounting_dev`.`i_upload_pemrov_simrs`.`reff_acc_cashbank` AS `reff_acc_cashbank`,`ideaccounting_dev`.`i_upload_pemrov_simrs`.`notes` AS `notes`,`ideaccounting_dev`.`i_upload_pemrov_simrs`.`receipt_amount` AS `receipt_amount`,`ideaccounting_dev`.`i_upload_pemrov_simrs`.`spend_amount` AS `spend_amount`,(case when (isnull(`ideaccounting_dev`.`i_upload_pemrov_simrs`.`posting_status`) or (`ideaccounting_dev`.`i_upload_pemrov_simrs`.`posting_status` = 0)) then \'Menunggu Proses Validasi\' else \'Tervalidasi\' end) AS `posting_status`,`ideaccounting_dev`.`i_upload_pemrov_simrs`.`date_trn` AS `convert_tgl`,`ideaccounting_dev`.`i_upload_pemrov_simrs`.`id_import` AS `id_import` from `ideaccounting_dev`.`i_upload_pemrov_simrs` where (`ideaccounting_dev`.`i_upload_pemrov_simrs`.`posting_status` = 0)