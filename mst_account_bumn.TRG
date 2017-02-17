TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_save_copy2` AFTER INSERT ON `mst_account_bumn` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (NEW.id_account, \'Chart Of Account\', NEW.created_user, \'Input\', NEW.created_date, concat(\'Input Account Baru - \',NEW.account_name))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_update_copy2` AFTER UPDATE ON `mst_account_bumn` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.id_account, \'Chart Of Account\', NEW.modified_user, \'Edit\', NEW.modified_date, concat(\'Edit Account - \',OLD.account_name))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_delete_copy2` AFTER DELETE ON `mst_account_bumn` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.id_account, \'Chart Of Account\', OLD.modified_user, \'Hapus\', OLD.modified_date, concat(\'Hapus Account - \',OLD.account_name))'
sql_modes=0 0 0
definers='root@localhost' 'root@localhost' 'root@localhost'
client_cs_names='cp850' 'cp850' 'cp850'
connection_cl_names='cp850_general_ci' 'cp850_general_ci' 'cp850_general_ci'
db_cl_names='utf8_general_ci' 'utf8_general_ci' 'utf8_general_ci'
