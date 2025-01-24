select count(*) as count from clients where server_id=:server_id: and client_login_name like :pattern:;
