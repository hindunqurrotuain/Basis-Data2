-- create user jhosua 
create user 'jhosua'@'localhost' identified by 'password';

-- cek user akses yg sudah ada
 select * from mysql.user;
 
 -- kasih hak akses ke 1 db
 grant all privileges on dbkoperasi.* to 'jhosua'@'localhost';
 
 -- dri user root kasih akses ke => user jhosua
 flush privileges;