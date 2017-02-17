TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_pindahgudang_save` AFTER INSERT ON `trn_transfer_stock_head` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (NEW.no_tranfer_stock, \'Pindah Gudang\', NEW.created_user, \'Input\', NEW.created_date, concat(\'Input Pindah Gudang - \',NEW.no_tranfer_stock))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_pindahgudang_edit` AFTER UPDATE ON `trn_transfer_stock_head` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.no_tranfer_stock, \'Pindah Gudang\', NEW.modified_user, \'Edit\', NEW.modified_date, concat(\'Edit Pindah Gudang - \',OLD.no_tranfer_stock))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_pindahgudang_del` AFTER DELETE ON `trn_transfer_stock_head` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.no_tranfer_stock, \'Pindah Gudang\', OLD.modified_user, \'Hapus\', OLD.modified_date, concat(\'Hapus Pindah Gudang - \',OLD.no_tranfer_stock))'
sql_modes=0 0 0
definers='root@localhost' 'root@localhost' 'root@localhost'
client_cs_names='cp850' 'cp850' 'cp850'
connection_cl_names='cp850_general_ci' 'cp850_general_ci' 'cp850_general_ci'
db_cl_names='utf8_general_ci' 'utf8_general_ci' 'utf8_general_ci'
