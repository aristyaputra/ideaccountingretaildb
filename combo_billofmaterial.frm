TYPE=VIEW
query=select `a`.`date_trn` AS `date_trn`,`a`.`no_bom` AS `no_bom`,concat(`a`.`id_item`,\' - \',`d`.`item_name`) AS `item_desc`,`a`.`qty_item_production` AS `qty_item_production`,`a`.`id_unit` AS `id_unit`,`a`.`total_cost` AS `total_cost`,0 AS `finished` from (`ideaccounting_dev`.`mst_bom_head` `a` join `ideaccounting_dev`.`mst_item` `d` on((`d`.`id_item` = `a`.`id_item`)))
md5=f5771aa67afb7eee4beffc66c9c89030
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:31:59
create-version=1
source=select `a`.`date_trn` AS `date_trn`,`a`.`no_bom` AS `no_bom`,concat(`a`.`id_item`,\' - \',`d`.`item_name`) AS `item_desc`,`a`.`qty_item_production` AS `qty_item_production`,`a`.`id_unit` AS `id_unit`,`a`.`total_cost` AS `total_cost`,0 AS `finished` from (`mst_bom_head` `a` join `mst_item` `d` on((`d`.`id_item` = `a`.`id_item`)))
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `a`.`date_trn` AS `date_trn`,`a`.`no_bom` AS `no_bom`,concat(`a`.`id_item`,\' - \',`d`.`item_name`) AS `item_desc`,`a`.`qty_item_production` AS `qty_item_production`,`a`.`id_unit` AS `id_unit`,`a`.`total_cost` AS `total_cost`,0 AS `finished` from (`ideaccounting_dev`.`mst_bom_head` `a` join `ideaccounting_dev`.`mst_item` `d` on((`d`.`id_item` = `a`.`id_item`)))
