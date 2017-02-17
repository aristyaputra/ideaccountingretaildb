TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_cashbank_save` AFTER INSERT ON `trn_cashbank_head` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (NEW.cashbank_no, concat(\'Kas Bank\',NEW.flag_trans), NEW.created_user, \'Input\', NEW.created_date, concat(\'Input Transaksi Kas Bank Baru - \',NEW.id_account))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_cashbank_edit` AFTER UPDATE ON `trn_cashbank_head` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.cashbank_no, concat(\'Kas Bank\',NEW.flag_trans), NEW.created_user, \'Edit\', NEW.created_date, concat(\'Edit Transaksi Kas Bank - \',OLD.id_account))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_cashbank_hapus` AFTER DELETE ON `trn_cashbank_head` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.cashbank_no, concat(\'Kas Bank\',OLD.flag_trans), OLD.created_user, \'Hapus\', OLD.created_date, concat(\'Hapus Transaksi Kas Bank - \',OLD.id_account))'
sql_modes=0 0 0
definers='root@localhost' 'root@localhost' 'root@localhost'
client_cs_names='cp850' 'cp850' 'cp850'
connection_cl_names='cp850_general_ci' 'cp850_general_ci' 'cp850_general_ci'
db_cl_names='utf8_general_ci' 'utf8_general_ci' 'utf8_general_ci'
