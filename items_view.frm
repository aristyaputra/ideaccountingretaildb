TYPE=VIEW
query=select `a`.`id_item` AS `id_item`,`a`.`item_name` AS `item_name`,`a`.`id_barcode` AS `id_barcode`,`b`.`mst_itemcat_nm` AS `mst_itemcat_nm`,`a`.`flag_buy` AS `flag_buy`,`a`.`flag_inv` AS `flag_inv`,`a`.`flag_sell` AS `flag_sell`,`a`.`sell_unit` AS `sell_unit` from (`ideaccounting_dev`.`mst_item` `a` join `ideaccounting_dev`.`mst_itemcat` `b` on((`b`.`mst_itemcat_id` = `a`.`id_category`))) where (`a`.`active_status` = 1) order by `a`.`id_item`
md5=4e0202a0f86c7d1101583c4b1d7a21b5
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:31:59
create-version=1
source=select `a`.`id_item` AS `id_item`,`a`.`item_name` AS `item_name`,`a`.`id_barcode` AS `id_barcode`,`b`.`mst_itemcat_nm` AS `mst_itemcat_nm`,`a`.`flag_buy` AS `flag_buy`,`a`.`flag_inv` AS `flag_inv`,`a`.`flag_sell` AS `flag_sell`,`a`.`sell_unit` AS `sell_unit` from (`mst_item` `a` join `mst_itemcat` `b` on((`b`.`mst_itemcat_id` = `a`.`id_category`))) where (`a`.`active_status` = 1) order by `a`.`id_item`
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `a`.`id_item` AS `id_item`,`a`.`item_name` AS `item_name`,`a`.`id_barcode` AS `id_barcode`,`b`.`mst_itemcat_nm` AS `mst_itemcat_nm`,`a`.`flag_buy` AS `flag_buy`,`a`.`flag_inv` AS `flag_inv`,`a`.`flag_sell` AS `flag_sell`,`a`.`sell_unit` AS `sell_unit` from (`ideaccounting_dev`.`mst_item` `a` join `ideaccounting_dev`.`mst_itemcat` `b` on((`b`.`mst_itemcat_id` = `a`.`id_category`))) where (`a`.`active_status` = 1) order by `a`.`id_item`
