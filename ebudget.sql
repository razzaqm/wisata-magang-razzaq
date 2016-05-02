-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 02 Mei 2016 pada 09.22
-- Versi Server: 10.1.10-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ebudget`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bahanbakar`
--

CREATE TABLE `bahanbakar` (
  `id_bahanbakar` int(2) NOT NULL,
  `keterangan` varchar(10) NOT NULL,
  `harga` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bahanbakar`
--

INSERT INTO `bahanbakar` (`id_bahanbakar`, `keterangan`, `harga`) VALUES
(1, '1 Liter', 7000),
(2, '2 Liter', 14000),
(3, '3 Liter', 21000),
(4, '4 Liter', 28000),
(5, '5 Liter', 35000),
(6, '6 Liter', 42000),
(7, '7 Liter', 49000),
(8, '8 Liter', 56000),
(9, '9 Liter', 63000),
(10, '10 Liter', 70000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(2) NOT NULL,
  `jenis_kategori` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `jenis_kategori`) VALUES
(1, 'Wisata Air'),
(2, 'Wisata Darat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kendaraan`
--

CREATE TABLE `kendaraan` (
  `kode` int(2) NOT NULL,
  `jenis` varchar(8) NOT NULL,
  `jarak/km` int(3) NOT NULL,
  `total_liter` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kendaraan`
--

INSERT INTO `kendaraan` (`kode`, `jenis`, `jarak/km`, `total_liter`) VALUES
(1, 'motor', 51, 1),
(2, 'mobil', 13, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `operator`
--

CREATE TABLE `operator` (
  `id` varchar(10) NOT NULL,
  `namaO` varchar(20) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `status` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `operator`
--

INSERT INTO `operator` (`id`, `namaO`, `alamat`, `username`, `password`, `status`) VALUES
('AD01', 'Razzaq', 'Rumah', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
('AD02', 'Evelyn', 'Rumah', 'admin1', 'e00cf25ad42683b3df678c61f42c6bda', 'admin'),
('d', 'd', 'd', 'd', '8277e0910d750195b448797616e091ad', 'd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wisata`
--

CREATE TABLE `wisata` (
  `id_wisata` varchar(20) NOT NULL,
  `kode_wisata` int(11) NOT NULL,
  `tempat` varchar(30) NOT NULL,
  `info` longtext,
  `jaraklokasi` float NOT NULL,
  `htm` int(10) NOT NULL,
  `bbmliter` int(3) NOT NULL,
  `total` int(20) NOT NULL,
  `bbmliter2` int(2) DEFAULT NULL,
  `total2` int(10) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `operator` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `wisata`
--

INSERT INTO `wisata` (`id_wisata`, `kode_wisata`, `tempat`, `info`, `jaraklokasi`, `htm`, `bbmliter`, `total`, `bbmliter2`, `total2`, `gambar`, `operator`) VALUES
('22', 2, 'dfaa', 'das', 34, 0, 2, 23324, NULL, 2343, NULL, ''),
('air01', 1, 'Hawai Waterpark', 'Waterpark pertama di kota Malang dan di jawa timur yang menyajikan tema Hawai di seluruh area wahana. Hawai Waterpark Malang dibangun di atas lahan dengan luas 28.000 meter persegi pada tahun 2014 dan mulai dioperasikan pada pertengahan tahun 2015. Wisata air ini terletak di Perumahan Graha Kencana Jl Raya Karanglo Malang dengan akses yang sangat strategis yang bisa diakses dari bandara, stasiun dan juga terminal. Dengan Rp 50.000.00 selama soft opening anda bisa menikmati berbagai wahana-wahana yang berkwalitas Internasional.\r\n\r\nAda 10 wahana yang terdapat di Hawai Waterpark Malang, yaitu Hawai Water House, Waikiki Beach, Waimea Stream River, Mavi Island, Rainbow Fall, Akaolu pool, Ekolu slide, Hula-hula slide, Wailele Slide. Dari sembilan wahana yang ada, ada dua wahana yang menjadi unggulan di Hawai Waterpark Malang yaitu Hawai Water House dan Tsunami pool (Waikiki Beach).                                    ', 5.8, 100000, 2, 107000, 1, 107000, 'http://hawaiwaterpark.com/wp-content/uploads/2015/09/akaolu01.jpg', 'AD01'),
('air02', 1, 'Coban Rondo', 'Wisata Air terjun Coban Rondo Malang ini merupakan salah satu destinasi wisata yang sangat populer di kalangan wisatawan baik domestik maupun mancanegara. Air terjun setinggi 84 meter dan berada di ketinggian 1.135 MDPL ini berasal dari sumber mata air Cemoro Dudo yang terletak di lereng Gunung Kawi  dengan debit 150 liter per detik pada musim hujan dan 90 liter per detik di musim kemarau.\r\n\r\nPanorama air terjun yang menghembuskan butir-butir air yang dibalut dengan keindahan alam dan disempurnakan dengan udara sejuk pegunungan yang masih sangat alami ini memang menjadi daya tarik yang luar biasa bagi para wisatawan. Pada akhir pekan atau hari libur nasional, tempat ini banyak dikunjungi oleh para wisatawan baik dari dalam maupun luar negeri.', 30.9, 15000, 2, 29000, 6, 57000, 'http://malangonline.com/wp-content/uploads/2015/02/coban-rondo.jpg', 'AD02'),
('air03', 1, 'Pulau Sempu ', 'Pulau Sempu adalah salah satu dari surga panorama wisata Indonesia. Daya tarik Pulau ini adalah sebuah danau alami yang berada di tengah-tengah pulaunya. Danau ini terbentuk dari ganasnya ombak air laut selatan yang masuk melalui celah tebing pembatas pulau yang berlubang di salah satu sisi pulau. Selain itu, pasir yang terdapat di Pulau Sempu sangatlah bersih dan lembut.\r\n\r\n\r\nLokasi Pulau Sempu sendiri berada di Pantai (Tempat Pelelangan Ikan) Sendang Biru Kabupaten Malang (Malang Selatan), Propinsi Jawa Timur. Untuk mencapai Pulau ini dari kota Malang anda disarankan membawa kendaraan pribadi roda empat. Saat anda sampai di Pantai Sendang Biru, anda harus menyewa perahu boat untuk mencapai Pulau Sempu. Jangan lupa, nanti Ibu penjaga perahu akan memberikan nomor hpnya untuk anda hubungi ketika anda bermaksud hendak pulang, dan minta dijemput di tepi Pantai Pulau Sempu.', 76, 5000, 3, 33000, 7, 124000, 'https://rizkirahmatia.files.wordpress.com/2015/03/pulau-sempu-2.jpg', 'AD01'),
('air04', 1, 'Pantai Balekambang', 'Pantai Balekambang, adalah salah satu obyek wisata pantai yang bisa di kunjuni di Malang. Pantai ini terletak di kecamatan Bantur, 65 Km sebelah selatan kota Malang. Pantai Balekambang terbentang dengan sangat indah dimana terdapat karang laut sepanjang 2 km dan memiliki lebar 200 meter ke arah laut.\r\n\r\nTerdapat 3 pulau yang terdekat dengan dengan pantai ini, yaitu Pulau Ismoyo, Pulau Anoman dan Pulau Wisanggeni. Tepat di atas pulau Ismoyo, terdapat sebuah Pura megah yang bernama Pura Luhur Amertha Jati, dan sebuah jembatan yang menghubungkannya melalui pantai utama Balekambang.', 10, 10000, 1, 17000, 2, 24000, 'http://surabaya.panduanwisata.id/files/2013/10/Pantai-Balekambang-Malang1.jpg', 'AD01'),
('darat01', 2, 'Jatim Park 1', 'Jatim Park 1 Malang merupakan salah satu wahana rekreasi keluarga yang terletak di lereng bagian timur gunung Panderman Kota Batu dengan ketinggian 850 MDPL, sehingga tidak saja menawarkan rekreasi yang mengasyikkan namun juga hawa yang sejuk dan panorama yang indah. Selain media untuk rekreasi, Jatim Park 1 juga mengusung konsep edukasi dengan dilengkapi wahana Galeri Belajar bernama Science Stadium. Bangunan yang berkapasitas 300 orang ini dilengkapi dengan alat peraga ilmu terapan baik yang indoor maupun outdoor. \r\nAlamat Jatim Park 1 terletak di Jalan Kartika 2 Kota Wisata Batu, Kota Batu, Jawa Timur. Nomor telp. (0341) 597777 & SMS Center di 0857-5529-7777.', 19.6, 80000, 1, 87000, 2, 94000, 'http://wisatapedi.com/wp-content/uploads/2015/07/wahana-jatim-park-1-1.jpg', 'AD02'),
('darat02', 2, 'Museum Angkut', '                                                                                Museum Angkut merupakan sebuah tempat wisata baru yang memiliki konsep unik. Dibuka pada tanggal 9 Maret 2014, Museum Angkut menjadi tempat wisata pertama di Asia Tenggara yang mengusung tema transportasi. Museum ini dibangun sebagai tanda apresiasi untuk perkembangan dunia transportasi nusantara dan dunia. Maka tak mengherankan jika di sini Anda bisa menyaksikan berbagai koleksi moda transportasi mulai dari yang masih menggunakan tenaga binatang sampai tenaga listrik.\r\nSelain mendapatkan informasi mengenai perkembangan dunia transportasi dunia, Anda yang hobi foto juga bisa memuaskan kegemaran Anda di tempat wisata ini. Berbagai landmark buatan yang ada tentunya bisa menjadi latar foto yang menarik. Museum Angkut juga seringkali dijadikan lokasi pameran, event komunitas, kompetisi modifikasi mobil sampai foto prewedding dan pengambilan gambar video klip.                                                                        ', 20.2, 80000, 1, 87000, 4, 108000, 'http://anekatempatwisata.com/wp-content/uploads/2014/12/Museum-Angkut.jpg', 'AD01'),
('eadf', 2, 'eafd', 'adsfc', 34, 10000, 3, 13000, 3, 13000, NULL, ''),
('eadf22', 2, 'eafd', 'adsfc', 34, 10000, 3, 13000, 3, 13000, NULL, ''),
('eadf221', 2, 'eafd', 'adsfc', 34, 10000, 3, 13000, 3, 13000, NULL, ''),
('qwa', 2, 'erteradf', 'afdgaed', 34, 5000, 3, 13000, 3, 13000, NULL, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bahanbakar`
--
ALTER TABLE `bahanbakar`
  ADD PRIMARY KEY (`id_bahanbakar`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `operator`
--
ALTER TABLE `operator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id_wisata`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kendaraan`
--
ALTER TABLE `kendaraan`
  MODIFY `kode` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
