-- Use database
use dbkoperasi;

-- inner join (produk + jenis_produk)
select produk.id, produk.kode,produk.nama,
jenis_produk.nama AS jenis 
FROM produk INNER join jenis_produk ON produk.jenis_produk_id = jenis_produk.id;

-- LEFT JOIN (pelanggan + kartu)
select pelanggan.id, pelanggan.nama, pelanggan.jk AS jenis_kelamin,
kartu.nama AS nama_kartu
FROM pelanggan
LEFT JOIN kartu ON pelanggan.kartu_id = kartu.id;

-- RIGTH JOIN (pelanggan + kartu)
select pelanggan.id, pelanggan.nama, pelanggan.jk AS jenis_kelamin,
kartu.nama AS nama_kartu
FROM pelanggan
RIGHT JOIN kartu ON kartu.id = pelanggan.kartu_id;

-- WORKSHEET 4
SELECT pesanan.id, pesanan.tanggal, pesanan.total,
pelanggan.kode, pelanggan.nama AS nama_pelanggan,
kartu.nama AS kartu_nama,kartu.diskon
from pesanan
inner join pelanggan on pelanggan.id = pesanan.id
inner join kartu on kartu.id = pesanan.id;

--  WORKSHEET4.1
SELECT pembelian.id, pembelian.tanggal,pembelian.nomor,
pembelian.jumlah, pembelian.harga,
produk.nama AS nama_produk,
vendor.nama, vendor.kontak 
from pembelian
inner join produk on produk.id = pembelian.id
inner join vendor on vendor.id = pembelian.id;

-- WORKSHEET 4.2
SELECT pesanan.id, pesanan.tanggal, pesanan.total,
       pelanggan.nama AS nama_pelanggan,
       produk.nama AS nama_produk,
       jenis_produk.nama AS nama_jenis_produk,
       pesanan_items.qty AS quantity, pesanan_items.harga AS harga_jual
FROM pesanan
    INNER JOIN pelanggan ON pelanggan.id = pesanan.id
    INNER JOIN produk ON produk.id = pesanan.id
    INNER JOIN jenis_produk ON jenis_produk.id = pesanan.id
    INNER JOIN pesanan_items ON pesanan_items.id = pesanan.id;

-- Buat VIEW
CREATE VIEW view_pesanan
as SELECT pesanan.id, pesanan.tanggal, pesanan.total,
pelanggan.kode, pelanggan.nama AS nama_pelanggan,
kartu.nama AS kartu_nama,kartu.diskon
from pesanan
inner join pelanggan on pelanggan.id = pesanan.id
inner join kartu on kartu.id = pesanan.id;

select * from view_pesanan