TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_so_save_copy` AFTER INSERT ON `trn_completedso_head`\nFOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (NEW.no_sales_order, \'Pelunasan SO\', NEW.created_user, \'Input\', NEW.created_date, concat(\'Input Pelunasan SO Baru - \',NEW.id_customer))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_so_edit_copy` AFTER UPDATE ON `trn_completedso_head`\nFOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.no_sales_order, \'Pelunasan SO\', NEW.created_user, \'Edit\', NEW.created_date, concat(\'Edit Pelunasan SO - \',OLD.id_customer))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_so_hapus_copy` AFTER DELETE ON `trn_completedso_head`\nFOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.no_sales_order, \'Pelunasan SO\', OLD.created_user, \'Hapus\', OLD.created_date, concat(\'Hapus Pelunasan SO- \',OLD.id_customer))'
sql_modes=1344274432 1344274432 1344274432
definers='root@localhost' 'root@localhost' 'root@localhost'
client_cs_names='utf8' 'utf8' 'utf8'
connection_cl_names='utf8_general_ci' 'utf8_general_ci' 'utf8_general_ci'
db_cl_names='utf8_general_ci' 'utf8_general_ci' 'utf8_general_ci'
