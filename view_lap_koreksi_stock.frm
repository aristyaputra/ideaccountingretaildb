TYPE=VIEW
query=select `a`.`no_adjust_stock` AS `no_adjust_stock`,`a`.`date_trn` AS `date_trn`,`c`.`warehouse_name` AS `warehouse_name`,`b`.`negative` AS `koreksi_negative`,`b`.`positive` AS `koreksi_positive`,`b`.`notes` AS `notes_det`,`a`.`notes` AS `notes`,`b`.`id_item` AS `id_item`,`d`.`item_name` AS `item_name`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city` from (((`ideaccounting_dev`.`trn_adjust_stock_head` `a` join `ideaccounting_dev`.`trn_adjust_stock_det` `b` on((`b`.`no_adjust_stock` = `a`.`no_adjust_stock`))) join `ideaccounting_dev`.`mst_warehouse` `c` on((`c`.`id_warehouse` = `a`.`id_warehouse`))) join `ideaccounting_dev`.`mst_item` `d` on((`d`.`id_item` = `b`.`id_item`)))
md5=16b460332a8b987bb3f6942701af0f93
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:04
create-version=1
source=select `a`.`no_adjust_stock` AS `no_adjust_stock`,`a`.`date_trn` AS `date_trn`,`c`.`warehouse_name` AS `warehouse_name`,`b`.`negative` AS `koreksi_negative`,`b`.`positive` AS `koreksi_positive`,`b`.`notes` AS `notes_det`,`a`.`notes` AS `notes`,`b`.`id_item` AS `id_item`,`d`.`item_name` AS `item_name`,(select `mst_company`.`company_name` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_name`,(select `mst_company`.`address` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_address`,(select `mst_company`.`city` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_city` from (((`trn_adjust_stock_head` `a` join `trn_adjust_stock_det` `b` on((`b`.`no_adjust_stock` = `a`.`no_adjust_stock`))) join `mst_warehouse` `c` on((`c`.`id_warehouse` = `a`.`id_warehouse`))) join `mst_item` `d` on((`d`.`id_item` = `b`.`id_item`)))
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select `a`.`no_adjust_stock` AS `no_adjust_stock`,`a`.`date_trn` AS `date_trn`,`c`.`warehouse_name` AS `warehouse_name`,`b`.`negative` AS `koreksi_negative`,`b`.`positive` AS `koreksi_positive`,`b`.`notes` AS `notes_det`,`a`.`notes` AS `notes`,`b`.`id_item` AS `id_item`,`d`.`item_name` AS `item_name`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city` from (((`ideaccounting_dev`.`trn_adjust_stock_head` `a` join `ideaccounting_dev`.`trn_adjust_stock_det` `b` on((`b`.`no_adjust_stock` = `a`.`no_adjust_stock`))) join `ideaccounting_dev`.`mst_warehouse` `c` on((`c`.`id_warehouse` = `a`.`id_warehouse`))) join `ideaccounting_dev`.`mst_item` `d` on((`d`.`id_item` = `b`.`id_item`)))
