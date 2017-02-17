TYPE=VIEW
query=select `x`.`id_account` AS `id_account`,`x`.`account_name` AS `account_name`,(case when isnull(`d`.`id_component`) then 0 else `d`.`id_component` end) AS `id_component` from ((`ideaccounting_dev`.`mst_account` `x` left join `ideaccounting_dev`.`tempx_component_cashflow_simrs_det` `c` on((`x`.`id_account` = `c`.`id_account`))) left join `ideaccounting_dev`.`tempx_component_cashflow_simrs_head` `d` on(((`d`.`id_component` = `c`.`id_component`) and (`c`.`id_component` = `d`.`id_component`)))) where ((`x`.`flag_active` = 1) and (`x`.`flag_header` = 0))
md5=43a8ffb350d9b23e49673facd5a6f4e8
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:03
create-version=1
source=select `x`.`id_account` AS `id_account`,`x`.`account_name` AS `account_name`,(case when isnull(`d`.`id_component`) then 0 else `d`.`id_component` end) AS `id_component` from ((`mst_account` `x` left join `tempx_component_cashflow_simrs_det` `c` on((`x`.`id_account` = `c`.`id_account`))) left join `tempx_component_cashflow_simrs_head` `d` on(((`d`.`id_component` = `c`.`id_component`) and (`c`.`id_component` = `d`.`id_component`)))) where ((`x`.`flag_active` = 1) and (`x`.`flag_header` = 0))
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `x`.`id_account` AS `id_account`,`x`.`account_name` AS `account_name`,(case when isnull(`d`.`id_component`) then 0 else `d`.`id_component` end) AS `id_component` from ((`ideaccounting_dev`.`mst_account` `x` left join `ideaccounting_dev`.`tempx_component_cashflow_simrs_det` `c` on((`x`.`id_account` = `c`.`id_account`))) left join `ideaccounting_dev`.`tempx_component_cashflow_simrs_head` `d` on(((`d`.`id_component` = `c`.`id_component`) and (`c`.`id_component` = `d`.`id_component`)))) where ((`x`.`flag_active` = 1) and (`x`.`flag_header` = 0))
