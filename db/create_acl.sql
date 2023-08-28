-- Copyright (c) The Parus RX Authors. All rights reserved.
-- Licensed under the MIT License.

begin
  DBMS_NETWORK_ACL_ADMIN.CREATE_ACL
  (
    ACL         => 'parusrxgatewayservice.xml',
    DESCRIPTION => 'HTTP Access to Parus RX Gateway Service',
    PRINCIPAL   => 'PARUS',
    IS_GRANT    => true,
    PRIVILEGE   => 'connect',
    START_DATE  => null,
    END_DATE    => null
  );
end;
/

commit;
/

begin
  DBMS_NETWORK_ACL_ADMIN.ADD_PRIVILEGE
  (
    ACL         => 'parusrxgatewayservice.xml',
    PRINCIPAL   => 'PARUS',
    IS_GRANT    => true,
    PRIVILEGE   => 'connect'
  );
end;
/

commit;
/

begin
  DBMS_NETWORK_ACL_ADMIN.ASSIGN_ACL
  (
    ACL         => 'parusrxgatewayservice.xml',
    HOST        => :host,
    LOWER_PORT  => :port,
    UPPER_PORT  => :port
  );
end;
/

commit;
/