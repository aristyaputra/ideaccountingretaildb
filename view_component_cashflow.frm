TYPE=VIEW
query=select `a`.`id_component` AS `id_component`,`a`.`notes` AS `notes`,`b`.`type` AS `type`,(case when (`a`.`id_trans` < 0) then \'Pengeluaran\' else \'Penerimaan\' end) AS `jenistransaksi` from (`ideaccounting_dev`.`tempx_component_cashflow_simrs_head` `a` join `ideaccounting_dev`.`tempx_component_cashflow_simrs_type` `b` on((`b`.`id_type` = `a`.`id_type`)))
md5=72e7c6cf2ee5d29889d31940032e4213
updatable=1
algorithm=0
definer_user=root
definer_host=%
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:01
create-version=1
source=select `a`.`id_component` AS `id_component`,`a`.`notes` AS `notes`,`b`.`type` AS `type`,(case when (`a`.`id_trans` < 0) then \'Pengeluaran\' else \'Penerimaan\' end) AS `jenistransaksi` from (`tempx_component_cashflow_simrs_head` `a` join `tempx_component_cashflow_simrs_type` `b` on((`b`.`id_type` = `a`.`id_type`)))
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `a`.`id_component` AS `id_component`,`a`.`notes` AS `notes`,`b`.`type` AS `type`,(case when (`a`.`id_trans` < 0) then \'Pengeluaran\' else \'Penerimaan\' end) AS `jenistransaksi` from (`ideaccounting_dev`.`tempx_component_cashflow_simrs_head` `a` join `ideaccounting_dev`.`tempx_component_cashflow_simrs_type` `b` on((`b`.`id_type` = `a`.`id_type`)))
