TYPE=VIEW
query=select `a`.`no_bukti` AS `no_bukti`,`a`.`date_trn` AS `date_trn`,`a`.`id_item` AS `id_item`,`a`.`item_name` AS `item_name`,`a`.`masuk` AS `masuk`,`a`.`keluar` AS `keluar`,`a`.`id_unit` AS `id_unit`,`a`.`price` AS `price`,`a`.`saldo` AS `saldo`,`a`.`company` AS `company`,`a`.`notes` AS `notes`,`a`.`nmb_asc` AS `nmb_asc`,`a`.`price_in` AS `price_in`,`a`.`price_out` AS `price_out`,`b`.`main_unit` AS `main_unit` from (`ideaccounting_dev`.`lap_mutasi_hpp` `a` join `ideaccounting_dev`.`view_main_unit_item` `b` on((`b`.`id_item` = `a`.`id_item`)))
md5=f6a4002b3b31781f454d8f9a3276257d
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:04
create-version=1
source=select `a`.`no_bukti` AS `no_bukti`,`a`.`date_trn` AS `date_trn`,`a`.`id_item` AS `id_item`,`a`.`item_name` AS `item_name`,`a`.`masuk` AS `masuk`,`a`.`keluar` AS `keluar`,`a`.`id_unit` AS `id_unit`,`a`.`price` AS `price`,`a`.`saldo` AS `saldo`,`a`.`company` AS `company`,`a`.`notes` AS `notes`,`a`.`nmb_asc` AS `nmb_asc`,`a`.`price_in` AS `price_in`,`a`.`price_out` AS `price_out`,`b`.`main_unit` AS `main_unit` from (`lap_mutasi_hpp` `a` join `view_main_unit_item` `b` on((`b`.`id_item` = `a`.`id_item`)))
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `a`.`no_bukti` AS `no_bukti`,`a`.`date_trn` AS `date_trn`,`a`.`id_item` AS `id_item`,`a`.`item_name` AS `item_name`,`a`.`masuk` AS `masuk`,`a`.`keluar` AS `keluar`,`a`.`id_unit` AS `id_unit`,`a`.`price` AS `price`,`a`.`saldo` AS `saldo`,`a`.`company` AS `company`,`a`.`notes` AS `notes`,`a`.`nmb_asc` AS `nmb_asc`,`a`.`price_in` AS `price_in`,`a`.`price_out` AS `price_out`,`b`.`main_unit` AS `main_unit` from (`ideaccounting_dev`.`lap_mutasi_hpp` `a` join `ideaccounting_dev`.`view_main_unit_item` `b` on((`b`.`id_item` = `a`.`id_item`)))
