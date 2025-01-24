insert into clients
( server_id,
  client_nickname,
  client_unique_id,
  client_login_name,
  client_login_password)
VALUES 
( 0,
  :client_login_name:,
  :client_unique_id:,
  :client_login_name:,
  :client_login_password:)->client_id;
