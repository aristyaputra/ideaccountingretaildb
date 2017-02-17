TYPE=VIEW
query=select `a`.`no_wo` AS `no_wo`,`a`.`no_bom` AS `no_bom`,`a`.`id_item` AS `id_item`,`b`.`item_name` AS `item_name`,((case when isnull(`a`.`qty_material`) then 0 else `a`.`qty_material` end) - (case when isnull(`a`.`real_qty`) then 0 else `a`.`real_qty` end)) AS `remaining_qty`,`a`.`id_unit` AS `id_unit`,`a`.`cost` AS `cost`,`a`.`total_cost` AS `total_cost`,\'Bahan Baku\' AS `jenis` from (`ideaccounting_dev`.`trn_wo_material_det` `a` join `ideaccounting_dev`.`mst_item` `b` on((`b`.`id_item` = `a`.`id_item`))) where (((case when isnull(`a`.`qty_material`) then 0 else `a`.`qty_material` end) - (case when isnull(`a`.`real_qty`) then 0 else `a`.`real_qty` end)) > 0) union all select `a`.`wo_no` AS `wo_no`,`a`.`no_bom` AS `no_bom`,`a`.`id_item` AS `id_item`,`b`.`item_name` AS `item_name`,((case when isnull(`a`.`qty_material`) then 0 else `a`.`qty_material` end) - (case when isnull(`a`.`real_qty`) then 0 else `a`.`real_qty` end)) AS `remaining_qty`,`a`.`id_unit` AS `id_unit`,`a`.`cost` AS `cost`,`a`.`total_cost` AS `total_cost`,\'Barang Setengah Jadi\' AS `jenis` from (`ideaccounting_dev`.`trn_wo_wip_det` `a` join `ideaccounting_dev`.`mst_item` `b` on((`b`.`id_item` = `a`.`id_item`))) where (((case when isnull(`a`.`qty_material`) then 0 else `a`.`qty_material` end) - (case when isnull(`a`.`real_qty`) then 0 else `a`.`real_qty` end)) > 0)
md5=3a0e1a1740917667df92c433d2fb1c2a
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:31:59
create-version=1
source=select `a`.`no_wo` AS `no_wo`,`a`.`no_bom` AS `no_bom`,`a`.`id_item` AS `id_item`,`b`.`item_name` AS `item_name`,((case when isnull(`a`.`qty_material`) then 0 else `a`.`qty_material` end) - (case when isnull(`a`.`real_qty`) then 0 else `a`.`real_qty` end)) AS `remaining_qty`,`a`.`id_unit` AS `id_unit`,`a`.`cost` AS `cost`,`a`.`total_cost` AS `total_cost`,\'Bahan Baku\' AS `jenis` from (`trn_wo_material_det` `a` join `mst_item` `b` on((`b`.`id_item` = `a`.`id_item`))) where (((case when isnull(`a`.`qty_material`) then 0 else `a`.`qty_material` end) - (case when isnull(`a`.`real_qty`) then 0 else `a`.`real_qty` end)) > 0) union all select `a`.`wo_no` AS `wo_no`,`a`.`no_bom` AS `no_bom`,`a`.`id_item` AS `id_item`,`b`.`item_name` AS `item_name`,((case when isnull(`a`.`qty_material`) then 0 else `a`.`qty_material` end) - (case when isnull(`a`.`real_qty`) then 0 else `a`.`real_qty` end)) AS `remaining_qty`,`a`.`id_unit` AS `id_unit`,`a`.`cost` AS `cost`,`a`.`total_cost` AS `total_cost`,\'Barang Setengah Jadi\' AS `jenis` from (`trn_wo_wip_det` `a` join `mst_item` `b` on((`b`.`id_item` = `a`.`id_item`))) where (((case when isnull(`a`.`qty_material`) then 0 else `a`.`qty_material` end) - (case when isnull(`a`.`real_qty`) then 0 else `a`.`real_qty` end)) > 0)
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `a`.`no_wo` AS `no_wo`,`a`.`no_bom` AS `no_bom`,`a`.`id_item` AS `id_item`,`b`.`item_name` AS `item_name`,((case when isnull(`a`.`qty_material`) then 0 else `a`.`qty_material` end) - (case when isnull(`a`.`real_qty`) then 0 else `a`.`real_qty` end)) AS `remaining_qty`,`a`.`id_unit` AS `id_unit`,`a`.`cost` AS `cost`,`a`.`total_cost` AS `total_cost`,\'Bahan Baku\' AS `jenis` from (`ideaccounting_dev`.`trn_wo_material_det` `a` join `ideaccounting_dev`.`mst_item` `b` on((`b`.`id_item` = `a`.`id_item`))) where (((case when isnull(`a`.`qty_material`) then 0 else `a`.`qty_material` end) - (case when isnull(`a`.`real_qty`) then 0 else `a`.`real_qty` end)) > 0) union all select `a`.`wo_no` AS `wo_no`,`a`.`no_bom` AS `no_bom`,`a`.`id_item` AS `id_item`,`b`.`item_name` AS `item_name`,((case when isnull(`a`.`qty_material`) then 0 else `a`.`qty_material` end) - (case when isnull(`a`.`real_qty`) then 0 else `a`.`real_qty` end)) AS `remaining_qty`,`a`.`id_unit` AS `id_unit`,`a`.`cost` AS `cost`,`a`.`total_cost` AS `total_cost`,\'Barang Setengah Jadi\' AS `jenis` from (`ideaccounting_dev`.`trn_wo_wip_det` `a` join `ideaccounting_dev`.`mst_item` `b` on((`b`.`id_item` = `a`.`id_item`))) where (((case when isnull(`a`.`qty_material`) then 0 else `a`.`qty_material` end) - (case when isnull(`a`.`real_qty`) then 0 else `a`.`real_qty` end)) > 0)
