TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_journal_save_copy` AFTER INSERT ON `trn_adjustjournal_head` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (NEW.journal_no, \'Jurnal Umum\', NEW.created_user, \'Input\', NEW.created_date, concat(\'Input Jurnal Umum Baru - \',NEW.journal_no))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_journal_edit_copy` AFTER UPDATE ON `trn_adjustjournal_head` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.journal_no, \'Jurnal Umum\', NEW.created_user, \'Edit\', NEW.created_date, concat(\'Edit Jurnal Umum - \',OLD.journal_no))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_journal_hapus_copy` AFTER DELETE ON `trn_adjustjournal_head` FOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.journal_no, \'Jurnal Umum\', OLD.created_user, \'Hapus\', OLD.created_date, concat(\'Hapus Jurnal Umum - \',OLD.journal_no))'
sql_modes=0 0 0
definers='root@localhost' 'root@localhost' 'root@localhost'
client_cs_names='cp850' 'cp850' 'cp850'
connection_cl_names='cp850_general_ci' 'cp850_general_ci' 'cp850_general_ci'
db_cl_names='utf8_general_ci' 'utf8_general_ci' 'utf8_general_ci'
