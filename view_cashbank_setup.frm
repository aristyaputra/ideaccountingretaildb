TYPE=VIEW
query=select `a`.`id_account` AS `id_account`,`b`.`account_name` AS `account_name`,(case when (`a`.`id_cashbank` = 1) then \'Cash\' else \'Bank\' end) AS `id_cashbank` from (`ideaccounting_dev`.`i_cashbank_setup` `a` join `ideaccounting_dev`.`mst_account` `b` on((`b`.`id_account` = `a`.`id_account`)))
md5=b64c63e9e7020b29354d7375027fef39
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:01
create-version=1
source=select `a`.`id_account` AS `id_account`,`b`.`account_name` AS `account_name`,(case when (`a`.`id_cashbank` = 1) then \'Cash\' else \'Bank\' end) AS `id_cashbank` from (`i_cashbank_setup` `a` join `mst_account` `b` on((`b`.`id_account` = `a`.`id_account`)))
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `a`.`id_account` AS `id_account`,`b`.`account_name` AS `account_name`,(case when (`a`.`id_cashbank` = 1) then \'Cash\' else \'Bank\' end) AS `id_cashbank` from (`ideaccounting_dev`.`i_cashbank_setup` `a` join `ideaccounting_dev`.`mst_account` `b` on((`b`.`id_account` = `a`.`id_account`)))
