TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_currency_save` AFTER INSERT ON `mst_currency` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (NEW.id_currency, \'Master Currency\', NEW.created_user, \'Input\', NEW.created_date, concat(\'Input Master Currency Baru - \',NEW.currency))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_currency_edit` AFTER UPDATE ON `mst_currency` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.id_currency, \'Master Currency\', NEW.modified_user, \'Edit\', NEW.modified_date, concat(\'Edit Master Currency - \',OLD.currency))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_currency_hapus` AFTER DELETE ON `mst_currency` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.id_currency, \'Master Currency\', OLD.modified_user, \'Hapus\', OLD.modified_date, concat(\'Hapus Master Currency - \',OLD.currency))'
sql_modes=0 0 0
definers='root@localhost' 'root@localhost' 'root@localhost'
client_cs_names='cp850' 'cp850' 'cp850'
connection_cl_names='cp850_general_ci' 'cp850_general_ci' 'cp850_general_ci'
db_cl_names='utf8_general_ci' 'utf8_general_ci' 'utf8_general_ci'
