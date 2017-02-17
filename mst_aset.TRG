TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_insert_aset` AFTER INSERT ON `mst_aset` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (NEW.id_aset, \'Master Aset\', NEW.created_user, \'Input\', NEW.created_date, concat(\'Input Master Aset - \',NEW.nama))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_update_aset` AFTER UPDATE ON `mst_aset` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.id_aset, \'Master Aset\', NEW.modified_user, \'Edit\', NEW.modified_date, concat(\'Edit Master Aset - \',OLD.nama))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_delete_aset` AFTER DELETE ON `mst_aset` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.id_aset, \'Master Aset\', OLD.modified_user, \'Hapus\', OLD.modified_date, concat(\'Hapus Master Aset - \',OLD.nama))'
sql_modes=0 0 0
definers='root@localhost' 'root@localhost' 'root@localhost'
client_cs_names='cp850' 'cp850' 'cp850'
connection_cl_names='cp850_general_ci' 'cp850_general_ci' 'cp850_general_ci'
db_cl_names='utf8_general_ci' 'utf8_general_ci' 'utf8_general_ci'
