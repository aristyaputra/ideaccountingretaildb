TYPE=VIEW
query=select `a`.`wo_no` AS `wo_no`,concat((case when isnull(`e`.`first_name`) then \'\' else `e`.`first_name` end),\' \',(case when isnull(`e`.`last_name`) then \'\' else `e`.`last_name` end)) AS `pic`,`a`.`cost_total` AS `cost_total`,`a`.`start_date` AS `start_date`,`a`.`realized_date` AS `realized_date`,`b`.`item_notes` AS `item_notes`,`b`.`no_bom` AS `no_bom`,`d`.`item_name` AS `item_detail`,\'material\' AS `type`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city` from ((((`ideaccounting_dev`.`trn_wo_head` `a` join `ideaccounting_dev`.`trn_wo_item_det` `b` on((`b`.`wo_no` = `a`.`wo_no`))) left join `ideaccounting_dev`.`trn_wo_material_det` `c` on((`c`.`no_wo` = `a`.`wo_no`))) join `ideaccounting_dev`.`mst_item` `d` on((`d`.`id_item` = `c`.`id_item`))) join `ideaccounting_dev`.`mst_employee` `e` on((`e`.`id_employee` = `a`.`pic`))) union all select `a`.`wo_no` AS `wo_no`,concat((case when isnull(`e`.`first_name`) then \'\' else `e`.`first_name` end),\' \',(case when isnull(`e`.`last_name`) then \'\' else `e`.`last_name` end)) AS `pic`,`a`.`cost_total` AS `cost_total`,`a`.`start_date` AS `start_date`,`a`.`realized_date` AS `realized_date`,`b`.`item_notes` AS `item_notes`,`b`.`no_bom` AS `no_bom`,`d`.`item_name` AS `item_detail`,\'wip\' AS `type`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city` from ((((`ideaccounting_dev`.`trn_wo_head` `a` join `ideaccounting_dev`.`trn_wo_item_det` `b` on((`b`.`wo_no` = `a`.`wo_no`))) left join `ideaccounting_dev`.`trn_wo_wip_det` `c` on((`c`.`wo_no` = `a`.`wo_no`))) join `ideaccounting_dev`.`mst_item` `d` on((`d`.`id_item` = `c`.`id_item`))) join `ideaccounting_dev`.`mst_employee` `e` on((`e`.`id_employee` = `a`.`pic`))) union all select `a`.`wo_no` AS `wo_no`,concat((case when isnull(`e`.`first_name`) then \'\' else `e`.`first_name` end),\' \',(case when isnull(`e`.`last_name`) then \'\' else `e`.`last_name` end)) AS `pic`,`a`.`cost_total` AS `cost_total`,`a`.`start_date` AS `start_date`,`a`.`realized_date` AS `realized_date`,`b`.`item_notes` AS `item_notes`,`b`.`no_bom` AS `no_bom`,`d`.`cost_name` AS `item_detail`,\'conversion_cost\' AS `type`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city` from ((((`ideaccounting_dev`.`trn_wo_head` `a` join `ideaccounting_dev`.`trn_wo_item_det` `b` on((`b`.`wo_no` = `a`.`wo_no`))) left join `ideaccounting_dev`.`trn_wo_conversion_det` `c` on((`c`.`wo_no` = `a`.`wo_no`))) join `ideaccounting_dev`.`mst_standard_cost` `d` on((`d`.`id_cost` = `c`.`id_cost`))) join `ideaccounting_dev`.`mst_employee` `e` on((`e`.`id_employee` = `a`.`pic`)))
md5=11e78efddd92a011b17b961486128394
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:06
create-version=1
source=select `a`.`wo_no` AS `wo_no`,concat((case when isnull(`e`.`first_name`) then \'\' else `e`.`first_name` end),\' \',(case when isnull(`e`.`last_name`) then \'\' else `e`.`last_name` end)) AS `pic`,`a`.`cost_total` AS `cost_total`,`a`.`start_date` AS `start_date`,`a`.`realized_date` AS `realized_date`,`b`.`item_notes` AS `item_notes`,`b`.`no_bom` AS `no_bom`,`d`.`item_name` AS `item_detail`,\'material\' AS `type`,(select `mst_company`.`company_name` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_name`,(select `mst_company`.`address` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_address`,(select `mst_company`.`city` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_city` from ((((`trn_wo_head` `a` join `trn_wo_item_det` `b` on((`b`.`wo_no` = `a`.`wo_no`))) left join `trn_wo_material_det` `c` on((`c`.`no_wo` = `a`.`wo_no`))) join `mst_item` `d` on((`d`.`id_item` = `c`.`id_item`))) join `mst_employee` `e` on((`e`.`id_employee` = `a`.`pic`))) union all select `a`.`wo_no` AS `wo_no`,concat((case when isnull(`e`.`first_name`) then \'\' else `e`.`first_name` end),\' \',(case when isnull(`e`.`last_name`) then \'\' else `e`.`last_name` end)) AS `pic`,`a`.`cost_total` AS `cost_total`,`a`.`start_date` AS `start_date`,`a`.`realized_date` AS `realized_date`,`b`.`item_notes` AS `item_notes`,`b`.`no_bom` AS `no_bom`,`d`.`item_name` AS `item_detail`,\'wip\' AS `type`,(select `mst_company`.`company_name` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_name`,(select `mst_company`.`address` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_address`,(select `mst_company`.`city` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_city` from ((((`trn_wo_head` `a` join `trn_wo_item_det` `b` on((`b`.`wo_no` = `a`.`wo_no`))) left join `trn_wo_wip_det` `c` on((`c`.`wo_no` = `a`.`wo_no`))) join `mst_item` `d` on((`d`.`id_item` = `c`.`id_item`))) join `mst_employee` `e` on((`e`.`id_employee` = `a`.`pic`))) union all select `a`.`wo_no` AS `wo_no`,concat((case when isnull(`e`.`first_name`) then \'\' else `e`.`first_name` end),\' \',(case when isnull(`e`.`last_name`) then \'\' else `e`.`last_name` end)) AS `pic`,`a`.`cost_total` AS `cost_total`,`a`.`start_date` AS `start_date`,`a`.`realized_date` AS `realized_date`,`b`.`item_notes` AS `item_notes`,`b`.`no_bom` AS `no_bom`,`d`.`cost_name` AS `item_detail`,\'conversion_cost\' AS `type`,(select `mst_company`.`company_name` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_name`,(select `mst_company`.`address` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_address`,(select `mst_company`.`city` from `mst_company` where (`mst_company`.`flag_active` = 1)) AS `company_city` from ((((`trn_wo_head` `a` join `trn_wo_item_det` `b` on((`b`.`wo_no` = `a`.`wo_no`))) left join `trn_wo_conversion_det` `c` on((`c`.`wo_no` = `a`.`wo_no`))) join `mst_standard_cost` `d` on((`d`.`id_cost` = `c`.`id_cost`))) join `mst_employee` `e` on((`e`.`id_employee` = `a`.`pic`)))
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `a`.`wo_no` AS `wo_no`,concat((case when isnull(`e`.`first_name`) then \'\' else `e`.`first_name` end),\' \',(case when isnull(`e`.`last_name`) then \'\' else `e`.`last_name` end)) AS `pic`,`a`.`cost_total` AS `cost_total`,`a`.`start_date` AS `start_date`,`a`.`realized_date` AS `realized_date`,`b`.`item_notes` AS `item_notes`,`b`.`no_bom` AS `no_bom`,`d`.`item_name` AS `item_detail`,\'material\' AS `type`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city` from ((((`ideaccounting_dev`.`trn_wo_head` `a` join `ideaccounting_dev`.`trn_wo_item_det` `b` on((`b`.`wo_no` = `a`.`wo_no`))) left join `ideaccounting_dev`.`trn_wo_material_det` `c` on((`c`.`no_wo` = `a`.`wo_no`))) join `ideaccounting_dev`.`mst_item` `d` on((`d`.`id_item` = `c`.`id_item`))) join `ideaccounting_dev`.`mst_employee` `e` on((`e`.`id_employee` = `a`.`pic`))) union all select `a`.`wo_no` AS `wo_no`,concat((case when isnull(`e`.`first_name`) then \'\' else `e`.`first_name` end),\' \',(case when isnull(`e`.`last_name`) then \'\' else `e`.`last_name` end)) AS `pic`,`a`.`cost_total` AS `cost_total`,`a`.`start_date` AS `start_date`,`a`.`realized_date` AS `realized_date`,`b`.`item_notes` AS `item_notes`,`b`.`no_bom` AS `no_bom`,`d`.`item_name` AS `item_detail`,\'wip\' AS `type`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city` from ((((`ideaccounting_dev`.`trn_wo_head` `a` join `ideaccounting_dev`.`trn_wo_item_det` `b` on((`b`.`wo_no` = `a`.`wo_no`))) left join `ideaccounting_dev`.`trn_wo_wip_det` `c` on((`c`.`wo_no` = `a`.`wo_no`))) join `ideaccounting_dev`.`mst_item` `d` on((`d`.`id_item` = `c`.`id_item`))) join `ideaccounting_dev`.`mst_employee` `e` on((`e`.`id_employee` = `a`.`pic`))) union all select `a`.`wo_no` AS `wo_no`,concat((case when isnull(`e`.`first_name`) then \'\' else `e`.`first_name` end),\' \',(case when isnull(`e`.`last_name`) then \'\' else `e`.`last_name` end)) AS `pic`,`a`.`cost_total` AS `cost_total`,`a`.`start_date` AS `start_date`,`a`.`realized_date` AS `realized_date`,`b`.`item_notes` AS `item_notes`,`b`.`no_bom` AS `no_bom`,`d`.`cost_name` AS `item_detail`,\'conversion_cost\' AS `type`,(select `ideaccounting_dev`.`mst_company`.`company_name` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_name`,(select `ideaccounting_dev`.`mst_company`.`address` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_address`,(select `ideaccounting_dev`.`mst_company`.`city` from `ideaccounting_dev`.`mst_company` where (`ideaccounting_dev`.`mst_company`.`flag_active` = 1)) AS `company_city` from ((((`ideaccounting_dev`.`trn_wo_head` `a` join `ideaccounting_dev`.`trn_wo_item_det` `b` on((`b`.`wo_no` = `a`.`wo_no`))) left join `ideaccounting_dev`.`trn_wo_conversion_det` `c` on((`c`.`wo_no` = `a`.`wo_no`))) join `ideaccounting_dev`.`mst_standard_cost` `d` on((`d`.`id_cost` = `c`.`id_cost`))) join `ideaccounting_dev`.`mst_employee` `e` on((`e`.`id_employee` = `a`.`pic`)))
