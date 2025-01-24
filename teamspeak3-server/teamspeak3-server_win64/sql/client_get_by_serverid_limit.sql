select c.*, a.value as client_created, b.value as client_description from clients as c 
left join client_properties as a on a.server_id = c.server_id and a.id = c.client_id and a.ident = 'client_created'
left join client_properties as b on b.server_id = c.server_id and b.id = c.client_id and b.ident = 'client_description'
where c.server_id=:server_id: limit :duration: offset :start:;