TYPE=VIEW
query=select `a`.`no_request_order` AS `no_request_order`,cast(`a`.`date_trn` as date) AS `date_trn`,`b`.`id_item` AS `id_item`,`e`.`item_name` AS `item_name`,`b`.`qty` AS `qty`,`b`.`id_unit` AS `id_unit`,`f`.`unit` AS `unit`,`b`.`notes` AS `notes_det`,`a`.`notes` AS `notes`,`a`.`date_required` AS `date_required`,`a`.`id_warehouse` AS `id_warehouse`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city` from (((`ideaccounting_dev`.`trn_request_order_head` `a` join `ideaccounting_dev`.`trn_request_order_det` `b` on((`b`.`no_request_order` = `a`.`no_request_order`))) join `ideaccounting_dev`.`mst_item` `e` on((`e`.`id_item` = `b`.`id_item`))) join `ideaccounting_dev`.`mst_unit` `f` on((`f`.`id_unit` = `b`.`id_unit`)))
md5=4b7ceec268f75f7414d10e51bb595b38
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:02
create-version=1
source=select `a`.`no_request_order` AS `no_request_order`,cast(`a`.`date_trn` as date) AS `date_trn`,`b`.`id_item` AS `id_item`,`e`.`item_name` AS `item_name`,`b`.`qty` AS `qty`,`b`.`id_unit` AS `id_unit`,`f`.`unit` AS `unit`,`b`.`notes` AS `notes_det`,`a`.`notes` AS `notes`,`a`.`date_required` AS `date_required`,`a`.`id_warehouse` AS `id_warehouse`,(select `mst_company`.`company_name` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_name`,(select `mst_company`.`address` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_address`,(select `mst_company`.`city` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_city` from (((`trn_request_order_head` `a` join `trn_request_order_det` `b` on((`b`.`no_request_order` = `a`.`no_request_order`))) join `mst_item` `e` on((`e`.`id_item` = `b`.`id_item`))) join `mst_unit` `f` on((`f`.`id_unit` = `b`.`id_unit`)))
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `a`.`no_request_order` AS `no_request_order`,cast(`a`.`date_trn` as date) AS `date_trn`,`b`.`id_item` AS `id_item`,`e`.`item_name` AS `item_name`,`b`.`qty` AS `qty`,`b`.`id_unit` AS `id_unit`,`f`.`unit` AS `unit`,`b`.`notes` AS `notes_det`,`a`.`notes` AS `notes`,`a`.`date_required` AS `date_required`,`a`.`id_warehouse` AS `id_warehouse`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city` from (((`ideaccounting_dev`.`trn_request_order_head` `a` join `ideaccounting_dev`.`trn_request_order_det` `b` on((`b`.`no_request_order` = `a`.`no_request_order`))) join `ideaccounting_dev`.`mst_item` `e` on((`e`.`id_item` = `b`.`id_item`))) join `ideaccounting_dev`.`mst_unit` `f` on((`f`.`id_unit` = `b`.`id_unit`)))