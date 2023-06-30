-- use dbkoperasi
use dbkoperasi;


-- make table pelanggan_log / history perubahan dari table ke pelanggan
create table pelanggan_log(
	id int primary key auto_increment,
    old_nama varchar(100),
    new_nama varchar(100),
    change_date datetime
);

-- chek list table pelanggan
select * from pelanggan_log;

-- make trigger update_data_pelanggan
delimiter //
create trigger update_data_pelanggan
	after update
    on pelanggan
    for each row
begin
	-- logical SQL
    insert into pelanggan_log
    set old_nama = OLD.nama,
		new_nama = NEW.nama,
        change_date = NOW();
end //
delimiter ;

-- update nama pelanggan
update pelanggan set nama='Zayyan' where id = 2;
-- chek list table pelanggan
 select * from pelanggan;
 -- chek list table pelanggan_log
 select * from pelanggan_log;
 
 
 
 -- make trigger update stock :=> produk
DELIMITER //
create trigger after_pembelian_insertt
	after insert
    on pembelian
    for each row
BEGIN
	-- logical SQL 
    update produk set stok = stok + NEW.jumlah
    where id = NEW.produk_id;
END //
DELIMITER ;
 
 -- insert data ke table pembelian 
 insert into pembelian(id,tanggal,nomor,produk_id,jumlah,harga,vendor_id)
 values(default, "2023-06-15","P006",3,10,35000,5);
 
insert into pembelian(id,tanggal,nomor,produk_id,jumlah,harga,vendor_id)
values(default, "2023-06-15", "P007", 1, 20, 35000, 5);
 
 SELECT * FROM produk;
 
 
 