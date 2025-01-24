CREATE TABLE temporary_passwords (
  server_id integer unsigned NOT NULL,
  temporary_password_hash varchar(28) NOT NULL,
  temporary_password_plaintext varchar(255) NOT NULL,
  temporary_password_creator_id integer NOT NULL,
  temporary_password_start_timestamp integer unsigned NOT NULL,
  temporary_password_end_timestamp integer unsigned NOT NULL,
  temporary_password_channel_id integer NOT NULL,
  temporary_password_channel_password varchar(255),
  temporary_password_description varchar(255),
  PRIMARY KEY(server_id, temporary_password_hash)
) CHARACTER SET 'utf8mb4';