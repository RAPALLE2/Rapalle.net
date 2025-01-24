-- defaults.sql inserts various items directly, so correct the sequences

SELECT setval(pg_get_serial_sequence('clients', 'client_id'), MAX(client_id)+1, false) FROM clients;
SELECT setval(pg_get_serial_sequence('groups_server', 'group_id'), MAX(group_id)+1, false) FROM groups_server;
SELECT setval(pg_get_serial_sequence('groups_channel', 'group_id'), MAX(group_id)+1, false) FROM groups_channel;
