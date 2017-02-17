TYPE=VIEW
query=select `a`.`id_aset` AS `id_aset`,`a`.`nama` AS `nama`,`b`.`type` AS `type`,(case when isnull(`a`.`id_coa_penyusutan`) then \'\' else `a`.`id_coa_penyusutan` end) AS `id_coa_penyusutan`,(case when isnull(`a`.`id_coa_aset`) then \'\' else `a`.`id_coa_aset` end) AS `id_coa_aset`,(case when isnull(`a`.`id_coa_akumulasi`) then \'\' else `a`.`id_coa_akumulasi` end) AS `id_coa_akumulasi` from (`ideaccounting_dev`.`mst_aset` `a` join `ideaccounting_dev`.`mst_golaset` `b` on((`b`.`id_golongan` = `a`.`id_golongan`)))
md5=219edca4f9eb8e6ee01ff4d8f9a2b3d9
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:00
create-version=1
source=select `a`.`id_aset` AS `id_aset`,`a`.`nama` AS `nama`,`b`.`type` AS `type`,(case when isnull(`a`.`id_coa_penyusutan`) then \'\' else `a`.`id_coa_penyusutan` end) AS `id_coa_penyusutan`,(case when isnull(`a`.`id_coa_aset`) then \'\' else `a`.`id_coa_aset` end) AS `id_coa_aset`,(case when isnull(`a`.`id_coa_akumulasi`) then \'\' else `a`.`id_coa_akumulasi` end) AS `id_coa_akumulasi` from (`mst_aset` `a` join `mst_golaset` `b` on((`b`.`id_golongan` = `a`.`id_golongan`)))
client_cs_name=cp850
connection_cl_name=cp850_general_ci
view_body_utf8=select `a`.`id_aset` AS `id_aset`,`a`.`nama` AS `nama`,`b`.`type` AS `type`,(case when isnull(`a`.`id_coa_penyusutan`) then \'\' else `a`.`id_coa_penyusutan` end) AS `id_coa_penyusutan`,(case when isnull(`a`.`id_coa_aset`) then \'\' else `a`.`id_coa_aset` end) AS `id_coa_aset`,(case when isnull(`a`.`id_coa_akumulasi`) then \'\' else `a`.`id_coa_akumulasi` end) AS `id_coa_akumulasi` from (`ideaccounting_dev`.`mst_aset` `a` join `ideaccounting_dev`.`mst_golaset` `b` on((`b`.`id_golongan` = `a`.`id_golongan`)))
