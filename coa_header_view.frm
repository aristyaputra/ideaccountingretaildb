TYPE=VIEW
query=select `ideaccounting_dev`.`mst_account`.`id_account` AS `id_account`,`ideaccounting_dev`.`mst_account`.`account_name` AS `account_name` from `ideaccounting_dev`.`mst_account` where (`ideaccounting_dev`.`mst_account`.`flag_header` = 1)
md5=3a0b3bdcd7454850ea22ddedb7268cd2
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:31:59
create-version=1
source=select `mst_account`.`id_account` AS `id_account`,`mst_account`.`account_name` AS `account_name` from `mst_account` where (`mst_account`.`flag_header` = 1)
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select `ideaccounting_dev`.`mst_account`.`id_account` AS `id_account`,`ideaccounting_dev`.`mst_account`.`account_name` AS `account_name` from `ideaccounting_dev`.`mst_account` where (`ideaccounting_dev`.`mst_account`.`flag_header` = 1)
