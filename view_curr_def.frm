TYPE=VIEW
query=select `ideaccounting_dev`.`mst_currency`.`id_currency` AS `id_currency` from `ideaccounting_dev`.`mst_currency` where (`ideaccounting_dev`.`mst_currency`.`flag_default` = 1)
md5=319c0b4bf4b4c04952865544d2949efe
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:02
create-version=1
source=select `mst_currency`.`id_currency` AS `id_currency` from `mst_currency` where (`mst_currency`.`flag_default` = 1)
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select `ideaccounting_dev`.`mst_currency`.`id_currency` AS `id_currency` from `ideaccounting_dev`.`mst_currency` where (`ideaccounting_dev`.`mst_currency`.`flag_default` = 1)
