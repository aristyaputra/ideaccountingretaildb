TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_purchase_save_copy1` AFTER INSERT ON `trn_purchasedirect_head` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (NEW.no_purchase, \'Faktur Pembelian\', NEW.created_user, \'Input\', NEW.created_date, concat(\'Input Pembelian Langsung - \',NEW.id_supplier))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_purchase_edit_copy1` AFTER UPDATE ON `trn_purchasedirect_head` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.no_purchase, \'Faktur Pembelian\', NEW.created_user, \'Edit\', NEW.created_date, concat(\'Edit Pembelian Langsung - \',OLD.id_supplier))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_purchase_hapus_copy1` AFTER DELETE ON `trn_purchasedirect_head` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.no_purchase, \'Faktur Pembelian\', OLD.created_user, \'Hapus\', OLD.created_date, concat(\'Hapus Pembelian Langsung - \',OLD.id_supplier))'
sql_modes=0 0 0
definers='root@localhost' 'root@localhost' 'root@localhost'
client_cs_names='cp850' 'cp850' 'cp850'
connection_cl_names='cp850_general_ci' 'cp850_general_ci' 'cp850_general_ci'
db_cl_names='utf8_general_ci' 'utf8_general_ci' 'utf8_general_ci'
