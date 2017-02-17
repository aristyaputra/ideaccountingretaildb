TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_save_po` AFTER INSERT ON `trn_purchase_order_head` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (NEW.no_purchase_order, \'Purchase Order\', NEW.created_user, \'Input\', NEW.created_date, concat(\'Input Purchase Order Baru - \',NEW.id_supplier))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_edit_po` AFTER UPDATE ON `trn_purchase_order_head` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.no_purchase_order, \'Purchase Order\', NEW.created_user, \'Edit\', NEW.created_date, concat(\'Edit Purchase Order - \',OLD.id_supplier))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_hapus_po` AFTER DELETE ON `trn_purchase_order_head` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.no_purchase_order, \'Purchase Order\', OLD.created_user, \'Hapus\', OLD.created_date, concat(\'Hapus Purchase Order - \',OLD.id_supplier))'
sql_modes=0 0 0
definers='root@localhost' 'root@localhost' 'root@localhost'
client_cs_names='cp850' 'cp850' 'cp850'
connection_cl_names='cp850_general_ci' 'cp850_general_ci' 'cp850_general_ci'
db_cl_names='utf8_general_ci' 'utf8_general_ci' 'utf8_general_ci'
