TYPE=VIEW
query=select `a`.`id_item` AS `id_item`,`a`.`item_name` AS `item_name`,`a`.`id_barcode` AS `id_barcode`,`b`.`mst_itemcat_nm` AS `mst_itemcat_nm` from (`ideaccounting_dev`.`mst_item` `a` join `ideaccounting_dev`.`mst_itemcat` `b` on((`b`.`mst_itemcat_id` = `a`.`id_category`))) where (((case when isnull(`a`.`flag_sell`) then 0 else `a`.`flag_sell` end) = 1) and (`a`.`active_status` = 1))
md5=6161c559a8eee3f8eb1c475d88a6197d
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:31:59
create-version=1
source=select `a`.`id_item` AS `id_item`,`a`.`item_name` AS `item_name`,`a`.`id_barcode` AS `id_barcode`,`b`.`mst_itemcat_nm` AS `mst_itemcat_nm` from (`mst_item` `a` join `mst_itemcat` `b` on((`b`.`mst_itemcat_id` = `a`.`id_category`))) where (((case when isnull(`a`.`flag_sell`) then 0 else `a`.`flag_sell` end) = 1) and (`a`.`active_status` = 1))
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `a`.`id_item` AS `id_item`,`a`.`item_name` AS `item_name`,`a`.`id_barcode` AS `id_barcode`,`b`.`mst_itemcat_nm` AS `mst_itemcat_nm` from (`ideaccounting_dev`.`mst_item` `a` join `ideaccounting_dev`.`mst_itemcat` `b` on((`b`.`mst_itemcat_id` = `a`.`id_category`))) where (((case when isnull(`a`.`flag_sell`) then 0 else `a`.`flag_sell` end) = 1) and (`a`.`active_status` = 1))
