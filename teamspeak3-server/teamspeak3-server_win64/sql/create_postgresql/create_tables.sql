CREATE TABLE channel_properties(
  server_id int,
  id     int,
  ident  varchar(255) NOT NULL,
  value  varchar(8192)
);
CREATE INDEX index_channel_properties_id ON channel_properties (id);
CREATE INDEX index_channel_properties_serverid ON channel_properties (server_id);

CREATE TABLE channels(
  channel_id         SERIAL PRIMARY KEY NOT NULL,
  channel_parent_id  int,
  server_id          int NOT NULL,
  org_channel_id     int
);

CREATE INDEX index_channels_serverid ON channels (server_id);

CREATE TABLE client_properties(
  server_id int,
  id     int,
  ident  varchar(100) NOT NULL,
  value  varchar(255)
);
CREATE INDEX index_client_properties_id ON client_properties (id);
CREATE INDEX index_client_properties_serverid ON client_properties (server_id);
CREATE INDEX index_client_properties_serverid_id_ident ON client_properties (server_id, id, ident);

CREATE TABLE clients(
  client_id               SERIAL PRIMARY KEY NOT NULL,
  server_id               int,
  client_unique_id        varchar(40),
  client_nickname         varchar(100),
  client_login_name       varchar(20) UNIQUE,
  client_login_password   varchar(40),
  client_lastconnected    int,
  client_totalconnections int default 0,
  client_month_upload     bigint default 0,
  client_month_download   bigint default 0,
  client_total_upload     bigint default 0,
  client_total_download   bigint default 0,
  client_lastip           varchar(45),
  org_client_id           int
);
CREATE INDEX index_clients_id ON clients (client_id);
CREATE INDEX index_clients_serverid ON clients (server_id);
CREATE INDEX index_clients_lastconnectedserverid ON clients (client_lastconnected, server_id);
CREATE INDEX index_clients_uid ON clients (client_unique_id, server_id);
CREATE INDEX index_clients_server_id_lastconnected_unique_id ON clients (server_id, client_lastconnected, client_unique_id);

CREATE TABLE groups_channel(
  group_id     SERIAL PRIMARY KEY NOT NULL,
  server_id    int NOT NULL,
  name         varchar(50) NOT NULL,
  type         int NOT NULL,
  org_group_id int
);
CREATE INDEX index_groups_channel_id ON groups_channel (group_id);
CREATE INDEX index_groups_channel_serverid ON groups_channel (server_id);

CREATE TABLE groups_server(
  group_id     SERIAL PRIMARY KEY NOT NULL,
  server_id    int NOT NULL,
  name         varchar(50) NOT NULL,
  type         int NOT NULL,
  org_group_id int
);
CREATE INDEX index_groups_server_id ON groups_server (group_id);
CREATE INDEX index_groups_server_serverid ON groups_server (server_id);

CREATE TABLE group_server_to_client(
  group_id        int NOT NULL,
  server_id       int NOT NULL,
  id1             int NOT NULL,
  id2             int NOT NULL
);
CREATE INDEX index_group_server_to_client_id ON group_server_to_client (group_id);
CREATE INDEX index_group_server_to_client_serverid ON group_server_to_client (server_id);
CREATE INDEX index_group_server_to_client_serverid_id1 ON group_server_to_client (server_id, id1);
CREATE INDEX index_group_server_to_client_id1 ON group_server_to_client (id1);

CREATE TABLE group_channel_to_client(
  group_id        int NOT NULL,
  server_id       int NOT NULL,
  id1             int NOT NULL,
  id2             int NOT NULL
);
CREATE INDEX index_group_channel_to_client_id ON group_channel_to_client (group_id);
CREATE INDEX index_group_channel_to_client_serverid ON group_channel_to_client (server_id);
CREATE INDEX index_group_channel_to_client_id1 ON group_channel_to_client (id1);
CREATE INDEX index_group_channel_to_client_id2 ON group_channel_to_client (id2);

CREATE TABLE perm_channel(
  server_id    int NOT NULL,
  id1          int NOT NULL,
  id2          int NOT NULL,
  perm_id      varchar(100) NOT NULL,
  perm_value   int,
  perm_negated int,
  perm_skip    int
);
CREATE INDEX index_perm_channel_serverid ON perm_channel (server_id);

CREATE TABLE perm_channel_clients(
  server_id    int NOT NULL,
  id1          int NOT NULL,
  id2          int NOT NULL,
  perm_id      varchar(100) NOT NULL,
  perm_value   int,
  perm_negated int,
  perm_skip    int
);
CREATE INDEX index_perm_channel_clients_serverid ON perm_channel_clients (server_id);

CREATE TABLE perm_channel_groups(
  server_id    int NOT NULL,
  id1          int NOT NULL,
  id2          int NOT NULL,
  perm_id      varchar(100) NOT NULL,
  perm_value   int,
  perm_negated int,
  perm_skip    int
);
CREATE INDEX index_perm_channel_groups_serverid ON perm_channel_groups (server_id);

CREATE TABLE perm_client(
  server_id    int NOT NULL,
  id1          int NOT NULL,
  id2          int NOT NULL,
  perm_id      varchar(100) NOT NULL,
  perm_value   int,
  perm_negated int,
  perm_skip    int
);
CREATE INDEX index_perm_client_serverid ON perm_client (server_id);

CREATE TABLE perm_server_group(
  server_id    int NOT NULL,
  id1          int NOT NULL,
  id2          int NOT NULL,
  perm_id      varchar(100) NOT NULL,
  perm_value   int,
  perm_negated int,
  perm_skip    int
);
CREATE INDEX index_perm_server_group_serverid ON perm_server_group (server_id);

CREATE TABLE bindings(
  binding_id SERIAL PRIMARY KEY,
  ip         varchar(45) NOT NULL,
  type       int
);

CREATE TABLE server_properties(
  server_id int,
  id     int,
  ident  varchar(100) NOT NULL,
  value  varchar(2048)
);

CREATE INDEX index_server_properties_id ON server_properties (id);
CREATE INDEX index_server_properties_serverid ON server_properties (server_id);

CREATE TABLE servers(
  server_id             SERIAL PRIMARY KEY NOT NULL,
  server_port           int,
  server_autostart      int,
  server_machine_id     varchar(50),
  server_month_upload   bigint default 0,
  server_month_download bigint default 0,
  server_total_upload   bigint default 0,
  server_total_download bigint default 0
);
CREATE INDEX index_servers_machine_id ON servers (server_machine_id);
CREATE INDEX index_servers_serverid ON servers (server_id);
CREATE INDEX index_servers_port ON servers (server_port);
  
CREATE TABLE tokens(
  server_id               int,
  token_key               varchar(50) NOT NULL,
  token_type              int,
  token_id1               int,
  token_id2               int,
  token_created           int,
  token_description       varchar(255),
  token_customset         varchar(255),
  token_from_client_id    int
 );

CREATE TABLE messages(
  message_id              SERIAL PRIMARY KEY,
  server_id               int,
  message_from_client_id  int,
  message_from_client_uid varchar(40),
  message_to_client_id    int,
  message_subject         varchar(255),
  message_msg             text,
  message_timestamp       int,
  message_flag_read       int default 0
);
CREATE INDEX index_messages_serverid ON messages (server_id);
CREATE INDEX index_messages_msgidtoclid_read ON messages (message_to_client_id, message_flag_read);

CREATE TABLE complains(
  server_id               int,
  complain_from_client_id int,
  complain_to_client_id   int,
  complain_message        varchar(255),
  complain_timestamp      int,
  complain_hash           varchar(255)
);
CREATE INDEX index_complains_serverid ON complains (server_id);

CREATE TABLE bans(
  ban_id                  SERIAL PRIMARY KEY,
  server_id               int,
  ban_ip                  varchar(255),
  ban_name                varchar(2048),
  ban_uid                 varchar(255),
  ban_timestamp           int,
  ban_length              int,
  ban_invoker_client_id   int,
  ban_invoker_uid         varchar(40),
  ban_invoker_name        varchar(255),
  ban_reason              varchar(255),
  ban_enforcements        int default 0,
  ban_hash                varchar(255),
  ban_mytsid              varchar(44),
  ban_lastnickname        varchar(100)
);
CREATE INDEX index_bans_serverid ON bans (server_id);

CREATE TABLE instance_properties(
  server_id int,
  string_id varchar(255),
  id     int ,
  ident  varchar(100) NOT NULL,
  value  varchar(255)
);
CREATE INDEX index_instance_properties_id ON instance_properties (id);
CREATE INDEX index_instance_properties_string_id ON instance_properties (string_id);
CREATE INDEX index_instance_properties_serverid ON instance_properties (server_id);

CREATE TABLE custom_fields(
  server_id int,
  client_id int,
  ident  varchar(100) NOT NULL,
  value  varchar(255),
  PRIMARY KEY (server_id, client_id, ident)
);
CREATE INDEX index_custom_fields_by_client ON custom_fields (server_id, client_id);
CREATE INDEX index_custom_fields_by_ident ON custom_fields (server_id, ident);

CREATE TABLE revocations (
  revocation_key VARCHAR(44) NOT NULL,
  revocation_type int NOT NULL,
  revocation_expiration int NOT NULL,
  PRIMARY KEY(revocation_type, revocation_key)
);

CREATE TABLE integrations (
  server_id int NOT NULL,
  integration_id varchar(36) NOT NULL,
  integration_type int NOT NULL,
  integration_user_info varchar(4096),
  PRIMARY KEY(server_id, integration_id)
);
CREATE INDEX index_integrations_server_id ON integrations (server_id);

CREATE TABLE integration_actions (
  integration_action_id SERIAL PRIMARY KEY NOT NULL,
  server_id int NOT NULL,
  integration_id varchar(36) NOT NULL,
  integration_response_type int NOT NULL,
  integration_response_value varchar(255) NOT NULL,
  integration_action_type int NOT NULL,
  integration_action_value varchar(255) NOT NULL
);
CREATE INDEX index_integration_actions_server_id ON integration_actions (server_id);

CREATE TABLE teamspeak3_metadata(
  ident varchar(100) NOT NULL UNIQUE,
  value varchar(255)
);

CREATE TABLE temporary_passwords (
  server_id int NOT NULL,
  temporary_password_hash varchar(28) NOT NULL,
  temporary_password_plaintext varchar(255) NOT NULL,
  temporary_password_creator_id int NOT NULL,
  temporary_password_start_timestamp int NOT NULL,
  temporary_password_end_timestamp int NOT NULL,
  temporary_password_channel_id int NOT NULL,
  temporary_password_channel_password varchar(255),
  temporary_password_description varchar(255),
  PRIMARY KEY(server_id, temporary_password_hash)
);

CREATE TABLE api_keys (
  api_key_id SERIAL PRIMARY KEY NOT NULL,
  server_id int NOT NULL,
  api_key_hash VARCHAR(44) NOT NULL,
  api_key_owner_dbid int NOT NULL,
  api_key_scope int NOT NULL,
  api_key_created_at int NOT NULL,
  api_key_expires_at int NOT NULL
);
