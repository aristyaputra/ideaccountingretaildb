TYPE=VIEW
query=select `a`.`username` AS `username`,`b`.`ismenu` AS `ismenu`,`b`.`notes` AS `notes`,`a`.`parentkey` AS `parentkey`,`a`.`childkey` AS `childkey`,`b`.`icon_webapp` AS `icon_webapp`,`b`.`link_webapp` AS `link_webapp` from (`ideaccounting_dev`.`i_hakakses` `a` join `ideaccounting_dev`.`i_templatehakakses` `b` on(((`a`.`parentkey` = `b`.`parentkey`) and (`a`.`childkey` = `b`.`childkey`))))
md5=e0117aa16f1df983b3ad0b52bffbe3a7
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2017-02-17 15:32:06
create-version=1
source=select `a`.`username` AS `username`,`b`.`ismenu` AS `ismenu`,`b`.`notes` AS `notes`,`a`.`parentkey` AS `parentkey`,`a`.`childkey` AS `childkey`,`b`.`icon_webapp` AS `icon_webapp`,`b`.`link_webapp` AS `link_webapp` from (`i_hakakses` `a` join `i_templatehakakses` `b` on(((`a`.`parentkey` = `b`.`parentkey`) and (`a`.`childkey` = `b`.`childkey`))))
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `a`.`username` AS `username`,`b`.`ismenu` AS `ismenu`,`b`.`notes` AS `notes`,`a`.`parentkey` AS `parentkey`,`a`.`childkey` AS `childkey`,`b`.`icon_webapp` AS `icon_webapp`,`b`.`link_webapp` AS `link_webapp` from (`ideaccounting_dev`.`i_hakakses` `a` join `ideaccounting_dev`.`i_templatehakakses` `b` on(((`a`.`parentkey` = `b`.`parentkey`) and (`a`.`childkey` = `b`.`childkey`))))
