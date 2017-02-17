TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_sales_return_save` AFTER INSERT ON `trn_sales_return_head` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (NEW.no_sales_return, \'Retur Penjualan\', NEW.created_user, \'Input\', NEW.created_date, concat(\'Input Retur Jual Baru - \',NEW.id_customer))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_sales_return_edit` AFTER UPDATE ON `trn_sales_return_head` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.no_sales_return, \'Retur Penjualan\', NEW.created_user, \'Edit\', NEW.created_date, concat(\'Edit Retur Jual - \',OLD.id_customer))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_sales_return_hapus` AFTER DELETE ON `trn_sales_return_head` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.no_sales_return, \'Retur Penjualan\', OLD.created_user, \'Hapus\', OLD.created_date, concat(\'Hapus Retur Jual - \',OLD.id_customer))'
sql_modes=0 0 0
definers='root@localhost' 'root@localhost' 'root@localhost'
client_cs_names='cp850' 'cp850' 'cp850'
connection_cl_names='cp850_general_ci' 'cp850_general_ci' 'cp850_general_ci'
db_cl_names='utf8_general_ci' 'utf8_general_ci' 'utf8_general_ci'
