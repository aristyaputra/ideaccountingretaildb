TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_sales_return_save_copy` AFTER INSERT ON `trn_cashier_return_head` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (NEW.no_sales_return, \'Retur Transaksi Kasir\', NEW.created_user, \'Input\', NEW.created_date, concat(\'Input Retur Jual Baru - \',NEW.customer))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_sales_return_edit_copy` AFTER UPDATE ON `trn_cashier_return_head` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.no_sales_return, \'Retur Penjualan Kasir\', NEW.created_user, \'Edit\', NEW.created_date, concat(\'Edit Retur Jual - \',OLD.customer))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_sales_return_hapus_copy` AFTER DELETE ON `trn_cashier_return_head` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.no_sales_return, \'Retur Penjualan Kasir\', OLD.created_user, \'Hapus\', OLD.created_date, concat(\'Hapus Retur Jual - \',OLD.customer))'
sql_modes=0 0 0
definers='root@localhost' 'root@localhost' 'root@localhost'
client_cs_names='cp850' 'cp850' 'cp850'
connection_cl_names='cp850_general_ci' 'cp850_general_ci' 'cp850_general_ci'
db_cl_names='utf8_general_ci' 'utf8_general_ci' 'utf8_general_ci'
