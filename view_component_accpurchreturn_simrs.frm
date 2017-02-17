TYPE=VIEW
query=select `a`.`notes` AS `notes`,`a`.`id_account` AS `id_account`,`b`.`account_name` AS `account_name`,`a`.`table_name` AS `table_name`,`a`.`field_name` AS `field_name`,`a`.`position_dk` AS `position_dk`,(case when isnull(`a`.`is_dependent_itemacc`) then 0 else `a`.`is_dependent_itemacc` end) AS `is_dependent_itemacc` from (`ideaccounting_dev`.`i_component_account_returpurchsimrs` `a` join `ideaccounting_dev`.`mst_account` `b` on((`b`.`id_account` = `a`.`id_account`)))
md5=d4f70d05b98e17e51c89d3d5d40430a3
updatable=1
algorithm=0
definer_user=root
definer_host=%
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:01
create-version=1
source=select `a`.`notes` AS `notes`,`a`.`id_account` AS `id_account`,`b`.`account_name` AS `account_name`,`a`.`table_name` AS `table_name`,`a`.`field_name` AS `field_name`,`a`.`position_dk` AS `position_dk`,(case when isnull(`a`.`is_dependent_itemacc`) then 0 else `a`.`is_dependent_itemacc` end) AS `is_dependent_itemacc` from (`i_component_account_returpurchsimrs` `a` join `mst_account` `b` on((`b`.`id_account` = `a`.`id_account`)))
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select `a`.`notes` AS `notes`,`a`.`id_account` AS `id_account`,`b`.`account_name` AS `account_name`,`a`.`table_name` AS `table_name`,`a`.`field_name` AS `field_name`,`a`.`position_dk` AS `position_dk`,(case when isnull(`a`.`is_dependent_itemacc`) then 0 else `a`.`is_dependent_itemacc` end) AS `is_dependent_itemacc` from (`ideaccounting_dev`.`i_component_account_returpurchsimrs` `a` join `ideaccounting_dev`.`mst_account` `b` on((`b`.`id_account` = `a`.`id_account`)))
