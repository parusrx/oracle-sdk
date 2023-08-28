-- Copyright (c) The Parus RX Authors. All rights reserved.
-- Licensed under the MIT License.

/* Удаление объектов БД */
drop package PKG_PRXMQ;
drop package PKG_PRXMQ_INT;
drop package PKG_PRXMQ_INT$PG;
drop package PKG_PRXMB;
drop procedure P_PRXMBDATA_BINSERT_AT;
drop procedure P_PRXMBDATA_BINSERT_AT$PG;
drop procedure P_PRXMBDATA_BINSERT;
drop procedure P_PRXMBDATA_BUPDATE_AT;
drop procedure P_PRXMBDATA_BUPDATE_AT$PG;
drop procedure P_PRXMBDATA_BUPDATE;
drop trigger T_PRXMBDATA_BINSERT;
drop table PRXMBDATA;
drop procedure P_PRX_SYSTEM_INIT_OPTIONS;

/* Удаление системных параметров */
begin
  delete from OPTIONS where CODE = 'ParusRxGatewayServiceAddress';

  commit;
end;