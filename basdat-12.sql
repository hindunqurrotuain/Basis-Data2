-- menggunakan dbkoperasi;
use dbkoperasi;


-- Make prosedur getAllProducts() -> produk & jenis_produk
delimiter $$
-- statment create prosedur name
create procedure getAllProducts()
begin 
	-- query sql
	select produk.*, jenis_produk.nama
    from produk inner join jenis_produk on produk.jenis_produk_id = jenis_produk.id;
end $$
delimiter ;

call getAllProducts();

-- Make produk getPoductById(params) -> produk & jenis_product
delimiter $$
-- statment create prosedur name
create procedure getPoductById(in id_produk int)
begin 
	-- query sql
	select produk.*, jenis_produk.nama
    from produk inner join jenis_produk on produk.jenis_produk_id = jenis_produk.id
    where produk.id = id_produk;
end $$
delimiter ;
-- menghapus 
drop procedure  getPoductById;

call getPoductById(1);
call getPoductById(5);


-- make procedure sumLuasaPersegi(OUT params)
delimiter $$
-- statment create prosedur name
create procedure sumLuasaPersegi(in sisi int,out hasil int)
begin 
	-- query sql
	select sisi * sisi into hasil;
end $$
delimiter ;

 call sumLuasaPersegi(5,@hasil);
 select @hasil as luas;


-- function 

-- make function sayHello(params name)
delimiter $$
-- statment make function name
create function sayHello(name varchar(20))
-- return data (datatype)
returns text 
begin
	-- return data + logical sql
    return concat("Hello,", name);
end $$
delimiter ;
select sayHello("Jin") as nama_lengkap;

-- make function getGender(params jenis_kelamin char(1))
delimiter $$
-- statment make function name
create function getGender(jeniskelamin char(1))
-- return data (datatype)
returns varchar(20)
begin
	-- deklarasi variable
    declare keterangan varchar(20);
    
	-- return data + logical sql
    -- if (jeniskelamin == "L") => "laki-laki"
    -- if (jeniskelamin == "P") => "perempuan"
    if(jeniskelamin = "L") then
		set keterangan = "laki-laki";
	elseif(jeniskelamin = "P") then
		set keterangan = "perempuan";
	else set keterangan =" jadi-jadian";
    end if;
    return keterangan;
end $$
delimiter ;

select * from pelanggan;

select nama, getGender(jk) from pelanggan;
