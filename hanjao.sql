-- Input data ke tabel Kategori
INSERT INTO Kategori (id_kategori, nama_kategori) VALUES
(1, 'programming'),
(2, 'database'),
(3, 'networking'),
(4, 'aplikasi perkantoran'),
(5, 'desain grafis');

-- Input data ke tabel Materi
INSERT INTO Materi (id, kode, nama, deskripsi, durasi, biaya, kategori_id) VALUES
(1, 'M1', 'Python', 'Pelajari bahasa pemrograman Python', 30, 500000, 1),
(2, 'M2', 'Java', 'Pelajari bahasa pemrograman Java', 40, 600000, 1),
(3, 'M3', 'PHP', 'Pelajari bahasa pemrograman PHP', 35, 550000, 1),
(4, 'M4', 'PostgreSQL', 'Pelajari basis data PostgreSQL', 25, 400000, 2),
(5, 'M5', 'MariaDB', 'Pelajari basis data MariaDB', 20, 350000, 2),
(6, 'M6', 'SQL Server', 'Pelajari basis data SQL Server', 30, 500000, 2);

-- Input data ke tabel Pengajar
INSERT INTO Pengajar (id, nip, nama, gender, no_hp, email, alamat, foto) VALUES
(1, 'P1', 'John Doe', 'Male', '081234567890', 'john.doe@example.com', 'Jl. ABC No. 123', 'john.jpg'),
(2, 'P2', 'Jane Smith', 'Female', '087654321098', 'jane.smith@example.com', 'Jl. XYZ No. 456', 'jane.jpg');

 INSERT INTO Penjadwalan_Kelas (id, kode_kelas, kelas, hari, tgl_mulai, tgl_akhir, jam_awal, jam_akhir, materi_id, pengajar_id, peserta_id) VALUES
    -> (1, 'K1', 'Kelas A', 'Senin', '2023-06-01', '2023-07-01', '09:00:00', '12:00:00', 1, 1, 1),
    -> (2, 'K2', 'Kelas B', 'Selasa', '2023-06-02', '2023-07-02', '13:00:00', '16:00:00', 2, 2, 2);
Query OK, 2 rows affected (0.514 sec)
Records: 2  Duplicates: 0  Warnings: 0

-- Input data ke tabel Peserta
INSERT INTO Peserta (id_peserta, nama, gender, no_hp, email, alamat, foto) VALUES
(1, 'Mike Johnson', 'Male', '082345678901', 'mike.johnson@example.com', 'Jl. DEF No. 789', 'mike.jpg'),
(2, 'Emily Brown', 'Female', '089876543210', 'emily.brown@example.com', 'Jl. GHI No. 987', 'emily.jpg');
