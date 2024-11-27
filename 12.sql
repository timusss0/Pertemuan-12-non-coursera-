praktikum pertemuan 12 (non coursera)

Page 53 - 81  dikumpulkan di Pertemuan 12

Menampilkan semua record pada tabel buku
SELECT * FROM buku;
SELECT * FROM buku WHERE penerbit = 'Abadi Jaya';

Menampilkan semua record dengan penerbit = "Abadi Jaya"
SELECT * FROM buku WHERE penerbit = 'Abadi Jaya';

Menampilkan record dengan pengelompokan data berdasarkan penerbit (distinct)
SELECT DISTINCT penerbit FROM buku;
SELECT * FROM buku GROUP BY penerbit ORDER BY penerbit ASC;

Menampilkan record dengan pengurutan data berdasarkan penerbit
SELECT * FROM buku ORDER BY penerbit ASC;

 Menampilkan isi record hanya pada field judul_buku, penulis, dan thn_terbit
 SELECT judul_buku, penulis, thn_terbit FROM buku;

Menampilkan isi record dengan penulis bernama depan huruf "A" (menggunakan LIKE)
SELECT * FROM buku WHERE penulis LIKE 'A%';

Menampilkan isi record dengan tahun terbit di bawah tahun 2005
SELECT * FROM buku WHERE thn_terbit < 2005;

Menampilkan isi record dengan judul buku mengandung kata “SQL”
SELECT * FROM buku WHERE judul_buku LIKE '%SQL%';

Menampilkan isi record dengan penulis = “Dewi Lestari” dan hanya field judul_buku, penulis, kemudian diurutkan berdasarkan penulis
SELECT judul_buku, penulis FROM SELECT judul_buku, penulis FROM buku ORDER BY penulis DESC;
buku WHERE penulis = 'Dewi Lestari' ORDER BY penulis ASC;

 Menampilkan isi record hanya field judul_buku, penulis, thn_terbit, dengan tahun terbit di bawah tahun 2005
 SELECT judul_buku, penulis, thn_terbit FROM buku WHERE thn_terbit < 2005;


Menampilkan isi record hanya field judul_buku, penulis, penerbit, dengan penulis = “Andrea Hirata”, diurutkan secara descending berdasarkan judul_buku
SELECT judul_buku, penulis, penerbit FROM buku WHERE penulis = 'Andrea Hirata' ORDER BY judul_buku DESC;


 Buat tabel member
CREATE TABLE member (
    id_member CHAR(5) NOT NULL,
    nama_member VARCHAR(40) NOT NULL,
    alamat VARCHAR(75) NOT NULL,
    semester CHAR(2) NOT NULL,
    usia CHAR(2) NOT NULL,
    PRIMARY KEY (id_member)
);

Masukkan data ke tabel member
INSERT INTO member (id_member, nama_member, alamat, semester, usia) VALUES
('01001', 'Tio Ferdinand', 'Jl. Serpong Raya No.11', '4', '21'),
('01002', 'Amad Sanches', 'Jl. Cilengsang No.20', '3', '20'),
('01003', 'Riki Bahagia', 'Jl. Hutana Karya No.83', '4', '20'),
('01004', 'Rere Kurnia', 'Jl. Smapai Serpong 167', '2', '19'),
('01005', 'Emi Susanti', 'Jl. Nusa Loka 11 - BSD', '1', '18'),
('01006', 'Loki Nurdin', 'Jl. BSD Raya No.20', '1', '18');

Tampilkan isi tabel member
SELECT * FROM member;

 Tampilkan isi record dengan Nama member bernama = "Erni Susanti".
SELECT * FROM member WHERE nama_member = 'Erni Susanti';

Tampilkan isi record dengan usia = "dibawah 21 Tahun".
SELECT * FROM member WHERE usia < '21';


Tampilkan isi record, kecuali member bernama = "Rere Kurnia".
SELECT * FROM member WHERE nama_member != 'Rere Kurnia';

Tampilkan isi record hanya field "nama_member", "semester", kemudian urutkan data berdasarkan semester.
SELECT nama_member, semester FROM member ORDER BY semester;

Tampilkan isi record hanya field "nama_member", "semester", "usia", dimana usia berada "diantara 19-20 tahun".
SELECT nama_member, semester, usia 
FROM member 
WHERE usia BETWEEN '19' AND '20';

Tampilkan isi record dengan usia = "diatas 18 Tahun" dan semester = "diatas semester 2".
SELECT * FROM member 
WHERE usia > '18' AND semester > '2';


Tampilkan isi record hanya field "nama_member", "alamat", dimana member bernama depan huruf = "R", kemudian urutkan data berdasarkan nama_member.
SELECT nama_member, alamat 
FROM member 
WHERE nama_member LIKE 'R%' 
ORDER BY nama_member;


Tampilkan isi record hanya field "nama_member", "alamat", "usia", dimana usia berada "diatas 18 tahun", kemudian urutkan data secara descending berdasarkan nama_member.
SELECT nama_member, alamat, usia 
FROM member 
WHERE usia > '18' 
ORDER BY nama_member DESC;

Tampilkan 4 isi record teratas dari tabel member. (gunakan perintah LIMIT)
SELECT * FROM member LIMIT 4;

Tampilkan 5 isi record teratas dari tabel member, kemudian urutkan secara descending berdasarkan "semester".
SELECT * FROM member 
ORDER BY semester DESC 
LIMIT 5;

Tampilkan isi record, hanya dari record ke-2 hingga record ke-4.
SELECT * FROM member 
LIMIT 1, 3;

Tampilkan isi record, hanya dari record ke-1 hingga record ke-4, kemudian urutkan berdasarkan id_member.
SELECT * FROM member 
ORDER BY id_member 
LIMIT 0, 4;


Tampilkan 3 isi record teratas dari tabel barang.
SELECT * FROM brg
LIMIT 3;

Tampilkan isi record barang dimana stok berada di bawah dari 200 dan tahun pembuatan tahun 2000.
SELECT * FROM brg
WHERE Stok < 200 AND Thn_pembuatan = 2000;

Tampilkan isi record hanya dari record ke-1 hingga record ke-3, kemudian urutkan berdasarkan kode_brg.
SELECT * FROM brg
ORDER BY Kode_brg
LIMIT 3 OFFSET 0;


Tampilkan isi record dengan Kode Barang kecuali BR05.
SELECT * FROM brg
WHERE Kode_brg != 'BR05';








	