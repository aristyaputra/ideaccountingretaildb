TYPE=VIEW
query=select `a`.`id_item` AS `id_item`,`b`.`item_name` AS `item_name`,`a`.`saldo` AS `saldo`,`a`.`price` AS `price`,`a`.`nominal` AS `nominal` from (`ideaccounting_dev`.`lap_rekap_hpp_akhir` `a` join `ideaccounting_dev`.`mst_item` `b` on((`b`.`id_item` = `a`.`id_item`)))
md5=bd2069bcb06863bdb713855ac58ced2d
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:31:59
create-version=1
source=select `a`.`id_item` AS `id_item`,`b`.`item_name` AS `item_name`,`a`.`saldo` AS `saldo`,`a`.`price` AS `price`,`a`.`nominal` AS `nominal` from (`lap_rekap_hpp_akhir` `a` join `mst_item` `b` on((`b`.`id_item` = `a`.`id_item`)))
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `a`.`id_item` AS `id_item`,`b`.`item_name` AS `item_name`,`a`.`saldo` AS `saldo`,`a`.`price` AS `price`,`a`.`nominal` AS `nominal` from (`ideaccounting_dev`.`lap_rekap_hpp_akhir` `a` join `ideaccounting_dev`.`mst_item` `b` on((`b`.`id_item` = `a`.`id_item`)))
