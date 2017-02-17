TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_do_save` AFTER INSERT ON `trn_delivery_order_head` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (NEW.no_delivery_order, \'Surat Jalan\', NEW.created_user, \'Input\', NEW.created_date, concat(\'Input Surat Jalan Baru - \',NEW.id_customer))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_do_edit` AFTER UPDATE ON `trn_delivery_order_head` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.no_delivery_order, \'Surat Jalan\', NEW.created_user, \'Edit\', NEW.created_date, concat(\'Edit Surat Jalan - \',OLD.id_customer))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_do_hapus` AFTER DELETE ON `trn_delivery_order_head` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.no_delivery_order, \'Surat Jalan\', OLD.created_user, \'Hapus\', OLD.created_date, concat(\'Hapus Surat Jalan - \',OLD.id_customer))'
sql_modes=0 0 0
definers='root@localhost' 'root@localhost' 'root@localhost'
client_cs_names='cp850' 'cp850' 'cp850'
connection_cl_names='cp850_general_ci' 'cp850_general_ci' 'cp850_general_ci'
db_cl_names='utf8_general_ci' 'utf8_general_ci' 'utf8_general_ci'
