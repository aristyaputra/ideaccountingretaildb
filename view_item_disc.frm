TYPE=VIEW
query=select `a`.`id_item` AS `id_item`,`a`.`id_item_disc` AS `id_item_disc`,`b`.`item_name` AS `item_name_disc`,`a`.`qty` AS `qty`,`a`.`id_unit` AS `id_unit` from (`ideaccounting_dev`.`mst_item_disc` `a` join `ideaccounting_dev`.`mst_item` `b` on((`b`.`id_item` = `a`.`id_item_disc`)))
md5=1851f88cf89569a24d7e327071dbfce8
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:04
create-version=1
source=select `a`.`id_item` AS `id_item`,`a`.`id_item_disc` AS `id_item_disc`,`b`.`item_name` AS `item_name_disc`,`a`.`qty` AS `qty`,`a`.`id_unit` AS `id_unit` from (`mst_item_disc` `a` join `mst_item` `b` on((`b`.`id_item` = `a`.`id_item_disc`)))
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select `a`.`id_item` AS `id_item`,`a`.`id_item_disc` AS `id_item_disc`,`b`.`item_name` AS `item_name_disc`,`a`.`qty` AS `qty`,`a`.`id_unit` AS `id_unit` from (`ideaccounting_dev`.`mst_item_disc` `a` join `ideaccounting_dev`.`mst_item` `b` on((`b`.`id_item` = `a`.`id_item_disc`)))
