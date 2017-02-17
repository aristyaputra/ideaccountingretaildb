TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `del_asetbeli` AFTER DELETE ON `trn_asetbeli_det` FOR EACH ROW begin\n\ndelete from m_aset where id_aset=old.id_aset;\nend'
sql_modes=0
definers='root@localhost'
client_cs_names='cp850'
connection_cl_names='cp850_general_ci'
db_cl_names='utf8_general_ci'
