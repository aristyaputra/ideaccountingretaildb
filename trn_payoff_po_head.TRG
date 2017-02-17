TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_purchase_save_copy3` AFTER INSERT ON `trn_payoff_po_head`\nFOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (NEW.no_purchase, \'Pelunasan PO\', NEW.created_user, \'Input\', NEW.created_date, concat(\'Input Pelunasan PO Baru - \',NEW.id_supplier))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_purchase_edit_copy3` AFTER UPDATE ON `trn_payoff_po_head`\nFOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.no_purchase, \'Pelunasan PO\', NEW.created_user, \'Edit\', NEW.created_date, concat(\'Edit Pelunasan PO - \',OLD.id_supplier))' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_purchase_hapus_copy3` AFTER DELETE ON `trn_payoff_po_head`\nFOR EACH ROW insert into log_transaction(transaction_no,form,username,action,created_date,value)\nvalues (OLD.no_purchase, \'Pelunasan PO\', OLD.created_user, \'Hapus\', OLD.created_date, concat(\'Hapus Pelunasan PO - \',OLD.id_supplier))'
sql_modes=1344274432 1344274432 1344274432
definers='root@localhost' 'root@localhost' 'root@localhost'
client_cs_names='utf8' 'utf8' 'utf8'
connection_cl_names='utf8_general_ci' 'utf8_general_ci' 'utf8_general_ci'
db_cl_names='utf8_general_ci' 'utf8_general_ci' 'utf8_general_ci'
