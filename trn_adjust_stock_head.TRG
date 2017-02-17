TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_save_adjstock` AFTER INSERT ON `trn_adjust_stock_head` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (NEW.no_adjust_stock, \'Koreksi Stock\', NEW.created_user, \'Input\', NEW.created_date, concat(\'Input Koreksi Stock Baru - \',NEW.id_warehouse))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_edit_adjstock` AFTER UPDATE ON `trn_adjust_stock_head` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.no_adjust_stock, \'Koreksi Stock\', NEW.modified_user, \'Edit\', NEW.modified_date, concat(\'Edit Koreksi Stock - \',OLD.id_warehouse))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_hapus_adjstock` AFTER DELETE ON `trn_adjust_stock_head` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.no_adjust_stock, \'Koreksi Stock\', OLD.modified_user, \'Hapus\', OLD.modified_date, concat(\'Hapus Koreksi Stock - \',OLD.id_warehouse))'
sql_modes=0 0 0
definers='root@localhost' 'root@localhost' 'root@localhost'
client_cs_names='cp850' 'cp850' 'cp850'
connection_cl_names='cp850_general_ci' 'cp850_general_ci' 'cp850_general_ci'
db_cl_names='utf8_general_ci' 'utf8_general_ci' 'utf8_general_ci'
