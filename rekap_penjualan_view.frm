TYPE=VIEW
query=select `hitung_rekap_jual_view`.`tanggal` AS `bulan`,sum(`hitung_rekap_jual_view`.`total`) AS `total` from `ideaccounting_dev`.`hitung_rekap_jual_view` group by `hitung_rekap_jual_view`.`tanggal`
md5=1ef1e955b7c908e57853fd2f4af65933
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:31:59
create-version=1
source=select `hitung_rekap_jual_view`.`tanggal` AS `bulan`,sum(`hitung_rekap_jual_view`.`total`) AS `total` from `hitung_rekap_jual_view` group by `hitung_rekap_jual_view`.`tanggal`
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select `hitung_rekap_jual_view`.`tanggal` AS `bulan`,sum(`hitung_rekap_jual_view`.`total`) AS `total` from `ideaccounting_dev`.`hitung_rekap_jual_view` group by `hitung_rekap_jual_view`.`tanggal`
