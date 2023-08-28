-- Copyright (c) The Parus RX Authors. All rights reserved.
-- Licensed under the MIT License.

begin
  DBMS_NETWORK_ACL_ADMIN.UNASSIGN_ACL
  (
    ACL        => 'parusrxgatewayservice.xml',
    HOST       => :host,
    LOWER_PORT => :port,
    UPPER_PORT => :port
  );
exception
  when OTHERS then
    null;
end;
/

commit;
/

begin
  DBMS_NETWORK_ACL_ADMIN.DELETE_PRIVILEGE
  (
    ACL         => 'parusrxgatewayservice.xml',
    PRINCIPAL   => 'PARUS',
    IS_GRANT    => false,
    PRIVILEGE   => 'connect'
  );
exception
  when OTHERS then
    null;
end;
/

commit;
/

begin
  DBMS_NETWORK_ACL_ADMIN.DROP_ACL
  (
    ACL         => 'parusrxgatewayservice.xml'
  );
exception
  when OTHERS then
    null;
end;
/

commit;
/