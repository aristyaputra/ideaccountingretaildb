TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `trig_update_flagPO` AFTER INSERT ON `trn_purchase_order_det` FOR EACH ROW update trn_request_order_det set flag_po = 1 where no_request_order = new.no_request_order and id_item = new.id_item' 'CREATE DEFINER=`root`@`localhost` TRIGGER `trig_delete_flagPO` AFTER DELETE ON `trn_purchase_order_det` FOR EACH ROW update trn_request_order_det set flag_po = 0 where no_request_order = old.no_request_order and id_item = old.id_item'
sql_modes=0 0
definers='root@localhost' 'root@localhost'
client_cs_names='cp850' 'cp850'
connection_cl_names='cp850_general_ci' 'cp850_general_ci'
db_cl_names='utf8_general_ci' 'utf8_general_ci'
