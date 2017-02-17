TYPE=VIEW
query=select `ideaccounting_dev`.`mst_aset`.`nama` AS `nama`,`ideaccounting_dev`.`mst_aset`.`nilai_perolehan` AS `nilai_perolehan`,concat(month(`ideaccounting_dev`.`mst_aset`.`tanggal_perolehan`),\'-\',year(`ideaccounting_dev`.`mst_aset`.`tanggal_perolehan`)) AS `period` from `ideaccounting_dev`.`mst_aset` where (year(`ideaccounting_dev`.`mst_aset`.`tanggal_perolehan`) = `get_year`()) order by concat(month(`ideaccounting_dev`.`mst_aset`.`tanggal_perolehan`),\'-\',year(`ideaccounting_dev`.`mst_aset`.`tanggal_perolehan`))
md5=17cf6033a95f95607335f8d39207f155
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:00
create-version=1
source=select `mst_aset`.`nama` AS `nama`,`mst_aset`.`nilai_perolehan` AS `nilai_perolehan`,concat(month(`mst_aset`.`tanggal_perolehan`),\'-\',year(`mst_aset`.`tanggal_perolehan`)) AS `period` from `mst_aset` where (year(`mst_aset`.`tanggal_perolehan`) = `get_year`()) order by concat(month(`mst_aset`.`tanggal_perolehan`),\'-\',year(`mst_aset`.`tanggal_perolehan`))
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select `ideaccounting_dev`.`mst_aset`.`nama` AS `nama`,`ideaccounting_dev`.`mst_aset`.`nilai_perolehan` AS `nilai_perolehan`,concat(month(`ideaccounting_dev`.`mst_aset`.`tanggal_perolehan`),\'-\',year(`ideaccounting_dev`.`mst_aset`.`tanggal_perolehan`)) AS `period` from `ideaccounting_dev`.`mst_aset` where (year(`ideaccounting_dev`.`mst_aset`.`tanggal_perolehan`) = `get_year`()) order by concat(month(`ideaccounting_dev`.`mst_aset`.`tanggal_perolehan`),\'-\',year(`ideaccounting_dev`.`mst_aset`.`tanggal_perolehan`))
