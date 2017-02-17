TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_item_bef_save` BEFORE INSERT ON `mst_item_import` FOR EACH ROW begin\ndeclare var_no varchar(120);\n\n\nselect func_nobukti(\'MASTER_ITEM\',Month(now()),Year(now())) into var_no;\n\nset NEW.id_item = var_no;\n\nend' 'CREATE DEFINER=`root`@`localhost` TRIGGER `tgr_item_save_import` AFTER INSERT ON `mst_item_import` FOR EACH ROW begin\nupdate control_no_trans set nourut = (select func_update_nobukti(\'MASTER_ITEM\',Month(now()),Year(now()))) where form = \'MASTER_ITEM\' and bulan = Month(now())  and tahun = Year(now());\n\nend'
sql_modes=0 0
definers='root@localhost' 'root@localhost'
client_cs_names='cp850' 'cp850'
connection_cl_names='cp850_general_ci' 'cp850_general_ci'
db_cl_names='utf8_general_ci' 'utf8_general_ci'
