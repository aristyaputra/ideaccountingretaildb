TYPE=VIEW
query=select `a`.`id_item` AS `id_item`,`a`.`item_name` AS `item_name`,(case when isnull(`b`.`discount`) then 0 else `b`.`discount` end) AS `disc` from (`ideaccounting_dev`.`mst_item` `a` join `ideaccounting_dev`.`mst_itemcat` `b` on((`b`.`mst_itemcat_id` = `a`.`id_category`)))
md5=37a2fa072c3f0242f3343def748ad984
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:03
create-version=1
source=select `a`.`id_item` AS `id_item`,`a`.`item_name` AS `item_name`,(case when isnull(`b`.`discount`) then 0 else `b`.`discount` end) AS `disc` from (`mst_item` `a` join `mst_itemcat` `b` on((`b`.`mst_itemcat_id` = `a`.`id_category`)))
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select `a`.`id_item` AS `id_item`,`a`.`item_name` AS `item_name`,(case when isnull(`b`.`discount`) then 0 else `b`.`discount` end) AS `disc` from (`ideaccounting_dev`.`mst_item` `a` join `ideaccounting_dev`.`mst_itemcat` `b` on((`b`.`mst_itemcat_id` = `a`.`id_category`)))
