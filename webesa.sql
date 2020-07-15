-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Jun 2020 pada 02.48
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webesa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `image` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `role_id` int(1) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` varchar(250) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(3, 'member free', 'esa@gmail.com', 'default.jpg', '$2y$10$xdhHBnhE.T7ZmBTC8PzbD.Bx/MU.GzsnXrg8YmVr6MObXNO6/L4RW', 1, 1, '1569244622'),
(5, 'member standar', 'esaa@gmail.com', 'default.jpg', '$2y$10$vJP9OHFsVQ4uU0KURRTS7OAP.PgdfyAjmITa8IyeKYFu0gT9yF7sa', 2, 1, '1592815076'),
(7, 'member full', 'baku@gmail.com', 'default.jpg', '$2y$10$GZR6pI8CIhEUrY7SbuXj4.v2RJPgrtXwkvNujqtp8dcMHoPwSZm3i', 3, 1, '1592819213'),
(8, 'w', 'w@gmail.com', 'default.jpg', '$2y$10$xISAbJj6CCzAJaMINlQvTOkZ0xcxh2XNMvKKmgwjFVU05N/e5db4S', 2, 1, '1592872888');

-- --------------------------------------------------------

--
-- Struktur dari tabel `vidio1`
--

CREATE TABLE `vidio1` (
  `id_vidio` int(10) NOT NULL,
  `url_vidio` varchar(225) NOT NULL,
  `judulkonten` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `vidio1`
--

INSERT INTO `vidio1` (`id_vidio`, `url_vidio`, `judulkonten`, `isi`, `gambar`) VALUES
(1, 'https://web.facebook.com/plugins/video.php?href=https%3A%2F%2Fweb.facebook.com%2FOnlineVideo12%2Fvideos%2F595737884266959%2F&show_text=1&width=560', 'Blender 3d', 'Blender adalah perangkat lunak sumber terbuka grafika komputer 3D. Perangkat lunak ini digunakan untuk membuat film animasi, efek visual, model cetak 3D, aplikasi 3D interaktif dan permainan video. Blender memiliki beberapa fitur termasuk pemodelan 3D, penteksturan, penyunting gambar bitmap, penulangan, simulasi cairan dan asap, simulasi partikel, animasi, penyunting video, pemahat digital, dan rendering. ', 'gambar1.jpg'),
(2, 'https://web.facebook.com/plugins/video.php?href=https%3A%2F%2Fweb.facebook.com%2FOnlineVideo12%2Fvideos%2F2418700011750277%2F&show_text=1&width=560', 'PHP', 'Hypertext Preprocessor adalah bahasa skrip yang dapat ditanamkan atau disisipkan ke dalam HTML. PHP banyak dipakai untuk memprogram situs web dinamis. PHP dapat digunakan untuk membangun sebuah CMS', 'gambar2.jpg'),
(3, 'https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2FOnlineVideo12%2Fvideos%2F2357558997860374%2F&show_text=1&width=560', 'MYSQL', 'Hasil Telusur\r\nCuplikan pilihan dari web\r\nMySQL adalah sebuah implementasi dari sistem manajemen basisdata relasional (RDBMS) yang didistribusikan secara gratis. Setiap pengguna dapat secara bebas menggunakan MySQL, namun dengan batasan perangkat lunak tersebut tidak boleh dijadikan produk turunan yang bersifat komersial', 'gambar3.jpg'),
(4, 'https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2FOnlineVideo12%2Fvideos%2F2735635193118297%2F&show_text=1&width=560', 'Visual Basic', 'Microsoft Visual Basic merupakan sebuah bahasa pemrograman yang menawarkan Integrated Development Environment visual untuk membuat program perangkat lunak berbasis sistem operasi Microsoft Windows dengan menggunakan model pemrograman.', 'gambar4.jpg'),
(5, 'https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2FOnlineVideo12%2Fvideos%2F515641959176519%2F&show_text=1&width=560', 'HTML', 'Hypertext Markup Language adalah sebuah bahasa markah yang digunakan untuk membuat sebuah halaman web, menampilkan berbagai informasi di dalam sebuah penjelajah web Internet dan pemformatan hiperteks sederhana yang ditulis dalam berkas format ASCII agar dapat menghasilkan tampilan wujud yang terintegrasi', 'gambar5.jpg'),
(6, 'https://web.facebook.com/plugins/video.php?href=https%3A%2F%2Fweb.facebook.com%2FOnlineVideo12%2Fvideos%2F2368972070039184%2F&show_text=1&width=560', 'CSS', 'Cascading Style Sheet (CSS) merupakan aturan untuk mengatur beberapa komponen dalam sebuah web sehingga akan lebih terstruktur dan seragam. CSS bukan merupakan bahasa pemograman.', 'gambar6.jpg'),
(7, 'https://web.facebook.com/plugins/video.php?href=https%3A%2F%2Fweb.facebook.com%2FOnlineVideo12%2Fvideos%2F594893610915328%2F&show_text=1&width=560', 'Kali Linux', 'Kali Linux adalah distro turunan Debian dan juga penerus BackTrack yang digunakan untuk melakukan penetrasi pada jaringan. Kali Linux memiliki ±300 tools yang ada di dalamnya dengan fungsi masing-masing. Kali Linux juga bersifat Live CD dan Installasi manual', 'gambar7.jpg'),
(8, 'https://web.facebook.com/plugins/video.php?href=https%3A%2F%2Fweb.facebook.com%2FOnlineVideo12%2Fvideos%2F544765816421651%2F&show_text=1&width=560', 'Microsoft Windows', 'Microsoft Windows atau yang lebih dikenal dengan sebutan Windows saja adalah keluarga sistem operasi. yang dikembangkan oleh Microsoft, dengan menggunakan antarmuka pengguna grafis. Sistem operasi Windows telah berevolusi dari MS-DOS, sebuah sistem operasi yang berbasis modus teks dan command-line.', 'gambar8.jpg'),
(9, 'https://web.facebook.com/plugins/video.php?href=https%3A%2F%2Fweb.facebook.com%2FOnlineVideo12%2Fvideos%2F535576270590657%2F&show_text=1&width=560', 'Debian', 'Debian adalah sistem operasi komputer yang tersusun dari paket-paket perangkat lunak yang dirilis sebagai perangkat lunak bebas dan terbuka dengan lisensi mayoritas GNU General Public License dan lisensi perangkat lunak bebas lainnya', 'gambar9.jpg'),
(10, 'https://web.facebook.com/plugins/video.php?href=https%3A%2F%2Fweb.facebook.com%2FOnlineVideo12%2Fvideos%2F1130490207135665%2F&show_text=1&width=560', 'Android Studio ', 'Android Studio adalah Integrated Development Enviroment untuk sistem operasi Android, yang dibangung diatas perangkat lunak JetBrains IntelliJ IDEA dan didesain khusus untuk pengembangan Android', 'Gambar10.jpg'),
(11, 'https://web.facebook.com/plugins/video.php?href=https%3A%2F%2Fweb.facebook.com%2FOnlineVideo12%2Fvideos%2F732239237203428%2F&show_text=1&width=560', 'WhatsApp Messenger', 'WhatsApp Messenger adalah aplikasi pesan untuk ponsel cerdas (smartphone) dengan basic mirip BlackBerry Messenger. ... Aplikasi WhatsApp Messenger menggunakan koneksi internet 3G, 4G atau WiFi untuk komunikasi data. Dengan menggunakan WhatsApp, kita dapat melakukan obrolan online, berbagi file, bertukar foto dan lain-lain', 'gambar11.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `web`
--

CREATE TABLE `web` (
  `id_web` int(11) NOT NULL,
  `nama_web` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `web`
--

INSERT INTO `web` (`id_web`, `nama_web`) VALUES
(1, 'web esa');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `vidio1`
--
ALTER TABLE `vidio1`
  ADD PRIMARY KEY (`id_vidio`);

--
-- Indeks untuk tabel `web`
--
ALTER TABLE `web`
  ADD PRIMARY KEY (`id_web`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `vidio1`
--
ALTER TABLE `vidio1`
  MODIFY `id_vidio` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `web`
--
ALTER TABLE `web`
  MODIFY `id_web` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
