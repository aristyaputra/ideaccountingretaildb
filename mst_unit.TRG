TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_unit_save` AFTER INSERT ON `mst_unit` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (NEW.id_unit, \'Master Unit\', NEW.created_user, \'Input\', NEW.created_date, concat(\'Input Master Unit Baru - \',NEW.unit))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_unit_edit` AFTER UPDATE ON `mst_unit` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.id_unit, \'Master Unit\', NEW.modified_user, \'Edit\', NEW.modified_date, concat(\'Edit Master Unit - \',OLD.unit))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_unit_hapus` AFTER DELETE ON `mst_unit` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.id_unit, \'Master Unit\', OLD.modified_user, \'Hapus\', OLD.modified_date, concat(\'Hapus Master Unit - \',OLD.Unit))'
sql_modes=0 0 0
definers='root@localhost' 'root@localhost' 'root@localhost'
client_cs_names='cp850' 'cp850' 'cp850'
connection_cl_names='cp850_general_ci' 'cp850_general_ci' 'cp850_general_ci'
db_cl_names='utf8_general_ci' 'utf8_general_ci' 'utf8_general_ci'
