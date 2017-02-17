TYPE=VIEW
query=select `a`.`id_account` AS `id_account`,`b`.`account_name` AS `account_name`,`a`.`id_cashbank` AS `id_cashbank` from (`ideaccounting_dev`.`i_cashbank_setup` `a` join `ideaccounting_dev`.`mst_account` `b` on((`b`.`id_account` = `a`.`id_account`)))
md5=3e8c10a3f442a69cc8fdf46869ed0e24
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:01
create-version=1
source=select `a`.`id_account` AS `id_account`,`b`.`account_name` AS `account_name`,`a`.`id_cashbank` AS `id_cashbank` from (`i_cashbank_setup` `a` join `mst_account` `b` on((`b`.`id_account` = `a`.`id_account`)))
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select `a`.`id_account` AS `id_account`,`b`.`account_name` AS `account_name`,`a`.`id_cashbank` AS `id_cashbank` from (`ideaccounting_dev`.`i_cashbank_setup` `a` join `ideaccounting_dev`.`mst_account` `b` on((`b`.`id_account` = `a`.`id_account`)))
