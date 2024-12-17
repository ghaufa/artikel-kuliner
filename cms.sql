-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 17, 2024 at 12:15 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `caraousel`
--

CREATE TABLE `caraousel` (
  `id_caraousel` int NOT NULL,
  `judul` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `judul2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `caraousel`
--

INSERT INTO `caraousel` (`id_caraousel`, `judul`, `foto`, `judul2`) VALUES
(21, 'Beef Steak', '20241216093036.jpg', 'Daging Sapi'),
(22, 'Kentang', '20241217115929.jpg', 'Goreng '),
(23, 'Matcha', '20241217120042.jpg', 'Latte');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int NOT NULL,
  `nama_kategori` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(4, 'Minuman'),
(5, 'Cepat Saji'),
(6, 'Makanan'),
(9, 'Cemilan');

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int NOT NULL,
  `judul_website` varchar(200) NOT NULL,
  `profil_website` text NOT NULL,
  `instagram` varchar(100) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `no_wa` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `judul_website`, `profil_website`, `instagram`, `facebook`, `email`, `alamat`, `no_wa`) VALUES
(1, 'KULINERANS', 'Selamat datang di Kulinerans! Blog ini adalah rumah bagi para pecinta kuliner yang ingin menjelajahi keanekaragaman rasa dari seluruh penjuru Indonesia hingga dunia. Kami menyajikan ulasan makanan, resep khas, tips kuliner, hingga destinasi wisata kuliner menarik yang patut dicoba. Nikmati setiap gigitan cerita di sini!\r\n\r\n\r\nRasa Nusantara berdiri dengan misi menyebarkan kecintaan terhadap kuliner dan budaya makan, mulai dari makanan kaki lima hingga restoran bintang lima. Blog ini menjadi wadah inspirasi bagi para pembaca yang ingin memasak sendiri atau mencari rekomendasi tempat makan enak.', 'https://www.instagram.com/ghaufaa_/', 'https://www.facebook.com/ghaufaa_/', 'ghulamaufa4@gmail.com', 'Plosorejo(01/02),Kuto,Kec.Kerjo,Kab.Karanganyar, Prov.Jawa Tengah,Indonesia', 'https://wa.me/(+6281327142452)');

-- --------------------------------------------------------

--
-- Table structure for table `konten`
--

CREATE TABLE `konten` (
  `id_konten` int NOT NULL,
  `judul` varchar(200) NOT NULL,
  `keterangan` text NOT NULL,
  `foto` varchar(50) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `id_kategori` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `konten`
--

INSERT INTO `konten` (`id_konten`, `judul`, `keterangan`, `foto`, `slug`, `id_kategori`, `tanggal`, `username`) VALUES
(33, 'Dimsum', 'Dimsum yang dalam bahasa Mandarin berarti menyentuh hati adalah hidangan yang terdiri dari beberapa jenis makanan yang berukuran kecil. Ukurannya yang kecil ini, membuat dimsum pada mulanya hanya camilan untuk menemani minum teh saja. Saat ini dimsum sangat populer di kalangan masyarakat di seluruh dunia. \r\nDim sum merupakan makanan berukuran kecil dimana \r\nmemiliki kandungan gizi tinggi. Kebanyakan dim sum yaitu berisi \r\ndaging, ayam, ikan, udang, buah-buahan, dan sayur-sayuran. \r\nKepopuleran dim sum di Indonesia cukup luas, sangat diminati dan \r\ndigemari oleh masyarakat Indonesia\r\n\r\nDim sum merupakan makanan yang cukup popular dan banyak \r\npenggemarnya, dan terbukti banyak bermunculan di restoran-restoran \r\nyang menyajikan pangan tradisional China. Pada umumnya dim sum \r\nmemiliki rasa asin, gurih dan manis dan memiliki ragam tampilan \r\nbentuk. Jenisnya ada beberapa macam diantaranya, dumpling yaitu \r\ndim sum dengan kulit transparan, diisi dengan daging sapi, ayam, \r\nudang, kepiting dan sayuran. Jenis lainnya adalah pao kukus, yaitu roti \r\nkukus isi daging. Lumpia juga termasuk dim sum, siomay dan lain-lain. \r\nDim sum dengan rasa gurih seperti misalnya siomay, lumpia, hakau, \r\nwotie dan bakpao\r\n\r\nResep Pembuatan Dimsum\r\n1) Bahan Kulit : \r\na) 120 gram tepung terigu protein sedang \r\nb) 65 gram air hangat \r\nc) ½ sdt garam \r\n\r\n2) Bahan Isi : \r\na) .200 gram paha ayam fillet \r\nb) .50 gram kulit ayam \r\nc) .50 gram udang kupas \r\nd) .2 siung bawang putih \r\ne) .1 butir telur (putih) \r\nf) .9 sdm tepung sagu \r\ng). ½ sdm garam \r\nh). 1 sdm gula \r\ni) .½ sdt merica \r\nj). ¼ sdt kaldu jamur \r\nk). 2 sdt saus tiram \r\nl) .2 sdt minyak wijen \r\nm) .2 sdt kecap asin \r\nn). 500 gram wortel parut\r\n\r\nCara Pembuatan Dimsum\r\na). Masukkan ½ daging ayam, bawang putih, tepung sagu, putih \r\ntelur, saus tiram, kecap asin, minyak wijen, merica, garam, \r\ngula, kaldu jamur, dan es batu kedalam food processor, \r\ncincang hingga halus\r\nb). Kemudian masukkan kembali sisa daging ayam dan udang, \r\ncincang sebentar \r\nc). Pindahkan ke wadah, masukkan ½ parutan wortel, aduk rata \r\nd). Ambil kulit dim sum, beri 1 sdm adonan lalu bungkus dan beri \r\nparutan wortel di atasnya \r\ne) .Kukus dim sum 15-20 menit \r\nf). Dim sum siap disajikan', '20241124134838.jpg', 'Dimsum', '9', '2024-12-16', 'gupa'),
(38, 'Beef Steak', 'Steak berasal dari beef steak yang artinya adalah sepotong daging. Daging yang,biasanya diolah menjadi steak adalah daging merah dan dada ayam.Kebanyakan steak dipotong tegak lurus dengan fiber otot, menambah kelegitan daging.Steak biasanya dimasak dengan cara dipanggang/dibakar akan tetapi dapat juga digoreng tepung.Steak merupakan potongan daging yang sesuai untuk diolah menjadi masakan.Kata steak lebih populer sebagai olahan dari daging yang dipanggang atau dibakar. Steak biasanya disajikan bersama aneka saus pilihan misalnya saus barbeque, saus lada hitam, saus putih, dan sebagainya.\r\n\r\nSteak akan dimasak dengan cara dipanggang atau dibakar di atas api sehingga akan menguarkan aroma yang khas dan menggugah selera.Menurut sejarah, sajian protein hewani ini sudah dikenal sejak abad ke-15.Hal itu bisa diketahui dari beberapa resep steak yang tercantum pada buku-buku resep masakan sezaman.\r\n\r\nBerbeda dengan sajian sate khas nusantara yang dibumbui dengan berbagai rempah sebelum dibakar, steak dimasak tanpa tambahan banyak bumbu agar tetap memiliki cita rasa khas dagingnya.\r\nSajian ini umumnya disajikan dalam lima pilihan tingkat kematangan, yaitu rare (matang di luar, mentah di dalam), medium rare (matang 40%), medium (matang 60%), medium well (matang 80%), dan well done (matang sempurna). Berikut resep dan cara membuat steak:\r\n\r\nResep Pembuatan Steak:\r\n\r\nBahan Utama :\r\n400 gr daging sapi\r\n150 gr buncis\r\n2 buah wortel\r\n250 gr kentang\r\nBumbu marinade daging :\r\n2 siung bawang putih\r\n1 sdt merica\r\n1 sdm kecap inggris\r\n2 sdm kecap manis\r\n1 sdt garam\r\nBahan saus :\r\n1 siung bawang putih\r\n1/2 buah bawang Bombay\r\n2 buah bawang merah (skip kalo sudah pakai bawang Bombay)\r\n1 sdm gula merah sisir\r\n1 sachet Saori saus tiram\r\n6 sdm saus tomat\r\n4 sdm saus sambal\r\n2 sdm kecap manis\r\n1,5 sdm kecap inggris\r\n0,5 sdt meric\r\n\r\nCara Pembuatan Steak:\r\n1. Cuci bersih daging, potong tipis setebal +- 2 cm, tiriskan\r\n\r\n2. Haluskan bumbu marinade. Lalu balurkan ke dalam daging. Diamkan 30 menit - 1 jam\r\n\r\n3. Siangi buncis, lalu potong, kupas wortel dan kentang, potong memanjang. Lalu rebus semuanya. Atau khusus kentang bisa digoreng kalo suka. Ak direbus semua,biar ngga ribet hehe. Kemudian tiriskan.\r\n\r\n4. Untuk saus : cincang bawang putih, potong bawang Bombay. Lalu panaskan mentega/ margarine, tumis bawang sampai harum kemudian tambahkan bahan saus (kecuali air dan maizena), aduk sampai rata. Kemudian tambahkan air.\r\n\r\n5. Jika saus sudah mendidih. Koreksi rasa. Jika sudah, tambahkan maizena sampai mengental. Saus sudah jadi\r\n\r\n6. Memanggang steak : gunakan teflon, atau panggangan anti lengket. Olesi minyak dan mentega. Panggang daging sampai matang dan kecoklatan\r\n\r\n7. Ambil piring (bagusnya sih flatplate atau hot plate ya). Tata daging, wortel, buncis, kentang. Kemudian siram daging dengan saus. Jadi dehh', '20241202063243.jpg', 'Beef-Steak', '6', '2024-12-16', 'gupa'),
(39, 'Es Pisang Ijo', 'Saat musim kemarau panjang, segar rasanya jika minum es. Tapi kalau mencari kudapan yang segar sekaligus mengenyangkan, es pisang ijo adalah pilihan yang tepat. Rasanya juga manis dan nikmat.\r\n\r\nEs Pisang Ijo adalah kudapan khas dari Makassar, Sulawesi Selatan. Hidangan ini diolah dari buah pisang raja, ambon, atau kepok yang sudah matang. Pisang dibalut dengan adonan tepung beras bercampur santan dan air daun pandan yang memberi warna hijau dan aroma pandan. Lalu, diberi tambahan tepung terigu rebus yang kenyal atau bubur sum-sum, disiram dengan sirop warna merah khas Makassar, dan lelehan susu kental.\r\nSetumpuk es serut atau bongkahan-bongkahan kecil es akan melengkapi penyajiannya. Minuman yang mengenyangkan ini disajikan di mangkuk atau piring yang agak ceper. Biasanya ditemani makanan ringan seperti jalangkote (mirip pastel) dan lumpia. Sajiannya memang sederhana, tetapi terasa nikmat sebagai pelepas dahaga.\r\n\r\nTak sulit untuk membuat es pisang ijo. Bahan-bahannya mudah diperoleh dari warung-warung sekitar rumah.Bahan utama untuk membuat es pisang ijo adalah pisang. Menurut Suyanti dan Ahmad Supriyadi dalam Pisang: Budi Daya, Pengolahan, dan Prospek Pasar, tanaman pisang telah ada sejak manusia ada. Namun, saat itu pisang masih tanaman liar yang tidak dibudidayakan. Pembudidayaan baru dilakukan saat kebudayaan pertanian menetap.\r\n\r\nResep Pembuatan Es Pisang Ijo:\r\n\r\nBahan-bahan:\r\n\r\nBahan Pisang Ijo :\r\n10 Buah Pisang Kepok/Pisang Tanduk/Pisang Nangka\r\n600 Ml Air\r\n150 Gram Tepung Beras\r\n150 Gram Tepung Terigu\r\n60 Gram Gula Pasir\r\n65 Ml Santan Kental Instan\r\n1/2 Sdt Garam\r\nSecukupnya Pasta Pandan\r\n\r\nBahan Bubur Sumsum :\r\n750 Ml Air\r\n100 Gram Tepung Beras\r\n65 Ml Santan Kental Instan\r\n1/2 Sdt Garam\r\n2 Lembar Daun Pandan\r\n\r\nBahan Saus Santan :\r\n65 Ml Santan Kental Instan\r\n500 Ml Air\r\n2 Lembar Daun Pandan\r\n2 Sdm Tepung Maizena\r\n1/2 Sdt Garam\r\n\r\nBahan Pelengkap :\r\nSecukupnya Sirup DHT Pisang Ambon/Cocopandan\r\nSecukupnya Susu Kental Manis\r\n\r\n1. Kukus Pisang Dengan Kulitnya selama 15 menit.Angkat,Dinginkan.\r\n\r\n2. Campur didalam wadah tepung terigu,tepung beras,gula pasir,garam,santan kental dan air.Aduk Merata,lalu beri pasta pandan secukupnya.\r\n\r\n3. Saring adonan kulit agar terpisah dari gerindil.Lalu masak dengan api kecil hingga matang.Selama proses pemasakan harus terus diaduk ya.Matang,Angkat\r\n\r\n4. Siapkan plastik,olesi tipis dengan minyak sayur.Lalu ambil adonan kulit sekitar 1-2 sdm,pipihkan.\r\n\r\n5. Beri 1 buah pisang,lalu tutup semua permukaan pisang dengan adonan kulit.Lakukan hingga habis,Kukus dengan api sedang cenderung kecil selama 20 menit.Jika Takut Menempel,kalian bisa bungkus terlebih dahulu dengan daun pisang.Angkat Dinginkan.\r\n\r\n6. Membuat Bubur Sumsum,Masukan semua bahan bubur sumsum kedalam panci aduk rata.Lalu Masak Dengan Api kecil hingga matang (harus terus diaduk selama proses masak).Cirinya sudah matang mengental dan banyak letupan.Angkat Dinginkan.Bisa Kalian Masukan Kedalam Kulkas Dulu Ya Pisang Ijo nya.\r\n\r\n7. Membuat Saus Santan : Masukan Semua Bahan Saus Santan Kedalam Panci,Lalu Masak Dengan Api Sedang Hingga Mendidih.Angkat Dinginkan.\r\n\r\n8. Jika Semua Bahan Sudah Dingin,Siap Untuk Penyajian.Potong Pisang Ijo Sesuai Selera.Siapkan Mangkuk Saji,Tuang Es Batu/Es Serut Secukupnya.\r\n\r\n9. Lalu Beri Bubur Sumsum secukupnya,Tata Pisang Ijo diatas Bubur Sumsum.Tambahkan Saus Santan Diatas Es.\r\n\r\n10. Kemudian Beri Sirup Cocopandan/DHT secukupnya dan Susu Kental Manis Secukupnya. Es Pisang Ijo Siap Dinikmati.', '20241202065754.jpg', 'Es-Pisang-Ijo', '4', '2024-12-16', 'gupa'),
(40, 'Es Cendol', 'Es cendol adalah makanan yang terdiri dari campuran tepung beras, air gula dan santan. Minuman ini memiliki bentuk tetesan dan terbuat dari tepung beras hijau, santan dan sirup gula aren. Es cendol biasanya disajikan sebagai penutup makan yang manis dan segar. Informasi tentang istilah cendol atau tjendol bisa ditemukan dalam berbagai kamus dan buku abad ke-19 yang diterbitkan saat Hindia Belanda. Salah satu catatan tertua tentang tjendol ditemukan dalam buku resep Hindia Timur, yaitu Oost-Indisch kookboek yang diterbitkan pada tahun 1866. Dalam buku ini terdapat resep cendol yang berjudul “Tjendol of Dawet”, menunjukkan bahwa cendol dan dawet digunakan sebagai sinonim pada masa itu. Dalam kamus Supplement op het Maleisch-Nederduitsch Woordenboek tahun 1869 oleh Jan Pijnappel (Gz.), “tjendol” dijelaskan sebagai minuman atau pasta encer dari bahan-bahan seperti sagu, santan, gula dan garam.\r\n\r\nEs Cendol merupakan minuman tradisional Indonesia yang saat ini terbuat dari tepung beras. Dalam proses pembuatannya, tepung beras diolah dan diberi warna hijau, selanjutnya dicetak menjadi buliran dengan menggunakan alat khusus. Pewarna hijau yang digunakan biasanya berasal dari daun pandan, tetapi sekarang lebih banyak menggunakan pewarna makanan buatan. Minuman ini memiliki rasa yang manis dan gurih, dan biasanya disajikan bersama es parut, gula merah cair, dan santan. Cendol biasanya disajikan sebagai pencuci mulut atau makanan selingan. Minuman ini sangat cocok disajikan saat siang hari pada cuaca panas.\r\n\r\nResep Pembuatan Es Cendol:\r\n\r\nBahan cendol\r\n100 gram tepung beras\r\n30 gram tepung tapioka\r\n15 gram jelly plain\r\n15 lembar daun pandan\r\n1 liter air\r\n1 sdt garam\r\n\r\nKuah santan\r\n1/2 butir kelapa di parut\r\n750 ml air\r\n1 sdm garam\r\n2 lembar daun pandan\r\nAir gula\r\n250 gram gula Jawa (khusus untuk cendol)\r\n5 sdm gula pasir\r\n250 ml air\r\n2 lembar daun pandan\r\n1 sdt garam\r\n\r\nCara Pembuatan Es cendol\r\n\r\n1. Blender daun pandan dengan 1 liter air. Lalu saring.\r\n\r\n2. Campurkan tepung beras, tepung tapioka, jelly dan garam. Tambahkan air pandan sedikit demi sedikit. Aduk rata jangan sampai menggumpal.\r\n\r\n3. Panaskan adonan cendol dan terus aduk hingga mengental. Dinginkan sebentar lalu cetak. Bisa menggunakan saringan atau cetakan khusus.\r\n\r\n4. Untuk kuah santan, perasa santan lalu saring. Tambahkan garam dan daun pandan, rebus tapi jangan sampai pecah\r\n\r\n5. Untuk air gula, sisir gula Jawa dan tambahkan air, gula pasir, garam dan daun pandan. Rebus hingga mengental\r\n\r\n6. Sajikan es cendol dawet sesuai selera plus tambahkan es batu', '20241202065814.jpg', 'Es-Cendol', '4', '2024-12-16', 'gupa'),
(48, 'TENGKLENG', 'Tengkleng adalah masakan yang mengolah daging kambing menjadi makanan berkuah seperti gulai namun tidak menggunakan santan. Masakan ini berisi tulang kambing dan terdapat daging yang menempel di tulang.\r\nSelain tulang dan daging, beberapa warung tengkleng juga menyajikan sate usus, sate jerohan, otak, dan organ dari kambing. Berdasarkan penggemar tengkleng, paling nikmat ketika menyantapnya dengan menggerogoti daging yang menempel di tulang tersebut.\r\n\r\n\"Tengkleng lahir dari buah kreativitas wong Solo dalam menghadapi situasi yang mencekik, tepatnya masa penjajahan Jepang,\" jelas Heri Priyatmoko\r\n\r\nTengkleng memiliki rasa unik dan sering kali menjadi incaran penggemar kuliner. Tengkleng adalah salah satu makanan khas Solo yang berbahan dasar dari daging kambing. Rasanya gurih dan manis menjadi ciri khas dari kuliner ini.\r\n\r\nSiapa yang bisa menyangka bahwa dulu, tengkleng adalah makanan untuk masyarakat kurang mampu karena tidak bisa membeli daging utuh. Karena, pada zaman dahulu, masyarakat kaya atau bangsawan saja yang bisa menikmati hidangan daging.\r\nPengolahan tulang kambing menjadi tengkleng sangat lama sekitar 2 jam karena harus melalui proses merebus hingga di ekstrak. Bahan yang biasa digunakan dalam tengkleng adalah kepala, iga, dan kaki yang dibumbui oleh rempah.\r\n\r\nResep Tengkleng\r\nBahan :\r\n500 g daging dan tulang iga kambing\r\n1.5 liter air\r\n3 sdm minyak sayur\r\n2 lembar daun salam\r\n2 lembar daun jeruk\r\n2 cm lengkuas, memarkan\r\n3 cm kayu manis\r\n5 butir cengkih\r\n10 buah cabe rawit merah\r\nBumbu halus:\r\n4 butir kemiri\r\n1 sdt ketumbar\r\n1/2 sdt jinten\r\n5 butir bawang merah\r\n3 siung bawang putih\r\n2 cm jahe\r\n3 cm jahe\r\n1 sdt gula pasir\r\n2 sdt garam', '20241213151801.jpg', 'TENGKLENG', '6', '2024-12-15', 'gupa'),
(49, 'Onigiri', 'Onigiri  mengambil namanya dari kata Jepang  nigiru , yang berarti \"memegang\" atau \"meremas,\" disebut demikian karena ditekan dengan tangan menjadi sebuah bola. Camilan ini juga disebut  nigirimeshi , istilah lain yang  menjadi asal muasal  nama  onigiri . Onigiri  sering disebut  omusubi , kedua istilah tersebut berarti camilan nasi yang ditekan dengan tangan menjadi bentuk yang mudah dipegang dan dimakan, meskipun yang terakhir hampir selalu berbentuk segitiga.  Onigiri  dapat dimakan baik dingin maupun panas, meskipun jika tidak segera didinginkan, pati dalam nasi dapat membuatnya rapuh.\r\n\r\nOnigiri merupakan makanan yang umum di Jepang, sering dimakan sebagai camilan cepat saat bepergian. Konbini (toko serba ada) dan supermarket menyediakan lemari pendingin khusus untuk onigiri, pedagang kaki lima yang menjual onigiri dapat dilihat di dekat stasiun kereta dan taman, dan onigiri merupakan makanan yang umum ditemukan dalam kotak bento (kotak makan siang Jepang yang dibagi menjadi beberapa bagian) dan menu makan siang sekolah.\r\n\r\nOnigiri paling enak dibuat dengan beras putih berbiji pendek yang direbus atau dikukus hingga kekencangan yang diinginkan, yang seharusnya al dente. Tambahan seperti salmon , biji wijen, acar sayuran, tuna, dan telur ikan dapat ditambahkan ke nasi setelah dimasak. Koki yang menganut tradisi menaburkan garam di tangan mereka dan kemudian membentuk onigiri menjadi bola-bola. Bola-bola ini sering kali dibungkus seluruhnya atau sebagian dengan lembaran rumput laut setipis kertas dan diberi bumbu yang disebut furikake , yang menggabungkan serpihan rumput laut dengan rempah kering dan garam.\r\n\r\nCara Membuatnya:\r\n\r\n1.Pertama, kita rendam terlebih dahulu beras ketan selama 15 menit. Setelah itu, tiriskan lalu satukan dengan beras biasa kemudian cuci.\r\n\r\n2.Masak nasi di rice cooker seperti biasa. Setelah matang, aduk dengan bawang daun yang telah dicincang dan Royco Kaldu Ayam hingga merata.\r\n\r\n3.Ambil dua hingga tiga sendok makan nasi lalu kepal. Isi bagian dalam dengan abon, telur dadar, dan sambal mayo. Tutup dan rapikan membentuk segitiga.\r\n\r\n4.Potong nori membentuk persegi panjang dan tempelkan di bagian bawah nasi kepal.\r\n\r\n5.Ulangi langkah yang sama. Masukkan onigiri ke dalam wadah. Bekal makan siangmu sudah siap!', '20241215155718.jpg', 'Onigiri', '9', '2024-12-15', 'gupa'),
(50, 'Nasi Goreng', 'Nasi goreng merupakan sajian nasi yang digoreng dalam sebuah wajan atau penggorengan yang menghasilkan cita rasa berbeda karena dicampur dengan bumbu-bumbu seperti garam, bawang putih, bawang merah, merica, rempah-rempah tertentu dan kecap manis. Selain itu, ditambahkan bahan-bahan pelengkap seperti telur, sayur-sayuran, makanan laut, atau daging. Makanan tersebut sering kali disantap sendiri atau disertai dengan hidangan lainnya. Nasi goreng adalah komponen populer dari masakan Asia Timur, Tenggara dan Selatan pada wilayah tertentu. Sebagai hidangan buatan rumah, nasi goreng biasanya dibuat dengan bahan-bahan yang tersisa dari hidangan lainnya, yang berujung pada ragam yang tak terbatas. Menjadi penopang ekonomi, hal yang sama juga terjadi pada mi goreng atau pyttipanna.\r\nNasi goreng adalah makanan jalanan populer di Asia. Di beberapa negara Asia, restoran-restoran kecil, gerai-gerai pinggir jalan dan pedagang keliling mengkhususkan diri dalam menyajikan nasi goreng. Di kota-kota Indonesia, pedagang umum nasi goreng biasa ditemukan berpindah-pindah dengan gerobak makanan mereka dan berhenti di jalanan sibuk atau kawasan tempat tinggal. Beberapa gerai makanan Asia Tenggara menawarkan nasi goreng dengan pilihan rasa dan hidangan sampingan.\r\n\r\nResep Nasi Goreng:\r\n1 piring nasi putih\r\n1 butir telur\r\n3 siung bawang merah\r\n2 siung bawang putih\r\n4 buah cabai merah kering\r\nRoyco ayam secukupnya\r\nGaram secukupnya\r\nGula merah secukupnya\r\nMinyak goreng secukupnya', '20241216080228.jpg', 'Nasi-Goreng', '6', '2024-12-16', 'gupa'),
(51, 'Spagetti', 'Spageti , pasta tipis, lurus, dan silindris asal Italia , yang paling populer dari semua pasta yang dimakan saat ini.\r\nMi yang terbuat dari gandum dan telur dikenal di dunia Mediterania pada zaman kuno , tetapi pasta yang kita kenal sebagai spaghetti—yang mengambil namanya dari spaghetto Italia , \"tali kecil\"—mungkin diperkenalkan ke Sisilia oleh penakluk Arab di pulau itu pada abad ke-8. Namun, nama itu pertama kali dicatat pada tahun 1874, yang menunjukkan bahwa spaghetti mungkin tetap menjadi hidangan regional hingga tak lama setelah penyatuan Italia.\r\n\r\nspaghetti adalah yang paling banyak digunakan dari pasta \"cord\", yang berbentuk silinder dan padat. Bentuk terkait adalah spaghettini, yang merupakan jenis spaghetti yang sangat tipis, dan pasta bihun dan angel hair, yang lebih tipis lagi. Spaghetti jauh lebih laku daripada pasta lainnya ini.\r\nSpaghetti adalah salah satu pasta yang paling mudah dibuat segar, hanya menggunakan tepung terigu , telur, sedikit air, dan, jika perlu, minyak zaitun. Banyak merek komersial yang tersedia. Namun, baik buatan sendiri maupun yang dibeli di toko, spaghetti harus dimasakal dente , dengan sedikit kenyal.\r\n\r\nCara Membuat Spagetti:\r\n\r\nBahan \r\n    200 gram Spaghetti(Merk apa saja)\r\n\r\nBumbu dan Pelengkap\r\n    3 siung bawang putih (cincang halus)\r\n    2 siung bawang merah (iris tipis)\r\n    Kaldu ayam bubuk (secukupnya)\r\n    Garam (secukupnya)\r\n    Saus tomat (secukupnya)\r\n    Saus sambal (secukupnya)\r\n    Kecap manis (secukupnya)\r\n    3 buah sosis (goreng, iris sesuai selera)\r\n    Minyak goreng (secukupnya, 3 sdm)\r\n\r\nCara Pembuatan Spagetti:\r\n\r\n1. Rebus spaghetti hingga matang lalu angkat dan tiriskan. Sisihkan sebentar.Panaskan wajan lalu tumis bawang putih dan bawang merah hingga harum. \r\n\r\n2. Tambahkan garam, kaldu ayam bubuk. Masak hingga matang.\r\n\r\n3. Selanjutnya, masukkan saus tomat, saus sambal, sedikit kecap manis, dan sosis. Aduk rata sampai semua bahan tercampur rata. \r\n\r\n4. Terakhir, masukkan spaghetti yang sudah direbus dan aduk rata. \r\n\r\n5. Kecilkan api dan masak spaghetti kira-kira selama 5 - 7 menit sampai matang dan bumbu meresap. \r\n\r\n6. Matikan api, angkat spaghetti dan segera sajikan selagi masih panas.', '20241216090816.jpg', 'Spagetti', '5', '2024-12-16', 'gupa'),
(52, 'Wedang Ronde', 'Wedang ronde adalah salah satu minuman khas Jawa Tengah. Minuman ini mengandung ramuan agak pedas (seperti jahe) dengan penganan bulat-bulat kecil di dalamnya.[1]\r\n\r\nPembuatan wedang ronde terdiri dari kuah jahe yang berisi ronde yang berbentuk bulat-bulat.Wedang jahe merupakan hasil akulturasi dengan Festival Dongzhi di Kota Tangerang yang menyajikan ronde. Penyajian wedang jahe dalam keadaan hangat atau panas pada cuaca dingin atau malam hari. Di Indonesia, selain di Kota Tangerang, ronde juga disajikan di Kota Salatiga dan Kota Yogyakarta. Wedang ronde memberikan rasa hangat dan menyegarkan serta dapat menyehatkan tubuh.\r\n\r\nWedang ronde adalah minuman tradisional khas Indonesia yang memiliki rasa hangat dan menenangkan. Minuman ini biasanya dinikmati pada malam hari atau saat cuaca dingin karena sensasi hangat yang dihasilkan dari perpaduan bahan-bahannya. Asal-usul wedang ronde sendiri dipercaya berasal dari pengaruh budaya Tiongkok yang berasimilasi dengan budaya Jawa.\r\n\r\nRonde sendiri terbuat dari adonan tepung ketan yang dicampur dengan sedikit air dan dibentuk menjadi bentuk bola-bola kecil. Adonan tersebut  menjadi isian utama dalam wedang. \r\n\r\nResep Wedang Ronde:\r\n\r\n300 gram tepung ketan\r\n1,5 sdm tepung kanji/tapioka\r\nSecukupnya air\r\nBahan filling :\r\n200 gram kacang tanah di goreng, buang kulitnya lalu di haluskan\r\nSecukupnya gula aren/jawa\r\nSecukupnya gula pasir\r\nSecukupnya garam\r\nBahan wedang :\r\n6 bongol jahe di bakar lalu di geprak\r\n1 liter air\r\nSecukupnya gula aren/jawa\r\n\r\nCara Pembuatan Wedang Ronde:\r\n\r\n1. Campur tepung ketan dan tepung kanji, lalu masukan air perlahan uleni sampai bisa di pulung2 (airnya di tuang perlahan ya)\r\n\r\n2. Lalu bagi adonan menjadi 3 bagian dan beri pewarna\r\n\r\n3. Campur semua bahan filling, tes rasa (saya tambahin air sedikit biar gampang di bentuk)\r\n\r\n4. Pipihkan adonan, isi dengan filling\r\n\r\n5. Lalu masak jahe dan gulmer di air tunggu hingga mendidih (tes rasa pedas jahe sesuai selera ya)\r\n\r\n6. Masak adonan onde ke air mendidih, tunggu sampai menggapung (ud mateng)\r\n\r\n7. Siram onde dengan kuah jahe d mangkuk, jdi deh\r\n\r\n8. Note : jangan rendam onde di dalam air jahe (nanti bisa ancur) kalo mau makan baru di masak ya ondenya\r\n\r\n9. Selamat mencobaaa', '20241216140702.jpg', 'Wedang-Ronde', '4', '2024-12-16', 'aupa'),
(53, 'Risol Mayo', 'Risol mayo adalah hidangan yang lezat dan cukup populer di Indonesia. Olahan ini mirip dengan pastel goreng berbentuk segitiga atau panjang dengan isian seperti wortel, kubis, daging cincang, dan jamur yang bisa kamu buat sendiri untuk camilan keluarga.\r\n\r\nRisol mayonnaise adalah jajanan tradisional berbentuk gulungan yang memiliki berbagai isian, dari ragout, telur, hingga smoked beef. Biasanya, risol disajikan dengan cara digoreng dan dimakan bersama saus sambal. Perpaduan rasa renyah dan creamy pada risol ini menciptakan rasa yang gurih dan renyah.\r\n\r\nResep Pembuatan Risol Mayo:\r\n\r\nBahan Kulit :\r\n250 gr tepung terigu\r\n2 sdm tepung sagu / tapioka\r\n1 bgks dancow bubuk putih\r\n1 sdm minyak goreng\r\n1 butir telur\r\n1/2 sdt garam\r\n500 ml air\r\nBahan isian :\r\n4 buah sosis, iris tipis\r\n3 butir telur rebus, potong2\r\nBahan Campuran Mayonaise :\r\n180 gr mayonaise\r\n35 gr keju cheddar\r\n1 sachet Susu Kental Manis\r\n\r\nCara Pembuatan Risol Mayo:\r\n\r\n1. Campur semua bahan kulit, aduk dg whisk hingga rata, halus dan tidak bergerindil.\r\n\r\n2. Ambil 1 sendok sayur adonan kulit, lalu buat dadar2 tipis diteflon. Lakukan hingga adonan habis. Sisakan satu mangkuk kecil adonan, untuk bahan pencelup nanti.\r\n\r\n3. Aduk rata bahan campuran mayonaise nya yaa\r\n\r\n4. Siapkan dadar, oles dg campuran mayonaise. Beri potongan sosis dan telur rebus, lalu beri campuran mayonaise lg di atasnya. Lipat seperti amplop. Celupkan kedalam sisa adonan kulit, lalu gulingkan ke tepung roti yaa bahan pencelupnya aku pakai adonan kulit\r\n\r\n5. Goreng risoles hingga keemasan, lalu angkat\r\n\r\n6. Risol Mayo siap dihidangkan', '20241216144610.jpg', 'Risol-Mayo', '9', '2024-12-16', 'aupa'),
(54, 'Burger', 'Hamburger, atau hanya burger, adalah hidangan yang terdiri dari isian—biasanya patty atau daging giling, biasanya daging sapi—yang ditempatkan didalam irisan roti atau roti gulung. Roti sering disajikan dengan keju, selada, tomat, bawang bombay, acar, bacon atau cabai dengan bumbu seperti saus tomat, mustard, mayones, relish atau \"saus spesial\", seringkali merupakan variasi saus Pulau Seribu, dan sering diposting di roti biji wijen. Patty hamburger yang diberi keju disebut burger keju. Berdasarkan beberapa definisi, dan dalam beberapa budaya, burger dianggap sebagai sandwich.\r\nBurger adalah makanan berbentuk setangkup roti berisi daging.\r\n\r\nResep Pembuatan Burger:\r\n\r\n1 bh roti burger (bernardi)\r\n1 bh beef burger (bernardi)\r\n1/4 sdt mayonnaise\r\n1 sdm saus pedas\r\n1/4 sdt parsley\r\n1 lembar selada, cincang kasar\r\nsecukupnya mentimun\r\nsecukupnya bawang bombay\r\nsecukupnya tomat (aku ga pake, soalnya ga begitu suka)\r\n15 gr keju cheddar (potong atau parut ya opsional, aku di parut)\r\nsecukupnya butter / margarin\r\n\r\nCara Pembuatan Burger:\r\n\r\n1. Olesi roti dengan butter / margarin\r\n\r\n2. Panaskan teflon dengan api sangat kecil (biar matang merata, tp ga gosong ya)\r\n\r\n3. Panggang roti di atas teflon, sesekali di bolak balik. Kalo bagian putih roti nya udah kuning ke emasan angkat\r\n\r\n4. Goreng beef burger nya sampai merah gelap\r\n\r\n5. Ambil mangkuk mini, campurkan secukup nya mayonnaise; saus sambal; parsley (bubuk). Aduk rata\r\n\r\n6. Olesi roti dengan bahan yg udah di mix (mayonnaise, saus sambal & parsley)\r\n\r\n7. Susun selada, mentimun, bawang bombay, beef burger, parutan keju cheddar, lumuri dengan saus sambal lagi (jika suka pedas). Tutup dengan roti, siap di sajikan', '20241216150522.jpg', 'Burger', '5', '2024-12-16', 'aupa'),
(55, 'Seblak', 'Seblak adalah salah satu makanan khas Sunda tepatnya Bandung yang kini populer di kalangan luas. Makanan yang identik bercita rasa gurih pedas dengan rempah kencur itu kini bisa dengan mudah dicari dan dibuat.\r\nseblak adalah makanan berkuah pedas dengan berbagai isian. Banyak makanan seperti ini yang bisa dijumpai seperti mi kuah pedas, sup pedas, tom yum dan masih banyak lagi.\r\nSensasi rasa kencur yang pahit, pedas terasa hangat saat menyentuh lidah dam masuk perut. Dengan aroma yang khas, kencur juga memiliki khasiat meningkatkan nafsu makan serta meredakan sakit tenggorokan dan batuk.\r\n\r\nResep Pembuatan Seblak:\r\n\r\nBahan Ceker:\r\n500 gram ceker\r\n4 lembar daun salam\r\n1 ruas lengkuas\r\n500 ml air\r\nBahan Utama Seblak:\r\n100 gram kerupuk merah\r\n2 bonggol selada (bisa diganti sawi)\r\n2 buah sosis ayam\r\n5 buah bakso sapi\r\n5 buah bakso ayam\r\n3 butir telur ayam\r\n1 bungkus jamus shimeji\r\n1 lembar jamur kuping\r\n5 buah jamur kancing\r\n500 ml air\r\n2 sdm minyak untuk menumis\r\nBahan Bumbu Seblak:\r\n5 siung bawang merah\r\n2 siung bawang putih\r\n2 ruas kencur\r\n6 buah cabe merah keriting\r\n5 buah cabe rawit merah (bisa ditambahkan jika kurang pedas)\r\n2 butir kemiri\r\nBumbu Penyedap:\r\n1/2 sdt bubuk kaldu\r\n1 sdt garam\r\n1 sdt penyedap jamur\r\n1/2 sdt gula\r\n1/4 sdt merica\r\n\r\nCara Pembuatan Seblak:\r\n\r\n1. Pertama-tama siapkan cekernya.. Rebus ceker beserta daun salam dan lengkuas sampai ceker lunak. Buang air rebusan pertama dan rebus kembali sampai lunak dan air agak asat. Ambil ceker sisihkan.\r\n\r\n2. Siapkan bahan-bahan lain yang diperlukan (bahan utama dan bahan bumbu). Siapkan sayur dan sosis, potong2 sesuai selera. Sisihkan.\r\n\r\n3. Rendam kerupuk merah dengan air biasa selama 30 menit. Setelah itu tiriskan. Tiriskan dan sisihkan. Haluskan semua bumbu seblak. Kocok lepas telur. Sisihkan.\r\n\r\n4. Panaskan minya. Tumis bumbu sampai harum. Lalu tambahkan air, biarkan sampai mendidih. Berikutnya masukkan semua bahan protein (ceker, sosis dan bakso). Biarkan sampai mendidih.\r\n\r\n5. Siapkan semua bumbu penyedap. Lalu masukkan ke dalam masakan. Aduk sampai rata dan biarkan sampai mendidih. Test rasa dan koreksi rasa jika diperlukan, sampai rasa sesuai selera.\r\n\r\n6. Kemudian masukkan kerupuk merah yang sudah direndam, aduk2 sebentar. Lalu masukkan semua sayuran (jamur-jamuran dan selada). Test rasa sekali lagi.\r\n\r\n7. Terkahir masukkan kocokan telur... Aduk rata dan biarkan mendidih seklai lagi. Langsung sajikan selagi panas. Yummy..', '20241216152044.jpg', 'Seblak', '6', '2024-12-16', 'aupa'),
(56, 'Matcha Latte', 'Matcha latte merupakan salah satu alternatif minuman selain kopi yang lembut, halus di mulut, dan lebih rendah kafein. Matcha latte bisa disajikan dalam keadaan panas atau dingin dengan es.\r\nDengan warna hijaunya yang khas, Matcha Latte adalah minuman berbahan dasar bubuk teh matcha hijau (dikenal berasal dari Jepang) yang dikombinasikan dengan susu cair yang sudah dipanaskan dan dibuihkan. Seringkali buih susu yang lembut sengaja dituang perlahan agar mengapung di permukaan campuran matcha dan susu agar bisa dibuat gambar latte art.\r\n\r\nMatcha latte dibuat dengan bahan dasar bubuk matcha yang dikocok atau dicampur dengan air panas, lalu dituang dengan froth milk atau susu yang sudah dipanaskan dan berbuih seperti menyajikan latte pada umumnya. Matcha latte memiliki rasa manis yang bisa disesuaikan, tergantung orang yang ingin menyajikannya.\r\nHanya karena memiliki sebutan \"latte\", bukan berarti matcha latte mengandung kopi. Matcha latte tidak mengandung kopi. Di sini, \"latte\" hanya mengacu pada persiapan minuman yang melibatkan steam milk atau susu yang dipanaskan dengan alat khusus sehingga lebih bertekstur dan minuman ini disajikan dengan fomat mirip caffe latte, tapi dengan teh matcha hijau, bukan espresso.\r\n\r\nResep Matcha Latte:\r\n\r\n2 sachet minuman matcha\r\n2 sdm madu\r\nSejumput garam himalaya\r\nSetetes pasta vanilla\r\n150 ml air\r\n250 gram jelly nata de coco\r\n200 ml susu cair\r\nSecukupnya es batu\r\nSecukupnya pewarna hijau\r\n\r\nCara Pembuatan Matcha Latte\r\n\r\n1. Masukkan minuman matcha, garam himalaya, pasta vanilla dan madu dalam gelas.\r\n2. Tuang air lalu mixer/kocok hingga homogen.\r\n\r\n3. Masukkan jelly nata de coco dan es batu juga susu full cream. Tambahkan sedikit pewarna hijau agar warnanya keluar lebih cantik.\r\n\r\n4. Minuman siap disajikan.', '20241216152731.jpg', 'Matcha-Latte', '4', '2024-12-16', 'aupa'),
(57, 'Donut', 'Donat adalah camilan yang terbuat dari campuran tepung terigu, gula, telur, dan mentega, yang kemudian digoreng. Umumnya, donat berbentuk cincin dengan lubang di tengah atau bundar dengan berbagai isian manis seperti selai, jeli, atau custard. Donat sangat berbeda dari bagel, meskipun keduanya memiliki bentuk yang mirip. Perbedaan ini terletak pada bahan, teknik pembuatan, dan cara penyajiannya.\r\n\r\nDonat dapat dibentuk dengan cara menyatukan kedua sisi adonan berbentuk persegi panjang hingga membentuk cincin, atau menggunakan pemotong khusus yang langsung membuat lubang di tengah adonan. Lubang pada donat berbentuk cincin pada awalnya dimaksudkan agar donat matang lebih merata saat digoreng.\r\n\r\nResep Pembuatan Donut:\r\n\r\nBahan:\r\n450 gram tepung terigu protein tinggi, ayak\r\n50 gram susu bubuk\r\n1 bungkus ragi\r\n150 ml air\r\n75 gram gula pasir\r\n½ sdt garam\r\n1 sdt baking powder\r\n75 gram mentega tawar\r\n4 kuning telur ayam\r\n500 ml minyak, untuk menggoreng\r\n\r\nCara Pembuatan Donut:\r\n\r\n1. Campurkan air hangat, garam, dan gula pasir dalam sebuah mangkuk hingga gula dan garam larut. Sisihkan.\r\n2. Dalam mangkuk besar, campurkan tepung terigu, ragi, susu bubuk, dan baking powder. Tambahkan mentega dan uleni dengan tangan hingga adonan bertekstur seperti pasir.\r\n3. Buatlah lubang di tengah campuran tepung dan tuangkan kuning telur ke dalamnya. Aduk rata menggunakan tangan, kemudian tuangkan larutan air, garam, dan gula sedikit-sedikit sambil terus menguleni. Uleni hingga adonan menjadi kalis dan elastis.\r\n4. Bentuk adonan menjadi bola dan tempatkan dalam wadah. Tutup wadah dengan kain lembap dan biarkan adonan mengembang selama sekitar 1 jam.\r\n5. Setelah adonan mengembang, kempiskan dan uleni kembali. Ambil sebagian adonan, bulatkan, dan letakkan di atas permukaan yang ditaburi tepung.\r\n6. Tutup bola adonan dengan kain dan biarkan selama sekitar 30 menit agar adonan mengembang kembali.\r\n8. Panaskan minyak dalam wajan, kemudian goreng donat hingga berwarna keemasan dan matang merata. Angkat dan tiriskan.\r\n9. Taburi donat dengan gula halus atau taburan lainnya untuk menambah rasa sebelum disajikan.', '20241216170649.jpg', 'Donut', '5', '2024-12-16', 'aupa'),
(58, 'Dorayaki', 'Dorayaki pertama kali dibuat menyerupai pancake pada 1914 oleh toko pembuat makanan manis di Ueno, Tokyo, bernama Usagiya. Sang pemilik toko mendapatkan ide dari makanan manis yang berakar di Eropa, yakni kasutera atau kue castella.\r\nAdonan yang digunakan untuk membuat pancake dorayaki terdiri dari beberapa bahan khas Jepang, seperti mirin (arak beras manis), dan bahkan sentuhan kecap. Bahan pemanis utama biasanya madu, meskipun kadang-kadang menggunakan gula. Sedangkan untuk dorayaki biasa, bahan yang digunakan adalah tsubu-an, yaitu kacang adzuki yang ditumbuk dan diberi pemanis.\r\n\r\nMembuat dorayaki sendiri dengan pilihan isian cukup mudah, terutama jika Anda menggunakan salah satu campuran pancake instan yang sangat populer di Jepang. Hanya dengan menambahkan beberapa sendok makan madu, satu sendok makan mirin dan setetes kecap untuk adonan. Masak di atas permukaan antilengket seperti wajan listrik, dan beri isian manis ketika dorayaki sudah matang. Makanan khas robot kucing berkantong ajaib pun siap disantap.\r\n\r\nResep Pembuatan Dorayaki:\r\n\r\nBahan-bahan\r\n2 butir telur utuh\r\n30 gr gula\r\n1 sdm madu\r\n90 gr tepung terigu\r\n1/2 sdt soda kue\r\n1/2 sdt garam\r\n1/2 sdt vanila\r\n3 sdm air matang\r\n\r\nCara Pembuatan Dorayaki:\r\n\r\n1. Kocok telur, gula, dan madu sampai berbusa.\r\n\r\n2. Masukkan terigu, soda kue, vanila, dan garam sambil diayak. Kocok hingga tercampur rata\r\n\r\n3. Masukkan 3 sdm air. Aduk rata.\r\n\r\n4. Istirahatkan adonan sktr 30-45 menit.\r\n\r\n5. Setelah diistirahatkan, panggang diatas teflon dgn api kecil.\r\n\r\n6. Tuang 1 sendok sayur. Jika sdh mulai muncul gelembung2 balik adonan. Panggang sbntr sj sampai kecoklatan lalu angkat.\r\n\r\n7. Setelah slesai dipanggang, bisa dilapis 2 bagian tengahnya diisi dengan coklat atau sesuai selera.', '20241217001234.jpg', 'Dorayaki', '9', '2024-12-17', 'aupa'),
(59, 'Kentang Goreng', 'Kentang goreng adalah hidangan yang dibuat dari potongan-potongan kentang yang digoreng dalam minyak goreng panas. Di dalam menu rumah-rumah makan, kentang goreng yang dipotong panjang-panjang dan digoreng dalam keadaan terendam di dalam minyak goreng panas disebut french fries.\r\nKentang goreng bisa dimakan begitu saja sebagai makanan ringan, atau sebagai makanan pelengkap hidangan utama seperti bistik, hamburger, fish and chips dan currywurst.\r\nKentang goreng memiliki manfaat untuk menahan rasa lapar sehingga kamu bisa tidak memakan nasi terlebih dahulu karena kandungan kalori yang ada pada kentang ini hampir sama dengan nasi yang akan membuat kamu kenyang.\r\n\r\nResep Pembuatan Kentang Goreng:\r\n\r\n1 kg kentang\r\n3 siung bawang putih\r\n1 sendok garam\r\n3 sendok tepung maizena\r\n3 sendok tepung terigu\r\n1 liter air\r\nSecukupnya air es\r\n\r\nCara Pembuatan Kentang Goreng:\r\n\r\n1.Potong kentang memanjang\r\n\r\n2.Rebus setengah matang ketang dengan air dan garam\r\n\r\n3.Masukan kentang setengah matang kedalam air es dan tiriskan\r\n\r\n4.Masukan tepung maizena dan tepung terigu aduk-aduk sampai tercampur rata\r\n\r\n5.Goreng kentang sampai menguning\r\n\r\n6.Sajikan dengan bumbu kentang goreng/ penyedap rasa', '20241217115747.jpg', 'Kentang-Goreng', '5', '2024-12-17', 'aupa');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int NOT NULL,
  `username` varchar(70) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `nama`, `password`, `level`) VALUES
(31, 'coba', 'coba', '81dc9bdb52d04dc20036dbd8313ed055', 'Admin'),
(32, 'qwertyu', 'witwot', '827ccb0eea8a706c4c34a16891f84e7b', 'Kontributor'),
(34, 'gupa', 'aupa', '81dc9bdb52d04dc20036dbd8313ed055', 'Admin'),
(35, 'lamnn', 'lamm', '81dc9bdb52d04dc20036dbd8313ed055', 'Admin'),
(36, 'lagi', 'lagi', '81dc9bdb52d04dc20036dbd8313ed055', 'Admin'),
(37, 'admin', 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'Admin'),
(38, 'kontributor', 'kontributor', '81dc9bdb52d04dc20036dbd8313ed055', 'Kontributor'),
(39, 'aupa', 'ghaufa', '81dc9bdb52d04dc20036dbd8313ed055', 'Kontributor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `caraousel`
--
ALTER TABLE `caraousel`
  ADD PRIMARY KEY (`id_caraousel`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indexes for table `konten`
--
ALTER TABLE `konten`
  ADD PRIMARY KEY (`id_konten`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `caraousel`
--
ALTER TABLE `caraousel`
  MODIFY `id_caraousel` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `konten`
--
ALTER TABLE `konten`
  MODIFY `id_konten` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
