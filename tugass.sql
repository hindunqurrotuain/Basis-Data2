INSERT INTO `kategori`(`id`, `nama_kategori`) VALUES ('[value-1]','[value-2]')

INSERT INTO `materi`(`id`, `kode`, `nama_materi`, `deskripsi`, `durasi_jam`, `biaya`, `Kategori_id`) VALUES 
('1','jv01','java','Dasr-dasar materi','1','80','1')
('2','db01','SQL','Dasr-dasar SQL','1','80','1')

INSERT INTO `pengajar`(`id`, `nip`, `nama`, `gender`, `hp`, `email`, `alamat`, `foto`, `materi_id`) VALUES 
([1','01101','Sutra','Perempuan','082161035623','lidianaelisabet4@gmail.com','Depok','','2')
([2','01102','Sudan','Perempuan','082161035663','lidianaelisabet@gmail.com','Bekasi','','1')


INSERT INTO `penjadwalan_kelas`(`id`, `kode_kelas`, `kelas`, `hari`, `tgl_mulai`, `tgl_akhir`, `jam_mulai`, `jam_akhir`, `materi_id`, `Pengajar_id`, `peserta_id`) VALUES 
('1','ti01','01','selasa','2023-07-01','2023-07-20','07:00:00','09:00:00','1','1','1')
('2','ti13','13','jumat','2023-07-03','2023-07-31','08:00:00','11:00:00','2','2','2')

INSERT INTO `peserta`(`id`, `nama`, `gender`, `hp`, `email`, `alamat`, `foto`, `materi_id`) VALUES 
('1','saiful','Laki-laki','08216103627','lidianaelisabet3@gmail.com','madura','','2')
('2','oci','perempuan','082161025263','dianahutagalung2@gmail.com.com','garut','','1')

INNER JOIN

SELECT kategori.nama_kategori, materi.nama_materi, materi.biaya
FROM kategori
INNER JOIN materi ON kategori.id = materi.Kategori_id

SELECT kt.nama_kategori, mt.nama_materi, psrt.nama, pk.hari
FROM kategori AS kt
INNER JOIN materi AS mt ON kti.id = mt.Kategori_id
INNER JOIN peserta AS psrt ON mt.Kategori_id = psrt.materi_id
INNER JOIN penjadwalan_kelas AS pk ON psrt.materi_id = pk.materi_id


RIGHT JOIN
SELECT pengajar.Materi_id, peserta.Nama 
FROM pengajar RIGHT JOIN peserta 
ON pengajar.Materi_id = peserta.Materi_id;
