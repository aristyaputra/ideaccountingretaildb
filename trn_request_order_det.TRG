TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_edit_ro_det` AFTER UPDATE ON `trn_request_order_det` FOR EACH ROW begin\n\n\n\nif case when OLD.flag_status is null then 0 else OLD.flag_status end <> case when NEW.flag_status is null then 0 else NEW.flag_status end then\n      insert into log_transaction(transaction_no,form,username,action,created_date,value)\n      values (OLD.no_request_order, \'Request Order\', \'Admin\', \'Approve RO\', NEW.approve_date, concat(\'Approve Request Order\',NEW.id_item));\nend if;\n\nend'
sql_modes=0
definers='root@localhost'
client_cs_names='cp850'
connection_cl_names='cp850_general_ci'
db_cl_names='utf8_general_ci'
