TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_save_ro` AFTER INSERT ON `trn_request_order_head` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (NEW.no_request_order, \'Request Order\', NEW.created_user, \'Input\', NEW.created_date, concat(\'Input Request Order Baru - \',NEW.id_warehouse))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_edit_ro` AFTER UPDATE ON `trn_request_order_head` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.no_request_order, \'Request Order\', NEW.modified_user, \'Edit\', NEW.modified_date, concat(\'Edit Request Order - \',OLD.id_warehouse))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_hapus_ro` AFTER DELETE ON `trn_request_order_head` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.no_request_order, \'Request Order\', OLD.modified_user, \'Hapus\', OLD.modified_date, concat(\'Hapus Request Order - \',OLD.id_warehouse))'
sql_modes=0 0 0
definers='root@localhost' 'root@localhost' 'root@localhost'
client_cs_names='cp850' 'cp850' 'cp850'
connection_cl_names='cp850_general_ci' 'cp850_general_ci' 'cp850_general_ci'
db_cl_names='utf8_general_ci' 'utf8_general_ci' 'utf8_general_ci'
