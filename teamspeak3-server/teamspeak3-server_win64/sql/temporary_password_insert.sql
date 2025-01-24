insert into temporary_passwords
( server_id,
  temporary_password_hash,
  temporary_password_plaintext,
  temporary_password_creator_id,
  temporary_password_start_timestamp,
  temporary_password_end_timestamp,
  temporary_password_channel_id,
  temporary_password_channel_password,
  temporary_password_description )
values 
( :server_id:,
  :temporary_password_hash:,
  :temporary_password_plaintext:,
  :temporary_password_creator_id:,
  :temporary_password_start_timestamp:,
  :temporary_password_end_timestamp:,
  :temporary_password_channel_id:,
  :temporary_password_channel_password:,
  :temporary_password_description: );