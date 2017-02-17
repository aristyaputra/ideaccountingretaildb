TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_reconcile_save` AFTER INSERT ON `trn_reconcile_head` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (NEW.no_reconcile, \'Rekonsiliasi Bank\', NEW.created_user, \'Input\', NEW.created_date, concat(\'Input Rekonsiliasi Bank Baru - \',NEW.id_account_bank))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_reconcile_edit` AFTER UPDATE ON `trn_reconcile_head` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.no_reconcile, \'Rekonsiliasi Bank\', NEW.modified_user, \'Edit\', NEW.modified_date, concat(\'Edit Rekonsiliasi Bank - \',OLD.id_account_bank))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_reconcile_del` AFTER DELETE ON `trn_reconcile_head` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.no_reconcile, \'Rekonsiliasi Bank\', OLD.modified_user, \'Hapus\', OLD.modified_date, concat(\'Hapus Rekonsiliasi Bank - \',OLD.id_account_bank))'
sql_modes=0 0 0
definers='root@localhost' 'root@localhost' 'root@localhost'
client_cs_names='cp850' 'cp850' 'cp850'
connection_cl_names='cp850_general_ci' 'cp850_general_ci' 'cp850_general_ci'
db_cl_names='utf8_general_ci' 'utf8_general_ci' 'utf8_general_ci'
