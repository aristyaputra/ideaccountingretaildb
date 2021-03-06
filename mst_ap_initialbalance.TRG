TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_service_save_copy` AFTER INSERT ON `mst_ap_initialbalance` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (NEW.id_supplier, \'A/P Begining Balance\', NEW.created_user, \'Input\', NEW.created_date, concat(\'Input New A/P Begining Balance - \',NEW.invoice_no))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_service_edit_copy` AFTER UPDATE ON `mst_ap_initialbalance` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.id_supplier, \'A/P Begining Balance\', NEW.modified_user, \'Edit\', NEW.modified_date, concat(\'Edit New A/P Begining Balance - \',OLD.invoice_no))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_service_hapus_copy` AFTER DELETE ON `mst_ap_initialbalance` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.id_supplier, \'A/P Begining Balance \', OLD.modified_user, \'Hapus\', OLD.modified_date, concat(\'Delete New A/P Begining Balance - \',OLD.invoice_no))'
sql_modes=0 0 0
definers='root@localhost' 'root@localhost' 'root@localhost'
client_cs_names='cp850' 'cp850' 'cp850'
connection_cl_names='cp850_general_ci' 'cp850_general_ci' 'cp850_general_ci'
db_cl_names='utf8_general_ci' 'utf8_general_ci' 'utf8_general_ci'
