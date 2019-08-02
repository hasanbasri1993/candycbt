
/*---------------------------------------------------------------
  SQL DB BACKUP 20.03.2019 09:45 
  HOST: localhost
  DATABASE: *
  TABLES: *
  ---------------------------------------------------------------*/

/*---------------------------------------------------------------
  TABLE: `hasil_jawaban`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `hasil_jawaban`;
CREATE TABLE `hasil_jawaban` (
  `id_jawaban` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `jawaban` char(1) NOT NULL,
  `jenis` int(1) NOT NULL,
  `esai` text NOT NULL,
  `nilai_esai` int(5) NOT NULL,
  `ragu` int(1) NOT NULL,
  PRIMARY KEY (`id_jawaban`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
INSERT INTO `hasil_jawaban` VALUES   ('1','2921','1','1','A','1','','0','0');
INSERT INTO `hasil_jawaban` VALUES ('2','2921','1','2','A','1','','0','0');
INSERT INTO `hasil_jawaban` VALUES ('3','2921','1','9','B','1','','0','0');
INSERT INTO `hasil_jawaban` VALUES ('4','2921','1','11','A','1','','0','0');
INSERT INTO `hasil_jawaban` VALUES ('5','2921','1','12','E','1','','0','0');
INSERT INTO `hasil_jawaban` VALUES ('6','2921','1','18','A','1','','0','0');
INSERT INTO `hasil_jawaban` VALUES ('7','2921','1','22','A','1','','0','0');
INSERT INTO `hasil_jawaban` VALUES ('8','2921','1','25','B','1','','0','0');
INSERT INTO `hasil_jawaban` VALUES ('9','2921','1','34','A','1','','0','0');
INSERT INTO `hasil_jawaban` VALUES ('10','2921','1','39','C','1','','0','0');
INSERT INTO `hasil_jawaban` VALUES ('11','2921','1','4','E','1','','0','0');
INSERT INTO `hasil_jawaban` VALUES ('12','2921','1','6','A','1','','0','0');
INSERT INTO `hasil_jawaban` VALUES ('13','2921','1','13','B','1','','0','0');
INSERT INTO `hasil_jawaban` VALUES ('14','2921','1','24','A','1','','0','0');
INSERT INTO `hasil_jawaban` VALUES ('15','2921','1','28','B','1','','0','0');
INSERT INTO `hasil_jawaban` VALUES ('16','2921','1','32','C','1','','0','0');

/*---------------------------------------------------------------
  TABLE: `jawaban`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jawaban`;
CREATE TABLE `jawaban` (
  `id_jawaban` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `jawaban` char(1) NOT NULL,
  `jenis` int(1) NOT NULL,
  `esai` text NOT NULL,
  `nilai_esai` int(5) NOT NULL,
  `ragu` int(1) NOT NULL,
  PRIMARY KEY (`id_jawaban`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `kelas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas` (
  `id_kelas` varchar(11) NOT NULL,
  `level` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `kelas` VALUES   ('6A','6','6A');
INSERT INTO `kelas` VALUES ('XIIA MIA','XII','XIIA MIA');
INSERT INTO `kelas` VALUES ('XIIB MIA','XII','XIIB MIA');
INSERT INTO `kelas` VALUES ('XIIC MIA','XII','XIIC MIA');
INSERT INTO `kelas` VALUES ('XIID MIA','XII','XIID MIA');
INSERT INTO `kelas` VALUES ('XIIE IIS','XII','XIIE IIS');
INSERT INTO `kelas` VALUES ('XIIF IIS','XII','XIIF IIS');
INSERT INTO `kelas` VALUES ('XIIG IIS','XII','XIIG IIS');
INSERT INTO `kelas` VALUES ('XIIH IIS','XII','XIIH IIS');

/*---------------------------------------------------------------
  TABLE: `level`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `level`;
CREATE TABLE `level` (
  `kode_level` varchar(5) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  PRIMARY KEY (`kode_level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `level` VALUES   ('XII','XII');

/*---------------------------------------------------------------
  TABLE: `log`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `text` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
INSERT INTO `log` VALUES   ('1','8','logout','keluar','2019-03-20 00:01:55');
INSERT INTO `log` VALUES ('2','0','login','masuk','2019-03-20 00:02:04');
INSERT INTO `log` VALUES ('3','0','login','masuk','2019-03-20 00:04:48');
INSERT INTO `log` VALUES ('4','2224','login','masuk','2019-03-20 00:06:32');
INSERT INTO `log` VALUES ('5','2224','logout','keluar','2019-03-20 00:15:48');
INSERT INTO `log` VALUES ('6','150','login','masuk','2019-03-20 00:15:56');
INSERT INTO `log` VALUES ('7','150','logout','keluar','2019-03-20 00:35:05');
INSERT INTO `log` VALUES ('8','2921','login','masuk','2019-03-20 00:35:13');
INSERT INTO `log` VALUES ('9','2921','logout','keluar','2019-03-20 00:47:10');
INSERT INTO `log` VALUES ('10','2921','login','masuk','2019-03-20 00:47:52');
INSERT INTO `log` VALUES ('11','3029','login','masuk','2019-03-20 00:53:28');
INSERT INTO `log` VALUES ('12','3029','testongoing','sedang ujian','2019-03-20 00:55:36');
INSERT INTO `log` VALUES ('13','3029','testongoing','sedang ujian','2019-03-20 00:55:36');
INSERT INTO `log` VALUES ('14','3029','logout','keluar','2019-03-20 00:55:51');
INSERT INTO `log` VALUES ('15','3029','login','masuk','2019-03-20 00:56:26');
INSERT INTO `log` VALUES ('16','0','login','masuk','2019-03-20 01:05:12');
INSERT INTO `log` VALUES ('17','0','login','masuk','2019-03-20 01:05:55');
INSERT INTO `log` VALUES ('18','0','login','masuk','2019-03-20 01:07:31');
INSERT INTO `log` VALUES ('19','1','login','masuk','2019-03-20 06:56:33');
INSERT INTO `log` VALUES ('20','1','logout','keluar','2019-03-20 06:56:58');
INSERT INTO `log` VALUES ('21','2921','login','masuk','2019-03-20 06:58:59');
INSERT INTO `log` VALUES ('22','2921','testongoing','sedang ujian','2019-03-20 07:13:54');
INSERT INTO `log` VALUES ('23','2921','testongoing','sedang ujian','2019-03-20 07:13:54');

/*---------------------------------------------------------------
  TABLE: `login`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `ipaddress` varchar(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
INSERT INTO `login` VALUES   ('31','2921','','2019-03-20 06:58:59');

/*---------------------------------------------------------------
  TABLE: `mapel`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `mapel`;
CREATE TABLE `mapel` (
  `id_mapel` int(11) NOT NULL AUTO_INCREMENT,
  `idpk` varchar(10) NOT NULL,
  `idguru` varchar(3) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jml_soal` int(5) NOT NULL,
  `jml_esai` int(5) NOT NULL,
  `tampil_pg` int(5) NOT NULL,
  `tampil_esai` int(5) NOT NULL,
  `bobot_pg` int(5) NOT NULL,
  `bobot_esai` int(5) NOT NULL,
  `level` varchar(5) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(2) NOT NULL,
  `statusujian` int(11) NOT NULL,
  PRIMARY KEY (`id_mapel`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
INSERT INTO `mapel` VALUES   ('1','semua','51','Mahfudzot','40','0','40','0','100','0','XII','a:1:{i:0;s:5:\"semua\";}','2019-03-20 01:04:06','1','0');

/*---------------------------------------------------------------
  TABLE: `mata_pelajaran`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `mata_pelajaran`;
CREATE TABLE `mata_pelajaran` (
  `kode_mapel` varchar(20) NOT NULL,
  `nama_mapel` varchar(50) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  `bobot_mapel` int(1) DEFAULT NULL,
  `paragrap_mapel` enum('kiri','kanan') DEFAULT 'kanan',
  PRIMARY KEY (`kode_mapel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `mata_pelajaran` VALUES   ('ArabLisan','ArabLisan','3','kiri');
INSERT INTO `mata_pelajaran` VALUES ('BahasaArab','BahasaArab','4','kiri');
INSERT INTO `mata_pelajaran` VALUES ('Balaghoh','Balaghoh','4','kanan');
INSERT INTO `mata_pelajaran` VALUES ('Biologi','Biologi','2','kiri');
INSERT INTO `mata_pelajaran` VALUES ('Ekonomi','Ekonomi','2','kiri');
INSERT INTO `mata_pelajaran` VALUES ('Faroid','علم الفرائض','2','kanan');
INSERT INTO `mata_pelajaran` VALUES ('Fiqh','Fiqh','4','kanan');
INSERT INTO `mata_pelajaran` VALUES ('FiqhLisan','FiqhLisan','3','kiri');
INSERT INTO `mata_pelajaran` VALUES ('Fisika','Fisika','2','kiri');
INSERT INTO `mata_pelajaran` VALUES ('Geografi','Geografi','2','kiri');
INSERT INTO `mata_pelajaran` VALUES ('Grammar','Grammar','2','kiri');
INSERT INTO `mata_pelajaran` VALUES ('Hadits','Hadits','4','kanan');
INSERT INTO `mata_pelajaran` VALUES ('Imla','Imla','2','kiri');
INSERT INTO `mata_pelajaran` VALUES ('Indonesia','Indonesia','3','kiri');
INSERT INTO `mata_pelajaran` VALUES ('Inggris','Inggris','4','kiri');
INSERT INTO `mata_pelajaran` VALUES ('InggrisLisan','InggrisLisan','3','kiri');
INSERT INTO `mata_pelajaran` VALUES ('Insya','Insya','4','kanan');
INSERT INTO `mata_pelajaran` VALUES ('IPA','IPA','3','kiri');
INSERT INTO `mata_pelajaran` VALUES ('IPS','IPS','3','kiri');
INSERT INTO `mata_pelajaran` VALUES ('Kepesantrenan','Kepesantrenan','2','kiri');
INSERT INTO `mata_pelajaran` VALUES ('Khot','Khot','2','kiri');
INSERT INTO `mata_pelajaran` VALUES ('Kimia','Kimia','2','kiri');
INSERT INTO `mata_pelajaran` VALUES ('M.Hadits','M.Hadits','2','kanan');
INSERT INTO `mata_pelajaran` VALUES ('Mahfudzot','المحفوظات','2','kanan');
INSERT INTO `mata_pelajaran` VALUES ('Mantiq','Mantiq','2','kanan');
INSERT INTO `mata_pelajaran` VALUES ('Matematika','Matematika','4','kiri');
INSERT INTO `mata_pelajaran` VALUES ('Mutholaah','المطالعة','2','kanan');
INSERT INTO `mata_pelajaran` VALUES ('Nahwu','Nahwu','4','kanan');
INSERT INTO `mata_pelajaran` VALUES ('Pkn','Pkn','2','kiri');
INSERT INTO `mata_pelajaran` VALUES ('Sejarah','Sejarah','2','kiri');
INSERT INTO `mata_pelajaran` VALUES ('Shofof','علم الصرف','2','kanan');
INSERT INTO `mata_pelajaran` VALUES ('Sosiologi','Sosiologi','2','kiri');
INSERT INTO `mata_pelajaran` VALUES ('Tafsir','Tafsir','4','kanan');
INSERT INTO `mata_pelajaran` VALUES ('Tajwid','علم التجويد','2','kanan');
INSERT INTO `mata_pelajaran` VALUES ('Tarbiyah','Tarbiyah','2','kanan');
INSERT INTO `mata_pelajaran` VALUES ('Tarikh_Islam','التاريخ الإسلامي','2','kanan');
INSERT INTO `mata_pelajaran` VALUES ('TASHRIF','TASHRIF','4','kiri');
INSERT INTO `mata_pelajaran` VALUES ('Tauhid','علم التوحيد','2','kanan');
INSERT INTO `mata_pelajaran` VALUES ('TIK','TIK','2','kiri');
INSERT INTO `mata_pelajaran` VALUES ('Ulumul Quran','Ulumul Quran','2','kanan');
INSERT INTO `mata_pelajaran` VALUES ('UsulFiqh','UsulFiqh','2','kanan');

/*---------------------------------------------------------------
  TABLE: `nilai`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `nilai`;
CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  `id_mapel` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `ujian_mulai` varchar(20) NOT NULL,
  `ujian_berlangsung` varchar(20) NOT NULL,
  `ujian_selesai` varchar(20) NOT NULL,
  `jml_benar` int(10) NOT NULL,
  `jml_salah` int(10) NOT NULL,
  `nilai_esai` varchar(10) NOT NULL,
  `skor` varchar(10) NOT NULL,
  `total` varchar(10) NOT NULL,
  `status` int(1) NOT NULL,
  `ipaddress` varchar(20) NOT NULL,
  `hasil` int(2) NOT NULL,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
INSERT INTO `nilai` VALUES   ('1','1','2921','2019-03-20 07:13:54','2019-03-20 09:08:19','2019-03-20 09:08:19','8','32','','20.00','20.00','0','::1','0');

/*---------------------------------------------------------------
  TABLE: `pengacak`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pengacak`;
CREATE TABLE `pengacak` (
  `id_pengacak` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_soal` varchar(255) NOT NULL,
  `id_esai` varchar(255) NOT NULL,
  PRIMARY KEY (`id_pengacak`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
INSERT INTO `pengacak` VALUES   ('10','3029','2','77,80,78,63,73,64,67,70,69,53,47,49,45,54,43,57,66,60,46,41,58,59,65,71,52,44,74,62,61,48,72,76,79,50,51,42,75,68,56,55,','');

/*---------------------------------------------------------------
  TABLE: `pengawas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pengawas`;
CREATE TABLE `pengawas` (
  `id_pengawas` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `level` varchar(10) NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat_jalan` varchar(255) NOT NULL,
  `rt_rw` varchar(8) NOT NULL,
  `dusun` varchar(50) NOT NULL,
  `kelurahan` varchar(50) NOT NULL,
  `kecamatan` varchar(30) NOT NULL,
  `kode_pos` int(6) NOT NULL,
  `nuptk` varchar(20) NOT NULL,
  `bidang_studi` varchar(50) NOT NULL,
  `jenis_ptk` varchar(50) NOT NULL,
  `tgs_tambahan` varchar(50) NOT NULL,
  `status_pegawai` varchar(50) NOT NULL,
  `status_aktif` varchar(20) NOT NULL,
  `status_nikah` varchar(20) NOT NULL,
  `sumber_gaji` varchar(30) NOT NULL,
  `ahli_lab` varchar(10) NOT NULL,
  `nama_ibu` varchar(40) NOT NULL,
  `nama_suami` varchar(50) NOT NULL,
  `nik_suami` varchar(20) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `tmt` date NOT NULL,
  `keahlian_isyarat` varchar(10) NOT NULL,
  `kewarganegaraan` varchar(10) NOT NULL,
  `npwp` varchar(16) NOT NULL,
  `foto` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pengawas`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
INSERT INTO `pengawas` VALUES   ('9','-','administrator','','admin','$2y$10$3fVC8VJfm8ElEv6PNLT2R.XalOF.sFq7TOgJE54p5KQm2oL/0N1Im','admin','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('41','-','Pajar Sidik Nurfakhri','','pajarsidikn','123456','guru','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('42','-','Guru 2','','guru2','123456','guru','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('43','-','Guru 3','','guru3','123456','guru','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('44','-','Guru 4','','guru4','123456','guru','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('45','-','Guru 5','','guru5','123456','guru','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('46','-','Guru 6','','guru6','123456','guru','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('47','-','Guru 7','','guru7','123456','guru','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('48','-','Guru 8','','guru8','123456','guru','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('49','-','Guru 9','','guru9','123456','guru','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('50','-','Ruli Syahruli, S.Pd','','ruli','123456','guru','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('51','-','Agus Prasetyo, S.Pd','','agus','123456','guru','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');

/*---------------------------------------------------------------
  TABLE: `pengumuman`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pengumuman`;
CREATE TABLE `pengumuman` (
  `id_pengumuman` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `user` int(3) NOT NULL,
  `text` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_pengumuman`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `pk`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pk`;
CREATE TABLE `pk` (
  `id_pk` varchar(10) NOT NULL,
  `program_keahlian` varchar(50) NOT NULL,
  `kode` varchar(10) NOT NULL,
  PRIMARY KEY (`id_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `pk` VALUES   ('ISIS','ISIS','');
INSERT INTO `pk` VALUES ('MIA','MIA','');

/*---------------------------------------------------------------
  TABLE: `ruang`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `ruang`;
CREATE TABLE `ruang` (
  `kode_ruang` varchar(10) NOT NULL,
  `keterangan` varchar(30) NOT NULL,
  PRIMARY KEY (`kode_ruang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `ruang` VALUES   ('lab_ma','LAB MA');

/*---------------------------------------------------------------
  TABLE: `school`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `npsn` text NOT NULL,
  `ns` varchar(50) DEFAULT NULL,
  `alamat` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `server`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `server`;
CREATE TABLE `server` (
  `kode_server` varchar(20) NOT NULL,
  `nama_server` varchar(30) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `server` VALUES   ('R1','SERVER R1','aktif');
INSERT INTO `server` VALUES ('R2','SERVER R2','aktif');
INSERT INTO `server` VALUES ('ONLINE','ONLINE','aktif');
INSERT INTO `server` VALUES ('R1','SERVER R1','aktif');
INSERT INTO `server` VALUES ('R2','SERVER R2','aktif');
INSERT INTO `server` VALUES ('ONLINE','ONLINE','aktif');

/*---------------------------------------------------------------
  TABLE: `sesi`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `sesi`;
CREATE TABLE `sesi` (
  `kode_sesi` varchar(10) NOT NULL,
  `nama_sesi` varchar(30) NOT NULL,
  PRIMARY KEY (`kode_sesi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `sesi` VALUES   ('1','01');

/*---------------------------------------------------------------
  TABLE: `session`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `session`;
CREATE TABLE `session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_time` varchar(10) NOT NULL,
  `session_hash` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
INSERT INTO `session` VALUES   ('1','1447610188','$2y$10$dt9BTs7FlTXgpactflaXPOSVWrs.wurWsKBGv18JkzolJmHZOj.B.');

/*---------------------------------------------------------------
  TABLE: `setting`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id_setting` int(11) NOT NULL AUTO_INCREMENT,
  `aplikasi` varchar(100) NOT NULL,
  `kode_sekolah` varchar(10) NOT NULL,
  `sekolah` varchar(50) NOT NULL,
  `jenjang` varchar(5) NOT NULL,
  `kepsek` varchar(50) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `kota` varchar(30) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `web` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `logo` text NOT NULL,
  `header` text NOT NULL,
  `header_kartu` text NOT NULL,
  `ip_server` varchar(100) NOT NULL,
  PRIMARY KEY (`id_setting`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
INSERT INTO `setting` VALUES   ('1','Tahriri Exam','R1','MA Daarul Uluum Lido','SMK','Azhari Muchtar, S.Ag','-','JL Mayjen HR Edi Sukma KM 22 Muara Ciburuy<br />\r\n','Cigombong','Bogor','0251 8224572','','https://daarululuumlido.com/','sekretariat@daarululuumlido.com','dist/img/logo39.png','YAYASAN SALSABILA LIDO','KARTU PESERTA\nUJIAN SEKOLAH BERBASIS KOMPUTER','192.168.0.200');

/*---------------------------------------------------------------
  TABLE: `siswa`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `siswa`;
CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `id_kelas` varchar(11) NOT NULL,
  `idpk` varchar(10) NOT NULL,
  `nis` varchar(30) NOT NULL,
  `no_peserta` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `level` varchar(5) NOT NULL,
  `ruang` varchar(10) NOT NULL,
  `sesi` int(2) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(30) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `agama` varchar(10) NOT NULL,
  `kebutuhan_khusus` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `rt` varchar(5) NOT NULL,
  `rw` varchar(5) NOT NULL,
  `dusun` varchar(100) NOT NULL,
  `kelurahan` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `kode_pos` int(10) NOT NULL,
  `jenis_tinggal` varchar(100) NOT NULL,
  `alat_transportasi` varchar(100) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `email` varchar(150) NOT NULL,
  `skhun` int(11) NOT NULL,
  `no_kps` varchar(50) NOT NULL,
  `nama_ayah` varchar(150) NOT NULL,
  `tahun_lahir_ayah` int(4) NOT NULL,
  `pendidikan_ayah` varchar(50) NOT NULL,
  `pekerjaan_ayah` varchar(100) NOT NULL,
  `penghasilan_ayah` varchar(100) NOT NULL,
  `nohp_ayah` varchar(15) NOT NULL,
  `nama_ibu` varchar(150) NOT NULL,
  `tahun_lahir_ibu` int(4) NOT NULL,
  `pendidikan_ibu` varchar(50) NOT NULL,
  `pekerjaan_ibu` varchar(100) NOT NULL,
  `penghasilan_ibu` varchar(100) NOT NULL,
  `nohp_ibu` int(15) NOT NULL,
  `nama_wali` varchar(150) NOT NULL,
  `tahun_lahir_wali` int(4) NOT NULL,
  `pendidikan_wali` varchar(50) NOT NULL,
  `pekerjaan_wali` varchar(100) NOT NULL,
  `penghasilan_wali` varchar(50) NOT NULL,
  `angkatan` int(5) NOT NULL,
  `nisn` varchar(50) NOT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `siswa` VALUES   ('1065','6A','A','136228','136228','Muhammad Rifki Syahrul Fauzi','6','lab_ma','1','136228','oamxhk8','9f023de257b645deed6bc0cf3721db59.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('1070','6A','A','136229','136229','Saufan','6','lab_ma','1','136229','0i5egvc','66de1db1b4fb9d291b3f09c5d49592a0.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('1839','6A','A','136237','136237','Ahmad Syabani Fadhli','6','lab_ma','1','136237','6y7zpfg','a4abc50c09d1d5dccf3024170073c385.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('1842','6A','A','136223','136223','Khodam Fatih Ahmad','6','lab_ma','1','136223','20ldra3','b828ec32168a909e812115581a34f59b.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('1873','6A','A','136222','136222','Annafi Supiah','6','lab_ma','1','136222','w3vlgp5','16f157b6619725a9db0ff8352e25d011.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('1884','6A','A','136234','136234','Lulu Huluwiah Awalani','6','lab_ma','1','136234','b8s483g','032fdaa4d8a48aa776cd7f0653db282d.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('1886','6A','A','136235','136235','Nabilatul Laila','6','lab_ma','1','136235','nh2i1no','e6da88315a62669b117bb2a9bcd52de0.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('1890','6A','A','136236','136236','Nurlaela Sofiatuzahra','6','lab_ma','1','136236','h8devc8','54300ff1d890a8722cc7e677bc547ffb.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('1988','6A','A','136230','136230','Siti Zahra','6','lab_ma','1','136230','ps1ei6u','af8ed03a4a35962185fdca899e74826d.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2026','XIIA MIA','A MIA','154001','154001','Abdul Farhan ','XII','lab_ma','1','154001','f0ast','eeaee5240092754e80a7f851d9b45138.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2030','XIIA MIA','A MIA','154015','154015','Daniel Isya Abdullah','XII','lab_ma','1','154015','j3565','0c83a2be1fad780964565e1e3fab1e6f.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2032','XIIA MIA','A MIA','154027','154027','Fadel Muhammad ','XII','lab_ma','1','154027','cgfzz','019deeb4029b7e4bfdc11baa1eb6368f.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2033','XIIG IIS','G IIS','154037','154037','Hendra Robby Muhammad Awaludin','XII','lab_ma','1','154037','23l6t','','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2034','XIIE IIS','E IIS','154039','154039','Hilman Maulana (i)','XII','lab_ma','1','154039','x2ct8','86cc7deddfeb4063f494b73f5ee08ea5.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2035','XIIG IIS','G IIS','154043','154043','Iriansyah Anugrah Pradana','XII','lab_ma','1','154043','81x4m','effa865c5771ae23627b19c94aead62b.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2036','6A','A','154044','154044','Irsyad Nawawi Rafsanjani','6','lab_ma','1','154044','47g70','0d9bf4676749b2bdf86c4789a5ae8fae.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2038','XIIG IIS','G IIS','154053','154053','M. Alby Fauzi','XII','lab_ma','1','154053','ucd2r','c34294f9d1cffb5a9d12160c8011b51a.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2039','6A','A','154055','154055','Muhammad Ichsan Fatwa Fauzi','6','lab_ma','1','154055','2sr9d','9c2a22053d5036fc33c18f50d8dde668.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2042','XIIA MIA','A MIA','154063','154063','Muhammad Fiqih Ubaidi','XII','lab_ma','1','154063','bfbkf','fd14404835a0030f634acecfec0f4b5b.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2044','XIIE IIS','E IIS','154065','154065','Muhammad Gilang Riandy','XII','lab_ma','1','154065','uw2tm','08574dd0b359722a20b84b1de048d9d8.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2045','XIIG IIS','G IIS','154066','154066','Muhammad Ikhsan Asari','XII','lab_ma','1','154066','81frr','b30916417e67e096dfe4af9f68dc0048.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2046','XIIA MIA','A MIA','154067','154067','Muhammad Maulana Firdaus','XII','lab_ma','1','154067','ms8v9','248294b3b8098de23a122a7687b5aa0c.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2047','XIIE IIS','E IIS','154068','154068','Muhammad Zulkifli','XII','lab_ma','1','154068','rcsw8','11a87bc8b3ac04bea0739db903838ad6.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2049','XIIG IIS','G IIS','154084','154084','Rizki Amanda','XII','lab_ma','1','154084','lc89k','4558497e794b11f0fb740334b2824a8f.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2050','6A','A','154086','154086','Rizky Saeful Muchtar','6','lab_ma','1','154086','j5mfq','a603110068feb3edb8b75036816acb85.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2051','XIID MIA','D MIA','154087','154087','Sabilar Rosyad','XII','lab_ma','1','154087','vl1tn','fc09886aaadc9c598b1661a644aab7e9.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2052','XIID MIA','D MIA','154091','154091','Shofil Fuadi Al Munawwar','XII','lab_ma','1','154091','rfexo','d2dec01ed2f779cad8740c1109edc190.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2053','6A','A','154102','154102','Wahyu Sanjaya','6','lab_ma','1','154102','f7mka','2589295282037d943e28b9261e1fe6b8.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2058','XIIA MIA','A MIA','154033','154033','Firan Mayhendra','XII','lab_ma','1','154033','f7wk6','','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2060','6A','A','154050','154050','Lucky Daffa Hanif','6','lab_ma','1','154050','xyh4s','b3d9c5726e8d9aacc98f42c2c6ba1597.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2061','XIIE IIS','E IIS','154054','154054','M. Auliya Hakiem','XII','lab_ma','1','154054','3nle4','11c329203a27d58bd4dc4d56ae21c677.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2062','XIID MIA','D MIA','154056','154056','M. Rizki Fadillah','XII','lab_ma','1','154056','h7luk','','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2066','XIIG IIS','G IIS','154061','154061','Muhammad fachri Romadhon ','XII','lab_ma','1','154061','xjugo','','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2067','XIIG IIS','G IIS','154062','154062','Muhammad Fauzan ','XII','lab_ma','1','154062','zdi2t','8be11efe09a82acd0941bf95e033df36.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2068','XIIE IIS','E IIS','154083','154083','Raul Maldini','XII','lab_ma','1','154083','o6yrk','111b6fa545632c3f3219a788cf04a95d.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2070','XIIH IIS','H IIS','154009','154009','Amelia','XII','lab_ma','1','154009','zud2p','b7462de10a7e27b95e8e401b562be5eb.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2071','XIIB MIA','B MIA','154014','154014','Ayu Fira Ellena','XII','lab_ma','1','154014','6e7ol','c77f5999717a9405bb550a1d47ab9cff.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2072','XIIH IIS','H IIS','154016','154016','Dede Nurulgina','XII','lab_ma','1','154016','3zlpe','83903f6e3a16ddd73d8c79652140202d.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2074','XIIF IIS','F IIS','154026','154026','Euis Mawaddaturrahmah','XII','lab_ma','1','154026','hr44q','b985313dddf626fb78c79f095c7bd59b.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2075','XIIH IIS','H IIS','154029','154029','Fatimah Rahmah','XII','lab_ma','1','154029','h2oly','5fda76dc7cacd582d3b2df0d606973ad.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2078','XIIF IIS','F IIS','154075','154075','Nur Intannia','XII','lab_ma','1','154075','5602f','f5031b3654524d4b9c5d30e91c0c79fa.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2081','6A','A','154081','154081','Qisthy Della Hia','6','lab_ma','1','154081','onsuz','932bf2bab517f158a6793151eacb9266.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2084','XIIH IIS','H IIS','154096','154096','Sofi Rahmasari','XII','lab_ma','1','154096','mxkbp','84eb98634b56a7615f8c10ada025d416.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2085','XIIB MIA','B MIA','154007','154007','Alifia Alfatiha Putri Oskandar','XII','lab_ma','1','154007','3gndq','8b372f20ff25f894754048020ca9913e.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2087','XIIF IIS','F IIS','154011','154011','Anita','XII','lab_ma','1','154011','61khj','6d8a59bca0117f3a7906426f1933552b.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2088','XIIH IIS','H IIS','154012','154012','Astri Rahmah Sasalmah','XII','lab_ma','1','154012','f03dg','3e2506ab7d97f1026074e971140caf35.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2089','XIID MIA','D MIA','154013','154013','Awalliah Noviyanti','XII','lab_ma','1','154013','z2m99','fa381ba7de9910d918c477bf7376ed2f.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2090','XIIF IIS','F IIS','154018','154018','Desta Valicia','XII','lab_ma','1','154018','lrep5','cbaeae49610720547a5a170e28932601.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2091','XIIF IIS','F IIS','154019','154019','Devi Fitria ','XII','lab_ma','1','154019','3j6vy','eaf62a3faec3521891c732010076cf2b.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2092','XIIH IIS','H IIS','154025','154025','Edenia Rengganis','XII','lab_ma','1','154025','7stoi','8dc1a3a1b360d86e0f9e9b29a518f97e.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2093','XIIC MIA','C MIA','154034','154034','Ghina Rizki Amalia','XII','lab_ma','1','154034','kwkyc','82749c8ddc9264ac0ee5f5813af65c87.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2094','XIIF IIS','F IIS','154035','154035','Gustina Putri Wulandari','XII','lab_ma','1','154035','gm8ur','77a51e6535646a451c66fe946caa8b87.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2095','XIIB MIA','B MIA','154041','154041','Ida Sari Mulyati','XII','lab_ma','1','154041','9d3b2','67cd66f17c6ab5b3567d3d2d1bf3c3cf.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2096','XIIB MIA','B MIA','154042','154042','Indah Putri Ramadhanis','XII','lab_ma','1','154042','62kad','','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2097','XIIF IIS','F IIS','154045','154045','Ismaya Kurnia Sari','XII','lab_ma','1','154045','e58dh','cf0f8a1257c9789d9ce0a92e06268c0e.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2098','6A','A','154046','154046','Jihan Azzahra','6','lab_ma','1','154046','up78n','10edcf35e448c6b6fb7e41a233aa4e38.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2099','XIIC MIA','C MIA','154047','154047','Karina Dewi Nurseptiana','XII','lab_ma','1','154047','omx29','62999898dc9835938b0fd26d6a94b94b.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2100','XIIH IIS','H IIS','154048','154048','Laelatus Saadah','XII','lab_ma','1','154048','z0mnm','','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2101','XIIF IIS','F IIS','154052','154052','Lyana Herlina','XII','lab_ma','1','154052','0fdai','5d4443e8fa7aea5190ee1ccc5ab16fd1.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2102','XIIF IIS','F IIS','154069','154069','Nabilah Mulki','XII','lab_ma','1','154069','n9ofl','d2eea8753ded84ed37fce1504dc54221.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2103','XIID MIA','D MIA','154072','154072','Neng Sarah Permata Sari','XII','lab_ma','1','154072','lm7cz','a4430c49273b2b529b25855615fbde26.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2104','XIIH IIS','H IIS','154079','154079','Putri Maharani Yonanda Fransiska','XII','lab_ma','1','154079','xzxp8','','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2106','XIIF IIS','F IIS','154092','154092','Siti Ahlatil Insaniah Hasibuan ','XII','lab_ma','1','154092','pnu2c','db6cd3fa3ce2afe427b1b0096d6503db.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2107','6A','A','154093','154093','Siti Amalia Nur Pratiwi','6','lab_ma','1','154093','2qmmz','57c94f576af51f6241c19abefdc9972b.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2108','XIIC MIA','C MIA','154097','154097','Suci Indah Puspa Sari','XII','lab_ma','1','154097','k6ump','658553c8b2c791adba87f1c7eb1066fb.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2109','XIIF IIS','F IIS','154098','154098','Syifa Fauziah ','XII','lab_ma','1','154098','tl9yn','ac40784e57c14223b45b0130632a83d7.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2110','6A','A','154100','154100','Tasya Nahwal Kamilah','6','lab_ma','1','154100','aqzyr','5b6969af43fd82651ac6f7ceadfe9253.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2112','6A','A','154104','154104','Widi Lestari','6','lab_ma','1','154104','d92qn','873b24d8b30adac86ea9834503a6360b.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2113','XIIH IIS','H IIS','154004','154004','Agisna Nurzaeni','XII','lab_ma','1','154004','98jcb','0d683092eb951d92326b210eacfad96f.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2114','6A','A','154006','154006','Alda Nur Alfi Lail','6','lab_ma','1','154006','nnz0g','95637ad20f57aaba8cef8b276f1a38dc.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2115','XIIF IIS','F IIS','154008','154008','Alya Zalfa El Salsabila','XII','lab_ma','1','154008','sftqi','611586ad12b862230b9ab209a5e77a04.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2116','6A','A','154010','154010','Anbar Safitri','6','lab_ma','1','154010','9ce8q','e8cb3cb2e0458c673fc618bfc149c81c.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2117','XIIC MIA','C MIA','154017','154017','Dedeh Winingsih','XII','lab_ma','1','154017','2rmc3','ef6b27f88d86c03bcf84641ba49c217e.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2119','XIIF IIS','F IIS','154021','154021','Dina Fitri Akmalia','XII','lab_ma','1','154021','y9kmn','35e98dafd873d3dfb0481bf68eb58436.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2120','XIIB MIA','B MIA','154022','154022','Dina Sofiah','XII','lab_ma','1','154022','i86ja','71702dc797142ce61826b7dcd68745a9.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2121','XIID MIA','D MIA','154028','154028','Fakhriani Maulidia Safitri','XII','lab_ma','1','154028','f920j','2ac7179e756f799ea01c2530dc3cff58.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2122','XIIC MIA','C MIA','154032','154032','Fifi Rahayu','XII','lab_ma','1','154032','yriw0','6261e1513b906b73b4320ecd6cd9527e.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2124','XIIF IIS','F IIS','154038','154038','Heni Nuraini Nasution','XII','lab_ma','1','154038','tj4hb','ff9a7ac47cafd13141f9924c93c904fe.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2126','XIIH IIS','H IIS','154049','154049','Laila Nur Fitriani','XII','lab_ma','1','154049','skgl8','420dc8e333f289da5a8aabc7054de27b.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2128','XIIH IIS','H IIS','154071','154071','Nadiya Adawiyah Afifah','XII','lab_ma','1','154071','6gbrs','87e9971d8396f4ed265c2ea7a6d91ca9.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2129','XIIF IIS','F IIS','154073','154073','Nina Resha','XII','lab_ma','1','154073','wd24c','f93ad870e6a2117c25b01c2fb8f67273.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2131','XIIF IIS','F IIS','154078','154078','Pipin Adelina','XII','lab_ma','1','154078','t0mcl','ac5b7cf4c88ec9da69ff58daf5873e92.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2132','XIIF IIS','F IIS','154082','154082','Rabiah Al-adawiah','XII','lab_ma','1','154082','4aicc','e64fddb11c78becf07241c08c8411403.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2133','6A','A','154106','154106','Rhahel Aulia Risya','6','lab_ma','1','154106','k2cntbh','69c4ce4c0c1f8560cf55a1f9833f58d1.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2134','XIIH IIS','H IIS','154085','154085','Rizky Amelia','XII','lab_ma','1','154085','ldjo5','0a1711d7eb4e07df04307e5cab450d01.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2135','XIIH IIS','H IIS','154088','154088','Sahla Safira','XII','lab_ma','1','154088','edyn0','bccdb7e3d6c7536d570fa3b2f4ad001a.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2136','XIIF IIS','F IIS','154089','154089','Selyka Widi Astuti','XII','lab_ma','1','154089','jghuk','1c84d6c55cccba39b11bc78484369d38.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2137','XIIH IIS','H IIS','154090','154090','Septhia Azhary Layn','XII','lab_ma','1','154090','kt7au','8ea0b70ab720824fda82df522db6ad6f.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2139','XIIF IIS','F IIS','154099','154099','Syifa Kamila','XII','lab_ma','1','154099','gbys7','db61bcfb2ccf36a39e88838952919bd1.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2140','XIIF IIS','F IIS','154101','154101','Vina Nurhaliza','XII','lab_ma','1','154101','l0ch7','3e34c6ffaca17ef1d3737395226a97b3.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2141','XIIC MIA','C MIA','154105','154105','Yuliani Sentosa','XII','lab_ma','1','154105','kgps1','6b3bcfbcaac3c18d9454e44004b684ad.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2868','XIIA MIA','A MIA','136142','136142','Muhammad Rifki Ilham','XII','lab_ma','1','136142','r2in7','c2d963cfd47ee00be05b936e3ed0df49.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2869','XIID MIA','D MIA','136011','136011','Ahmad Fauzi','XII','lab_ma','1','136011','82j4v','dbb73b683b7348de670ba5163b6c1e30.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2870','XIIA MIA','A MIA','136116','136116','M. Satya Dharma','XII','lab_ma','1','136116','41fmb','60cb4dfcdfa8b9ecd29989ab098f2ff3.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2871','XIIA MIA','A MIA','136010','136010','Ahlam Surya Husandi','XII','lab_ma','1','136010','xqzsy','6cb771d478d9cebd466ee8db31a9842c.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2872','XIID MIA','D MIA','136106','136106','M. Falih Temongmere','XII','lab_ma','1','136106','2jz4b','3cff1035ade4a0435588a15e0a5ffd1e.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2873','XIID MIA','D MIA','136026','136026','ARYA SEPTO NUGRAHA','XII','lab_ma','1','136026','i09u2','9b2334ace8afb72a4d659579ab562f5c.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2874','XIIA MIA','A MIA','136115','136115','M. Ryan Miftahul Ullum','XII','lab_ma','1','136115','k6ais','66eaee1400857fbcc9f59841b35b9e7b.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2875','XIIA MIA','A MIA','136089','136089','JUAN MARINE HARIONO','XII','lab_ma','1','136089','81xbc','91951674fc9936ad76b29a21ffeb75b0.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2876','XIIA MIA','A MIA','136097','136097','Lutfi Sili Mauladi','XII','lab_ma','1','136097','wacwb','ca936588c89cf67bd9968b4e59f9028a.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2877','XIIA MIA','A MIA','136169','136169','Reza Mohamad Maulana','XII','lab_ma','1','136169','2repx','ac19d207903b7bc2c6d13ad0c60c5ad9.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2878','XIID MIA','D MIA','136123','136123','Mille Antonio','XII','lab_ma','1','136123','u5xlq','36c5d74b26c730d87b882df007b17041.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2879','XIIA MIA','A MIA','136181','136181','Rizky Ichsan Tanring','XII','lab_ma','1','136181','gnmax','ef4a0a92654ac7cb9efab85417450950.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2880','XIID MIA','D MIA','136199','136199','Syuhud Jidna Kusuma','XII','lab_ma','1','136199','koydm','c7c072c3db274d516cf78424df3656df.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2882','XIID MIA','D MIA','136212','136212','Yusuf Habibie','XII','lab_ma','1','136212','ytbg6','641ef06c88e8d7ae3716f5e59ee67bfc.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2884','XIIA MIA','A MIA','136205','136205','Wifda Nasrullah','XII','lab_ma','1','136205','twg1f','bebd09635e7441e0072dc6479948f07b.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2885','XIID MIA','D MIA','136197','136197','Sultanin Jaya','XII','lab_ma','1','136197','2vfjg','e3f6a764fa73824ff9b25a17f3b277cb.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2886','XIID MIA','D MIA','136188','136188','Shafly Abdurrafi','XII','lab_ma','1','136188','d2gno','f24c824edc0f84bba8150bd9f5ece1e9.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2887','XIIA MIA','A MIA','136180','136180','Rizky Firstiansyah','XII','lab_ma','1','136180','9futr','772925fa1b58d65affb578331a004608.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2888','XIIA MIA','A MIA','136124','136124','Moch. Bayu Ramadhan','XII','lab_ma','1','136124','mvafz','13b4c890f993c93d59d26fbbb11d895c.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2889','XIIA MIA','A MIA','136126','136126','Mochammad Rayhan Hardnur','XII','lab_ma','1','136126','75gwh','8f0161941df3726c205b4abbd5fd9f24.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2890','XIIA MIA','A MIA','136178','136178','Rizki Bagus Aminarto','XII','lab_ma','1','136178','g14zs','885b01f78e2881d2364d6f9189842c44.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2891','XIIA MIA','A MIA','136105','136105','M. Fahri Rafifsyah','XII','lab_ma','1','136105','wb6i5','0437cb38f8cf8176b6aecf94b9bf99e3.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2892','XIIA MIA','A MIA','136051','136051','Ergia Maulian','XII','lab_ma','1','136051','ykao7','ae7870cd2f06c404a6004968afb3fb5d.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2893','XIIA MIA','A MIA','136129','136129','Muchammad Syafiq Fathurrahman','XII','lab_ma','1','136129','dqek1','cd220419344bd9d1e0899cea6736d671.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2894','XIID MIA','D MIA','136039','136039','Daffa Bagus Aji Pratama','XII','lab_ma','1','136039','4as7i','27df3e5c9146c2e37ef760000d543e1d.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2895','XIIA MIA','A MIA','136131','136131','Muhamad Iqbal Jamil','XII','lab_ma','1','136131','yowd5','ada07f2b89f0f44978a17c703d12ed60.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2896','XIIA MIA','A MIA','136171','136171','Ridho Valentino Supeno','XII','lab_ma','1','136171','t3p8d','acf3ac4f0136e9cf8b2ea84d6f78e2d3.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2897','XIID MIA','D MIA','136112','136112','M. Reyhan Maulana','XII','lab_ma','1','136112','q8ako','b66a7b0ece5543d3baf8b8c2823df7d2.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2898','XIIA MIA','A MIA','136058','136058','Faizhal Ilham Aditya','XII','lab_ma','1','136058','9hlus','bd2211ee285c4173c0a2956b35f31edc.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2899','XIID MIA','D MIA','136168','136168','Reza Adit Prasetyo','XII','lab_ma','1','136168','jckvt','a4fdda9edecc4c45f1b88edf732c1f30.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2900','XIIA MIA','A MIA','136141','136141','Muhammad Reno','XII','lab_ma','1','136141','22aet','03c46e1fd2b3f8586bc73f78a193053e.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2901','XIIA MIA','A MIA','136140','136140','Muhammad Raihan Azhar','XII','lab_ma','1','136140','mbax8','678fa888903f54e0f5da015add52e930.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2902','XIIA MIA','A MIA','136137','136137','Muhammad Iqbal Fitriansyah','XII','lab_ma','1','136137','hbt4t','c6c45543473de8986cbeb7d320e546fa.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2903','XIIE IIS','E IIS','136099','136099','M Syadam Fahrian','XII','lab_ma','1','136099','ci4d0','f366dc5511b7afdb205e27bbbd439e29.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2904','XIIA MIA','A MIA','136045','136045','Dimas Aldi Rianto','XII','lab_ma','1','136045','5dmnd','9f5d825964bfb14c232b6bf2d44c30de.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2905','XIIA MIA','A MIA','136075','136075','Harun Robain','XII','lab_ma','1','136075','1e3a4','2f4086c3f7dc6430896eb71ae2e59c79.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2906','XIIA MIA','A MIA','136081','136081','Ilham Hafidhi','XII','lab_ma','1','136081','ba8lm','1b6aa2915c6da982b9d69f50ce6ff780.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2907','XIIA MIA','A MIA','136054','136054','FADHIL MUHAMMAD','XII','lab_ma','1','136054','f65xf','a47ae7b893c20ee408ba57a3851a18e6.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2908','XIID MIA','D MIA','136134','136134','Muhammad Fikri Istaqomali','XII','lab_ma','1','136134','o3z82','7d3f1155ce6b7d3c9538d05f369dcdf8.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2909','XIIB MIA','B MIA','136016','136016','Alifia Raihani Azwar','XII','lab_ma','1','136016','nctuf','dfdf13a850cce5323ecd1cd6721f1490.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2910','XIIB MIA','B MIA','136019','136019','Aminah Tuzzahro','XII','lab_ma','1','136019','6affi','62ad5a0f02b822ac3fd92f4028ddd6a9.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2911','XIIC MIA','C MIA','136022','136022','Anisa Sri Rahayu','XII','lab_ma','1','136022','6370p','19bfaf8fcbc0a0b9db2fcfafd330b69b.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2912','XIIC MIA','C MIA','136028','136028','Assyifa Nur Fadhilah','XII','lab_ma','1','136028','9yhwc','83153f66c7bea11e1d243152340d5ff8.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2913','XIIB MIA','B MIA','136032','136032','Azka Sayyida Nafisa','XII','lab_ma','1','136032','7ccsl','f3fd757d89a88702c810343b23dea502.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2914','XIID MIA','D MIA','136036','136036','Bazliah Rusdi','XII','lab_ma','1','136036','g9ehs','92c4e32af56a0d81bd6c469e08002445.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2915','XIIB MIA','B MIA','136185','136185','Salma Nur Aulia Maulida','XII','lab_ma','1','136185','99zvv','3609fab562091bb723a16dd4c0a89892.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2916','XIIC MIA','C MIA','136191','136191','Shoffana Muthiah Fadhilah','XII','lab_ma','1','136191','h14wl','d47d68b770ee9634e7a97ae8b8aea6a6.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2917','XIIB MIA','B MIA','136193','136193','Shohifah Quraniyah','XII','lab_ma','1','136193','v95ot','91a4fe70db3169a71126887f282375ca.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2918','XIIC MIA','C MIA','136200','136200','Tjut Nyak Shahara','XII','lab_ma','1','136200','ij5fj','756e3bd922732b6086628d0dc4943b08.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2919','XIIB MIA','B MIA','136202','136202','Tsaltsa Putri Ramadhany','XII','lab_ma','1','136202','nmgup','6c745551164b917c39152a0aaef7612d.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2920','XIIC MIA','C MIA','136049','136049','DWI NUR ANGGITA','XII','lab_ma','1','136049','wyztz','f75c62468cb6462adf0d020c4cf58a8c.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2921','XIID MIA','D MIA','136001','136001','Aay Hariyanti Zuhroini','XII','lab_ma','1','136001','cs88g','0e47a7bf6b2be23a5294359359ff73d2.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2922','XIIB MIA','B MIA','136008','136008','Aenun Rahmawati','XII','lab_ma','1','136008','8s37t','7104a5674b3b11f10930616ad92eda2e.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2923','XIIC MIA','C MIA','136014','136014','Alfiyaturrahmah','XII','lab_ma','1','136014','tb4aw','45a8622a20417e7cddef1cc17a0fd64f.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2924','XIID MIA','D MIA','136182','136182','Rizqi Alawiyah Wijaya','XII','lab_ma','1','136182','w7npj','6e8a61aa88f1f707a05d24dd94e8356f.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2925','XIIB MIA','B MIA','136020','136020','Anelza Vierlianne','XII','lab_ma','1','136020','vvucb','0c8935fa6042a62260bdacafc2dae2d4.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2926','XIIC MIA','C MIA','136005','136005','Adinda Fadhilah Azzahra','XII','lab_ma','1','136005','2dre8','2cd7571b00794a5827c6e6959341e3bd.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2927','XIIC MIA','C MIA','136027','136027','Asma Qonitah','XII','lab_ma','1','136027','3obsd','7875d989987a9df513f4e6f78a7f84db.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2928','XIID MIA','D MIA','136030','136030','Ayu Kartika','XII','lab_ma','1','136030','e0v5g','04e0d174c3db937381789bccc0d25c95.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2929','XIID MIA','D MIA','136062','136062','Farihatul Kamila','XII','lab_ma','1','136062','8uegb','6dca465f274f8c6571102d5b227354d3.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2930','XIID MIA','D MIA','136044','136044','Deva Nurkhalifah','XII','lab_ma','1','136044','100pt','7656191ebc5018fe1f3a079067dc4e47.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2931','XIIB MIA','B MIA','136047','136047','Dina Septiani','XII','lab_ma','1','136047','o7ifa','153e58896430b7a96de958b34709ed03.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2932','XIIB MIA','B MIA','136079','136079','Humairo Azizah','XII','lab_ma','1','136079','c22tz','9a5003152763595732521caedf3cd4dd.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2933','XIIB MIA','B MIA','136057','136057','Fahriza Hazrina Zain','XII','lab_ma','1','136057','pp1dn','a759f98d5e18dece5a214db95c24bab0.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2934','XIIC MIA','C MIA','136084','136084','Intan Fairuziah','XII','lab_ma','1','136084','iw52f','5d1d9e951c1cb3a16ad516fb20d6f68e.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2935','XIIC MIA','C MIA','136093','136093','Laluna Salsa Midika','XII','lab_ma','1','136093','uemh5','8663d5217fcb7a044aab22e0668d3284.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2936','XIIB MIA','B MIA','136096','136096','Lisania Amanah','XII','lab_ma','1','136096','yjbh1','66756d75dae250e0f6d4be8ddb66ffec.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2937','XIIB MIA','B MIA','136146','136146','Mutiara Nur Azizah','XII','lab_ma','1','136146','6wvv8','b463516c08da930912e9c0458d587e2b.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2938','XIIC MIA','C MIA','136152','136152','Nila Fauzi Nur Saadah','XII','lab_ma','1','136152','7jerh','cd35b8810bb5f3b1fe3006f10d71cc12.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2939','XIIC MIA','C MIA','136161','136161','Puput Mutia Anisa','XII','lab_ma','1','136161','cuqb8','a93ec30f9085dc7baebb5c55db1ae1d2.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2940','XIIB MIA','B MIA','136164','136164','Raden Salsabila Nurul Amin','XII','lab_ma','1','136164','gbmjt','88f1d79e3a0afde88bd17626f401d280.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2942','XIIC MIA','C MIA','136067','136067','Fismy Faturrahmy F.','XII','lab_ma','1','136067','9etjf','9075da2398eeab7ed001e3e7ff115eb5.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2943','XIIC MIA','C MIA','136120','136120','Maftuhatur Rusydah','XII','lab_ma','1','136120','31m8n','bbef84ad00e8042d0232d4633e9d0df7.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2944','XIIB MIA','B MIA','136156','136156','Nur Alya Muyasar','XII','lab_ma','1','136156','mb5dh','015595c52ba80c68d387d836c202a433.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2945','XIIC MIA','C MIA','136157','136157','Nur Azizah Hafidzah','XII','lab_ma','1','136157','2tikm','2425b8b0e813a2d1d36fbdc57159296c.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2946','XIIB MIA','B MIA','136160','136160','Nurul Nadhilah','XII','lab_ma','1','136160','9s1g7','4ab198fc916ced54f98b7f5ced128e63.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2948','XIIB MIA','B MIA','136052','136052','ERSA SANIA NASUTION','XII','lab_ma','1','136052','vtr2r','b8500aa6f1ae203bfa81922ef9df7502.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2949','XIIC MIA','C MIA','136055','136055','FADHILATUZ ZAHWA          ','XII','lab_ma','1','136055','0hekf','efca73c789f75495ec32214543b746b1.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2950','XIIC MIA','C MIA','136149','136149','NAJMIA LATIFARANI','XII','lab_ma','1','136149','fpsrd','4f2448a26ee7e179718b6f64cea5afaf.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2951','XIIC MIA','C MIA','136153','136153','NILAM FASSA MAHARANI','XII','lab_ma','1','136153','8y41v','8aaa826008fcd4e4a741fe83f08f7545.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2952','XIID MIA','D MIA','136162','136162','PUTRI NUR WAHIDAH','XII','lab_ma','1','136162','bcbf9','6874e67f34572cbd2ea9ccad0d63e0cf.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2953','XIIH IIS','H IIS','136087','136087','ISMAYA WARDATI BASIMAH','XII','lab_ma','1','136087','l2ncm','97857433e661bdc3e3459c41667bc9ac.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2954','XIIC MIA','C MIA','136190','136190','SHEYMA MAHARANI PUTRI','XII','lab_ma','1','136190','nmwg9','2ad312ac025ed3c6fe8ac56fefae716a.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2955','XIIB MIA','B MIA','136122','136122','MEGA CAHYA TSANIA','XII','lab_ma','1','136122','y1tc1','8a1d29f716da0fef18b4aa5dbd547447.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2956','XIIC MIA','C MIA','136145','136145','MUTIARA DWI SANDHI','XII','lab_ma','1','136145','eivg7','d0bd41de285d5e1e8f4fd63022a8e873.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2957','XIIB MIA','B MIA','136147','136147','NADZIRA AMALIA RIZKIE','XII','lab_ma','1','136147','4czug','26a46f2051b49f074bd031aac2297114.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2958','XIID MIA','D MIA','136155','136155','NUR ALFIAH ZULMI','XII','lab_ma','1','136155','4vkim','3d0db95eee8a105200ff4c8f1c114bfd.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2959','XIIC MIA','C MIA','136066','136066','Firda Sabrina Amir','XII','lab_ma','1','136066','0rzcn','ebf3a8ca041b429605dd25c95008f8b3.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2960','XIIB MIA','B MIA','136042','136042','Davina Aurelia Talaar          ','XII','lab_ma','1','136042','9ahbq','50b47a7fe6bbe35c8c74748fea2bf68a.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2961','XIID MIA','D MIA','136214','136214','Zulfah Nabilah','XII','lab_ma','1','136214','w2vdb','68d8b5f0bf2ddae39a40222e030f04ed.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2962','XIIC MIA','C MIA','136204','136204','Widya Ayu Fadilla','XII','lab_ma','1','136204','nlh8u','305c4f3cfd57a3a37973ca3cc3cd3e4b.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2963','XIIB MIA','B MIA','136201','136201','Trisnawati Dewi','XII','lab_ma','1','136201','nsfzf','d6f06cf3de130ee62272afc0a3d53046.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2964','XIIC MIA','C MIA','136198','136198','Syifa Nurul Aini syafitri','XII','lab_ma','1','136198','jaq0u','808f97635cf04ece7a8b2e7eb28abe7e.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2965','XIIB MIA','B MIA','136196','136196','Sonia Agustina','XII','lab_ma','1','136196','owrzf','4aeef78cbaf9800bcad8f9ef034c443c.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2966','XIIC MIA','C MIA','136195','136195','Siti Nurrifdah Pertiwi','XII','lab_ma','1','136195','gc9v0','5920bf02026320acbd10ad9c23d0d07b.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2967','XIIB MIA','B MIA','136194','136194','Siti Nurfadilah','XII','lab_ma','1','136194','zsay2','4d8db6552c3656a07c639b90c3e95f18.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2968','XIID MIA','D MIA','136189','136189','Shahifah Faiza Ahfaliyah','XII','lab_ma','1','136189','ebnct','78495ff27b310986fc72fed368fbe11c.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2969','XIIB MIA','B MIA','136186','136186','Salsabila Azkya Muslim','XII','lab_ma','1','136186','mkim1','d87323f0d48f6c3561811223d4227a99.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2970','XIIC MIA','C MIA','136183','136183','Rosalina Dwi Agustin','XII','lab_ma','1','136183','l4hv6','88a3f1cfa38348b474a5bdb799397d33.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2971','XIIB MIA','B MIA','136170','136170','Rida Saniya Raudoh','XII','lab_ma','1','136170','xqngh','3875c206f52c5fbeafda7772710d29cc.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2972','XIIC MIA','C MIA','136167','136167','Ratna','XII','lab_ma','1','136167','sdqfp','9f1d0b31077b3947b52aaa0bafcf632b.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2973','XIIB MIA','B MIA','136159','136159','Nurlela','XII','lab_ma','1','136159','8u620','1a34c38f2f05cc5bcd23be0fa9ebb05b.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2974','XIIB MIA','B MIA','136021','136021','Anggia Murni','XII','lab_ma','1','136021','3xu4j','8ae96d306629cd836ccf20b5b1169376.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2975','XIIC MIA','C MIA','136006','136006','Adinda Yasmina Ramadanti          ','XII','lab_ma','1','136006','9w3w0','877af67c982acbd6c50487742e36e26f.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2976','XIIF IIS','F IIS','136018','136018','Amelia Ramadhani          ','XII','lab_ma','1','136018','asi1w','6979b10d6f1982caf496b5f379536734.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2977','XIIB MIA','B MIA','136035','136035','Azzahra Hapsya Aulia','XII','lab_ma','1','136035','0sr1e','f3c95701bc593dae02b51b1abe2b4328.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2978','XIIC MIA','C MIA','136050','136050','Elsa Widiyanti          ','XII','lab_ma','1','136050','8ljez','56eb4d50d4ca04353d5725a15943ccb3.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2979','XIIB MIA','B MIA','136151','136151','Ni Dewi Inayah H.K','XII','lab_ma','1','136151','8an01','52d480d9ad25e80804a0fe634eaaf1aa.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2980','XIIC MIA','C MIA','136056','136056','Fahra Aisha Fajrin','XII','lab_ma','1','136056','hhyy6','a224478549752c58b0b2598aca794d0f.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2981','XIIB MIA','B MIA','136059','136059','Farah Fauziah','XII','lab_ma','1','136059','yfqu7','2997000c8ddd6dc2a16ff623369d68f3.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2982','XIIC MIA','C MIA','136060','136060','Farahiyah Azzyati ','XII','lab_ma','1','136060','shgoy','aa57c11c34c958be99e14cbdc693793a.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2983','XIIB MIA','B MIA','136063','136063','Febiyanti Tiara Suci ','XII','lab_ma','1','136063','yizda','4b164b36f1972136950764b277696196.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2984','XIIC MIA','C MIA','136074','136074','Hanifa Zahratunnisa','XII','lab_ma','1','136074','mn82m','0863085b3984813df59deb11b157717f.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2985','XIIB MIA','B MIA','136088','136088','Jihan Reviandra','XII','lab_ma','1','136088','e9l0a','672318fe34a19680f026f0289818180d.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2986','XIID MIA','D MIA','136094','136094','Latifa Rahmah Laila','XII','lab_ma','1','136094','05ceo','4b66af1c4333af614051924a450fe1d1.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2987','XIIC MIA','C MIA','136121','136121','Mahliya Shafa','XII','lab_ma','1','136121','e3nf0','874a84f20f70ef1c4ed6a8f31c9322c2.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2988','XIIG IIS','G IIS','136125','136125','Moch.Alwi Prysas','XII','lab_ma','1','136125','fbfnw','d75c182c6626af3e60605d14a3b31b96.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2989','XIID MIA','D MIA','136209','136209','Wildan M Fahmi','XII','lab_ma','1','136209','u5c8f','73089f37f6e82d76cc427729daac95b0.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2990','XIIG IIS','G IIS','136013','136013','Alfian Darmawan','XII','lab_ma','1','136013','2bbe3','945e442484c8ef4c218746d3dc54ab1b.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2992','XIIG IIS','G IIS','136023','136023','Ardhi Dwi Andika','XII','lab_ma','1','136023','vmfp6','44f8123e12b6a3e4941138d78f0ed305.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2994','XIIG IIS','G IIS','136154','136154','Nizar Sadat','XII','lab_ma','1','136154','q12oe','d63269802863456bc3338f82c1b8ae81.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2995','XIIE IIS','E IIS','136128','136128','Muaz Aziz','XII','lab_ma','1','136128','17eoo','a21459db31a137183aa90dba319cae44.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2996','XIIE IIS','E IIS','136172','136172','Ridmi Irfan','XII','lab_ma','1','136172','0adwo','4071d141713c55b287975ac3786cb8d4.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2997','XIIE IIS','E IIS','136174','136174','Rio Zulqarrnain Hidayat','XII','lab_ma','1','136174','qdwum','f0afcc52438d48fc3fbf93a3ab36d0c0.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2998','XIIE IIS','E IIS','136110','136110','M. Rama Saputra','XII','lab_ma','1','136110','gqb7s','676733702486a9f642a2cedc9ee06452.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('2999','XIIG IIS','G IIS','136046','136046','Din Ruchdini Julianur','XII','lab_ma','1','136046','02akz','7e2dd9c6a034982b4ab9747795333a33.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3000','XIIE IIS','E IIS','136065','136065','Fikri Akbar Fadilah','XII','lab_ma','1','136065','7zfzq','5ba09eadc231a0a88f0f7294671f2132.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3001','XIIG IIS','G IIS','136206','136206','Wildan Isman N','XII','lab_ma','1','136206','9obzl','d1aba00ee95766f3dff895135fd359b8.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3002','XIIG IIS','G IIS','136111','136111','M. Reifa Nizi Al -Wafa','XII','lab_ma','1','136111','o3asp','0ec025051ba8b63499aad187b4ac8419.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3003','XIIE IIS','E IIS','136078','136078','Hilmawan Tirta Nirwana','XII','lab_ma','1','136078','u4com','32fc0798e5ce05003710326bef673aa3.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3004','XIIE IIS','E IIS','136109','136109','M. Parkhan Izam Mugnil Auli','XII','lab_ma','1','136109','cqrcv','22bcf8fb0453d56376976ab9efe9e081.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3005','XIIG IIS','G IIS','136113','136113','M. Rizal Baesuni','XII','lab_ma','1','136113','m14ev','db6f6de138b8595b0101e68ea7bf2e35.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3006','XIIE IIS','E IIS','136143','136143','Muhammad Zidane Ar-Rizqi','XII','lab_ma','1','136143','kpi3z','bdb8dd2df8c7bb093616d5fe9224aeb9.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3008','XIIE IIS','E IIS','136127','136127','Mohammad Alfian Dhiya Ulhaq','XII','lab_ma','1','136127','7zdhj','f7854eef060997f910163a039fe23dff.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3010','XIIG IIS','G IIS','136130','136130','Muhamad Bahrul Ulum','XII','lab_ma','1','136130','gq59m','490adfe24626f8935687fb8abf7b1d08.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3012','XIIE IIS','E IIS','136210','136210','Yasser Al-Fawwaz','XII','lab_ma','1','136210','2skdm','769063fb84ea63bf4e643241572c365e.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3013','XIID MIA','D MIA','136207','136207','Wildan Khoir Lubis','XII','lab_ma','1','136207','3ce5m','af281a5416221db5e9833ec7b7b14e2e.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3014','XIIE IIS','E IIS','136184','136184','Saepul Rhohman','XII','lab_ma','1','136184','5ym5y','5319a5e475b9461f546ccde7a99c1f04.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3015','XIIG IIS','G IIS','136179','136179','Rizky Aditya Pratama','XII','lab_ma','1','136179','idjv2','9f53db6d3923aab5dc1656beeca3e66d.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3016','XIIG IIS','G IIS','136173','136173','Ridwan Maulana','XII','lab_ma','1','136173','z7kl8','74a4bba550a94e322d4d0d7e0bd1db7a.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3017','XIIE IIS','E IIS','136166','136166','Randi Saputra','XII','lab_ma','1','136166','lfmrf','c2bb2f4cbc40fd7e984e68c5d4e0a3f7.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3018','XIIG IIS','G IIS','136117','136117','M. Ziddan Ali','XII','lab_ma','1','136117','83hw5','f54d0ca36d23d53e4abfa9f20d5bed8f.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3019','XIIG IIS','G IIS','136118','136118','M.Rijal Aufar ','XII','lab_ma','1','136118','yxzxp','9a008c2bf7fef92f98e501c8c1f905a2.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3021','XIIE IIS','E IIS','136004','136004','Adam Ismail','XII','lab_ma','1','136004','6jmo6','a91e469f375a81e173135f281c4b75e7.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3022','XIIE IIS','E IIS','136025','136025','Arief Firmansyah','XII','lab_ma','1','136025','dfki7','07bd3d6a4e833a3c188c54262c1deaa4.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3023','XIIG IIS','G IIS','136031','136031','Azka Muzakkie','XII','lab_ma','1','136031','m46sv','e7e4742d47e8d883ceb8e234af23c4b4.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3024','XIIG IIS','G IIS','136040','136040','Dalfajar Ramdan Lesmana','XII','lab_ma','1','136040','8nn54','89c8b78bb08a0ce3ce447a949e73dac5.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3025','XIIE IIS','E IIS','136041','136041','Dandy Amiarno Putra','XII','lab_ma','1','136041','abwxu','0ea8c00ae6b5792a9e74229c0e6369c7.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3026','XIIG IIS','G IIS','136069','136069','Guruh Mulyo Setyo Pratama','XII','lab_ma','1','136069','penn2','c497be8358a6959d6f02fc314a1a4a3e.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3027','XIIG IIS','G IIS','136092','136092','Krisnanta Rifky Noor F.','XII','lab_ma','1','136092','mchjb','bf237792bbf085f52db1aad08a5f1cfd.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3028','XIIE IIS','E IIS','136107','136107','M. Firmansyah','XII','lab_ma','1','136107','nu6v0','75c9a441b4cb9938f4cdbb03c15a9446.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3029','XIIG IIS','G IIS','136002','136002','Abdaur Rizki Marwan','XII','lab_ma','1','136002','ytdqh','f9de61f1250efaeaa70e6b28e0bbdbb8.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3030','XIIG IIS','G IIS','136086','136086','Irsya Maulana','XII','lab_ma','1','136086','rlsfx','6f887e363538b6997fb9b9a7f5228d78.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3031','XIIG IIS','G IIS','136012','136012','Ahmad Rosadi','XII','lab_ma','1','136012','2zakq','1052fb3cad409304d064e53672216235.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3033','XIIG IIS','G IIS','136165','136165','Raihan Alif Sabili','XII','lab_ma','1','136165','1teuq','248f82b6a2c4ee8ee0e64e1d16dc85df.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3034','XIIH IIS','H IIS','136009','136009','Agnia Mutmainah','XII','lab_ma','1','136009','bz40b','2a818993b544b3622d943e493779bbfa.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3035','XIIG IIS','G IIS','136139','136139','Muhammad Raihan','XII','lab_ma','1','136139','zdw1g','da6761d0c27038dff50b932013a4d937.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3036','XIIG IIS','G IIS','136053','136053','Fachri Alfianza','XII','lab_ma','1','136053','hktpt','4e9499b52e3c760bb0d6dc9e93eed5d2.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3038','XIIF IIS','F IIS','136029','136029','Auliya Azhar','XII','lab_ma','1','136029','e4jbg','4b0ae45d4fcdd9edd80eb1165147091f.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3039','XIIH IIS','H IIS','136033','136033','Azka Widiyani','XII','lab_ma','1','136033','mtaml','5585b453a52bdfa9da3baccb9c923c34.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3040','XIIF IIS','F IIS','136061','136061','Farhatun Nazila','XII','lab_ma','1','136061','rn9tb','721825919c42af62d3ece15623cb82f4.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3041','XIIG IIS','G IIS','136072','136072','Hamzah Yaqub','XII','lab_ma','1','136072','hbbmk','0ee545ae8493aa516dcd22bc86d9497e.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3042','XIIF IIS','F IIS','136083','136083','Indah Fadilah Rahmah','XII','lab_ma','1','136083','2etu7','2980ea100a9be4a4a33cef46cb787fdf.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3043','XIIE IIS','E IIS','136073','136073','Handika Maulana Salim','XII','lab_ma','1','136073','jpqne','afc318f03f79ebe5f8f0057ff28a4f86.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3044','XIIF IIS','F IIS','136090','136090','Khoirunnisa Eka Rozana','XII','lab_ma','1','136090','yvpyl','79fb16aaefa88567336013d6d949cacb.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3045','XIIG IIS','G IIS','136080','136080','Ilham Bagus Fitriyanto','XII','lab_ma','1','136080','dskop','ca086fcf4fcbfca8724f5e3e067b2934.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3046','XIIH IIS','H IIS','136150','136150','Najwa El Shadra Faaza','XII','lab_ma','1','136150','rgq8q','15fc823d8519e3b869f1af7c3b36d073.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3047','XIIH IIS','H IIS','136176','136176','Rizka Alvi Maulida','XII','lab_ma','1','136176','ym0jl','2539fef31db99b3dc5c62baea3ca7b80.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3048','XIIF IIS','F IIS','136187','136187','Sarah Latifah','XII','lab_ma','1','136187','jbnyg','df16ea06bd07904f23d500adf50175b4.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3049','XIIE IIS','E IIS','136007','136007','Adithia Ramdhani Ariansyah','XII','lab_ma','1','136007','exodp','cc37d28d894ef927fc01a8c96902c47d.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3050','XIIE IIS','E IIS','136015','136015','Alif Naufal Teguh Putra','XII','lab_ma','1','136015','9w97i','5565643c6b0fcf9a02611a839cc05832.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3051','XIIG IIS','G IIS','136034','136034','Azmi Shibba Izzuddin','XII','lab_ma','1','136034','9vj6j','929f024bdc7d5705863d79eec0a6ebcf.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3052','XIIE IIS','E IIS','136043','136043','DENDY RAMADHAN','XII','lab_ma','1','136043','pv0az','9ad87f1af89c8d928ae0b2b36dbb43f5.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3053','XIIE IIS','E IIS','136064','136064','Feri Erlangga','XII','lab_ma','1','136064','og2me','ea8bd2e4ec2d28364e327f4079667c31.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3055','XIIG IIS','G IIS','136076','136076','Hendri Mohamad Aprila','XII','lab_ma','1','136076','vfy2m','4384c42cb2d0426256a309030bb01d8b.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3056','XIIE IIS','E IIS','136077','136077','Hilman Maulana (r)','XII','lab_ma','1','136077','a36rn','7ebc4d1c9f407268c5615e1c72b0e84e.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3057','XIIE IIS','E IIS','136098','136098','Luthfi Abdurrahman','XII','lab_ma','1','136098','b81jv','','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3058','XIIE IIS','E IIS','136082','136082','Ilham Wahdi Kusuma','XII','lab_ma','1','136082','8kssi','a91c859e39de61fece83892313846f8a.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3059','XIIH IIS','H IIS','136163','136163','Qoniatul Fajriah','XII','lab_ma','1','136163','hajlz','9bc659842382842da089577cef5e5309.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3060','XIIF IIS','F IIS','136048','136048','Dinda Aulia Suntari','XII','lab_ma','1','136048','7j1z6','93adbe728acf8ea4531e78fdfbda34aa.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3062','XIIE IIS','E IIS','136104','136104','M. FADLY','XII','lab_ma','1','136104','pfq95','d9f3fa9798729bb26e63d72752772c5a.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3063','XIIF IIS','F IIS','136213','136213','Zahra Nurchaliza','XII','lab_ma','1','136213','7o6o8','04cf097362266e5b96b4ff7a1a7a11e9.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3064','XIIH IIS','H IIS','136203','136203','Wanda Kholidah','XII','lab_ma','1','136203','d1fxg','8e5526f8a120fe91bcf0eb5e52b302ba.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3065','XIIH IIS','H IIS','136144','136144','MULYANI','XII','lab_ma','1','136144','t1na2','2c4678ce2c4f53cafac533d788485907.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3066','XIIG IIS','G IIS','136133','136133','MUHAMMAD FARHAN YAZID','XII','lab_ma','1','136133','h5p5d','eeeb7ac44984ff208e5131201a773155.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3067','XIIF IIS','F IIS','136119','136119','Madihah Kanta','XII','lab_ma','1','136119','v3ea2','68e98f6c75565a0ecc75d0be6052f46b.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3068','XIIH IIS','H IIS','136095','136095','Lilih Sumirat','XII','lab_ma','1','136095','90qw9','5d71428a16d74357476c20dc672cfb00.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3069','XIIE IIS','E IIS','136135','136135','Muhammad Haekal Al-Farizi','XII','lab_ma','1','136135','33mab','56c4f0b53286e47dd978bc7077d8952d.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3071','XIIH IIS','H IIS','136068','136068','Grace Sania Effendy','XII','lab_ma','1','136068','a1w0e','afa32cbccab045861adf953d5732e207.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3072','XIIH IIS','H IIS','154080','154080','Putri Puspitasari','XII','lab_ma','1','154080','qh6bj','a0ce036a81f09bb963402cac8349eecf.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3088','XIIE IIS','E IIS','136108','136108','M. Nurali','XII','lab_ma','1','136108','evqv5','54ea1224ca11b673bdcd90a731ff3cea.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3089','XIID MIA','D MIA','136085','136085','Iqbal Mandala','XII','lab_ma','1','136085','9lof1','','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3090','XIIG IIS','G IIS','136100','136100','M Rizki Ramadhan','XII','lab_ma','1','136100','0euzh','d7959ef3b0a3614e5cbe45d4566ec238.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3153','XIIG IIS','G IIS','136138','136138','Muhammad Rafli Fargali','XII','lab_ma','1','136138','aa8zu','e902e790aedf56c0aa907835ceafb24a.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3154','XIID MIA','D MIA','136071','136071','Hamdi Tamam','XII','lab_ma','1','136071','87w5v','41a0ec2578f32c73f66777c55e31595b.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3161','XIIH IIS','H IIS','136070','136070','Halimah','XII','lab_ma','1','136070','n8agb','3b3b35b0d9dd3785e5db3514c9282009.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3162','6A','A','136175','136175','Risma Rifatul Hasanah','6','lab_ma','1','136175','335y7','b1fb544803b3f1dde51d0a0ca064b67e.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3169','XIIA MIA','A MIA','136037','136037','Bintang Alih','XII','lab_ma','1','136037','x6kjk','7cc27a48be7b63ccf90ab79b9c3933ee.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3172','XIIC MIA','C MIA','136158','136158','Nurhalimatush Solihah','XII','lab_ma','1','136158','bp8xm','79b31d2a6c1768af33af6ae2c48ade6a.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3175','XIID MIA','D MIA','136114','136114','M. Rizal Hidayat','XII','lab_ma','1','136114','5nqec','cada86f125c6b00d6cc8117c09de3764.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3178','XIIB MIA','B MIA','136216','136216','Siti Chaerunnisa','XII','lab_ma','1','136216','8p51n','','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3180','6A','A','136219','136219','Ahmad Hafidhuddin Al Munawwar','6','lab_ma','1','136219','s24jr','5264a577c39cdad966b193f497231115.JPG','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3182','6A','A','136218','136218','Taufik Hidayat','6','lab_ma','1','136218','8xusx','8896da408584010ae3c47d9ec9f99320.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3183','XIIE IIS','E IIS','136220','136220','Muhammad Fahmi Amri','XII','lab_ma','1','136220','paq9r','63c015abfc599e354c7857a97b91566f.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3627','XIID MIA','D MIA','136221','136221','Bea Fitri yani S.Y. Ola','XII','lab_ma','1','136221','aq128c','','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3632','XIIE IIS','E IIS','136238','136238','M Adnan Fauzi Masuk Januari 2017','XII','lab_ma','1','136238','siswa','','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3633','6A','A','136239','136239','Qothrun Nada','6','lab_ma','1','136239','ronitoh','b8a747c82693de9755b67ded860c1061.jpg','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');
INSERT INTO `siswa` VALUES ('3636','XIIE IIS','E IIS','154107','154107','M Yusuf Nurjalaludin','XII','lab_ma','1','154107','786gs','','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');

/*---------------------------------------------------------------
  TABLE: `soal`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `soal`;
CREATE TABLE `soal` (
  `id_soal` int(11) NOT NULL AUTO_INCREMENT,
  `id_mapel` int(11) NOT NULL,
  `nomor` int(5) NOT NULL,
  `soal` longtext CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  `jenis` int(1) NOT NULL,
  `pilA` longtext NOT NULL,
  `pilB` longtext NOT NULL,
  `pilC` longtext NOT NULL,
  `pilD` longtext NOT NULL,
  `pilE` longtext NOT NULL,
  `jawaban` varchar(1) NOT NULL,
  `file` text,
  `file1` text,
  `fileA` text,
  `fileB` text,
  `fileC` text,
  `fileD` text,
  `fileE` text,
  PRIMARY KEY (`id_soal`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
INSERT INTO `soal` VALUES   ('1','1','1','high camera angle adalah','1',' pengambilan gambar dari atas mata',' pengambilan gambar dari bawah mata',' pengambilan gambar dari atas kepala',' pengambilan gambar dari atas tanah',' pengambilan gambar dari dagu sampai kepala','A','','','','','','','');
INSERT INTO `soal` VALUES ('2','1','2','presentasi video adalah','1',' video yang mengunggulkan suatu promosi produk',' video yang menjelaskan suatu kepada orang lain',' video yang meremehkan suatu promosi produk',' video yang menjelaskan kelemahan produk',' video yang mempengaruhi orang lain','A','','','','','','','');
INSERT INTO `soal` VALUES ('3','1','3','ciri presentasi video, kecuali','1',' mudah dibuat',' menjelaskan keunggulan',' dibuat dengan kamera seadanya',' untuk menyampaikan ide gagasan',' untuk menjelekan orang lain','E','','','','','','','');
INSERT INTO `soal` VALUES ('4','1','4','email merupakan contoh komunikasi','1',' langsung',' tidak langsung',' teleconference',' google plus',' chatting','B','','','','','','','');
INSERT INTO `soal` VALUES ('5','1','5','google adsense adalah','1',' layanan media sosial google',' layanan email google',' layanan kerja sama iklan google',' penyimpanan file google secara online',' untuk melihat peta satelit','C','','','','','','','');
INSERT INTO `soal` VALUES ('6','1','6','dibawah ini hal yang harus disiapkan sebelum membuat video presentasi,kecuali','1',' ide dan gagasan',' pencahayaan',' sinopsis',' skenario',' story board','B','','','','','','','');
INSERT INTO `soal` VALUES ('7','1','7',' komunikasi daring dibedakan menjadi dua, yaitu','1',' komunikasi tatap muka dan dunia maya',' komunikasi online dan offline',' Komunikasi tidak langsung dan komunikasi virtual',' komunikasi jarak jauh dan jarak dekat',' komunikasi syncrounus dan asyncrounus','E','','','','','','','');
INSERT INTO `soal` VALUES ('8','1','8',' blogger adalah salah satu milik','1',' facebook',' twitter',' google',' instagram',' yahoo','C','','','','','','','');
INSERT INTO `soal` VALUES ('9','1','9',' google plus adalah situs','1',' sosial media milik google',' layanan email',' layanan kerja sama iklan google',' layanan membuat blog',' layanan upload foto','A','','','','','','','');
INSERT INTO `soal` VALUES ('10','1','10',' dibawah ini jenis-jenis video, kecuali','1',' video dokumenter',' video cerita',' video permainan',' video berita',' video pembelajaran','C','','','','','','','');
INSERT INTO `soal` VALUES ('11','1','11',' video yang menggambarkan peristiwa dalam kehidupan nyata disebut','1',' video dokumenter',' video cerita',' video presentasi',' video berita',' video pembelajaran','A','','','','','','','');
INSERT INTO `soal` VALUES ('12','1','12',' framing dalam pengambilan gambar adalah','1',' bidang pandangan',' sudut pengambilan gambar',' teknik kamera',' jarak pengambilan gambar',' posisi kamera','A','','','','','','','');
INSERT INTO `soal` VALUES ('13','1','13',' proses pemindahan informasi atau gagasan kepada orang lain untuk tujuan tertentu disebut','1',' komunikasi daring',' komunikasi',' komunikasi asyncrounus',' syncrounus',' komunikasi tatap muka','B','','','','','','','');
INSERT INTO `soal` VALUES ('14','1','14',' fungsi presentasi video','1',' membujuk orang lain',' menarik perhatian orang lain',' melemahkan produk',' menyampaikan ide atau gagasan',' menjelekan produk','D','','','','','','','');
INSERT INTO `soal` VALUES ('15','1','15',' di bawah ini layanan chatting, kecuali','1',' Gtalk',' yahoo messenger',' fb chat',' miRC',' sms','E','','','','','','','');
INSERT INTO `soal` VALUES ('16','1','16',' layanan email, kecuali','1',' Gmail',' yahoo',' aol',' outlook',' google plus','E','','','','','','','');
INSERT INTO `soal` VALUES ('17','1','17',' fungsi komunikasi daring, kecuali','1',' kendali',' motivasi',' informasi',' pengungkapan emosional',' retribusi','E','','','','','','','');
INSERT INTO `soal` VALUES ('18','1','18',' aplikasi pengolah kata adalah','1',' word',' powerpoint',' excel',' outlook',' publisher','A','','','','','','','');
INSERT INTO `soal` VALUES ('19','1','19',' aplikasi pengolah angka adalah','1',' outlook',' publisher',' excel',' word',' power point','C','','','','','','','');
INSERT INTO `soal` VALUES ('20','1','20',' title adalah','1',' jeda film',' pemotongan durasi',' judul',' teks berjalan di akhir video',' teks pada clip video','C','','','','','','','');
INSERT INTO `soal` VALUES ('21','1','21',' untuk merender video yang sudah diedit pada movie maker, caranya klik','1',' title',' transition',' title at the begining',' effect',' publish video','E','','','','','','','');
INSERT INTO `soal` VALUES ('22','1','22',' teks di akhir video/ film dan biasanya berjalan disebut','1',' credit',' title',' effect',' import',' publish','A','','','','','','','');
INSERT INTO `soal` VALUES ('23','1','23',' untuk memotong video atau musik, tool yang digunakan adalah','1',' title',' effect',' transition',' split',' crop','D','','','','','','','');
INSERT INTO `soal` VALUES ('24','1','24',' untuk merekam aktifitas di layar secara penuh, caranya pilih','1',' record',' full screen',' half screen',' audio',' volume','B','','','','','','','');
INSERT INTO `soal` VALUES ('25','1','25',' perbedaan antara screen cast o matic dengan camtasia yang benar adalah','1',' camtasia gratis',' screen cast o matic berbayar',' camtasia hanya untuk recording',' screen cast o matic bisa untuk editing',' camtasia bisa untuk editing','A','','','','','','','');
INSERT INTO `soal` VALUES ('26','1','26',' pada screen cast o matic, untuk memulai merekam dengan mengklik','1',' stop',' pause',' record',' play',' save as video','C','','','','','','','');
INSERT INTO `soal` VALUES ('27','1','27',' dibawah ini contoh web browser, kecuali','1',' mozilla firefox',' google chrome',' chromium',' opera',' google hangout','E','','','','','','','');
INSERT INTO `soal` VALUES ('28','1','28',' untuk pembuatan dan pengetikan surat menyurat biasanya menggunakan aplikasi','1',' note pad',' word',' notepad plus plus',' libre image',' excel','B','','','','','','','');
INSERT INTO `soal` VALUES ('29','1','29',' menu home di office word berisi tool, kecuali','1',' bold',' italic',' underline',' insert',' center','D','','','','','','','');
INSERT INTO `soal` VALUES ('30','1','30',' untuk membuat animasi slide pada powerpoint, langkahnya adalah','1',' home - insert - animation',' home - animation - insert',' animation - pilih animasi',' animation - slide',' insert - animation – ok','C','','','','','','','');
INSERT INTO `soal` VALUES ('31','1','31',' menu - menu yang ada di power point, kecuali','1',' home',' slideshow',' insert',' page layout',' animation','D','','','','','','','');
INSERT INTO `soal` VALUES ('32','1','32',' page border pada office word adalah','1',' untuk menebalkan huruf',' untuk membuat bingkai',' untuk membuat surat berantai',' untuk membuat gambar kotak',' untuk menyisipkan clip art','B','','','','','','','');
INSERT INTO `soal` VALUES ('33','1','33',' atachment pada pengirim email adalah','1',' email sampah',' email spam',' email virus',' lampilan file',' tembusan email','D','','','','','','','');
INSERT INTO `soal` VALUES ('34','1','34',' tata krama dalam komunikasi asyncrounus, kecuali','1',' berbicara seenaknya sendiri tanpa memandang lawan bicara',' tidak menggunakan bahasa alay dan sulit dimengerti',' menggunakan bahasa yang sopan dan santun',' menggunakan bahasa sesuai yang diajak berkomunikasi',' tidak menggunakan huruf kapital semua','A','','','','','','','');
INSERT INTO `soal` VALUES ('35','1','35',' fasilitas milik google untuk mengupload dan mempublikasikan video adalah','1',' video share',' vidio dot com',' youtube',' google drive',' google adword','C','','','','','','','');
INSERT INTO `soal` VALUES ('36','1','36',' google drive adalah layanan google untuk','1',' mengekspresikan ide dan pikiran kita ke internet',' untuk mendapatkan uang dari internet',' untuk mengupload file secara online',' untuk memasang iklan gratis di internet',' untuk mengirim email','C','','','','','','','');
INSERT INTO `soal` VALUES ('37','1','37',' contoh email untuk kepentingan bisnis yang terbaik','1',' 3kaLOVER@gmail.com',' 1nd4GHimoet@gmail.com',' tar1man.JOOOSSSS@gmail.com',' dava4ev3r@gmail.com',' bagus.advertising@gmail.com','E','','','','','','','');
INSERT INTO `soal` VALUES ('38','1','38',' untuk menulis email kepada orang lain, caranya klik','1',' sent',' draft',' compose',' write',' register','C','','','','','','','');
INSERT INTO `soal` VALUES ('39','1','39',' untuk login ke akun google, caranya dengan memasukan','1',' email dan password',' username dan password',' email dan username',' nomor hp dan password',' nama dan nomor hp','A','','','','','','','');
INSERT INTO `soal` VALUES ('40','1','40',' contoh email yang benar adalah','1',' indah#bingit@gmail.com',' arif:*hidayat@gmail.com',' syerli^koe@gmail.com',' alwan.2016@gmail.com',' arif@ramadanti@gmail.com','D','','','','','','','');

/*---------------------------------------------------------------
  TABLE: `token`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id_token` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(6) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `masa_berlaku` time NOT NULL,
  PRIMARY KEY (`id_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
INSERT INTO `token` VALUES   ('1','EHDDEO','2018-12-30 15:55:06','00:15:00');

/*---------------------------------------------------------------
  TABLE: `ujian`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `ujian`;
CREATE TABLE `ujian` (
  `id_ujian` int(5) NOT NULL AUTO_INCREMENT,
  `id_pk` varchar(10) NOT NULL,
  `id_guru` int(5) NOT NULL,
  `id_mapel` int(5) NOT NULL,
  `nama` varchar(30) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  `jml_soal` int(5) NOT NULL,
  `jml_esai` int(5) NOT NULL,
  `bobot_pg` int(5) NOT NULL,
  `bobot_esai` int(5) NOT NULL,
  `tampil_pg` int(5) NOT NULL,
  `tampil_esai` int(5) NOT NULL,
  `lama_ujian` int(5) NOT NULL,
  `tgl_ujian` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `waktu_ujian` time NOT NULL,
  `selesai_ujian` time NOT NULL,
  `level` varchar(5) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `sesi` varchar(1) NOT NULL,
  `acak` int(1) NOT NULL,
  `token` int(1) NOT NULL,
  `status` int(3) NOT NULL,
  `hasil` int(2) NOT NULL,
  `proktor` varchar(30) NOT NULL,
  `pengawas` varchar(30) NOT NULL,
  `nip_pengawas` varchar(30) NOT NULL,
  `catatan` text NOT NULL,
  PRIMARY KEY (`id_ujian`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
INSERT INTO `ujian` VALUES   ('1','semua','51','1','?????????','40','0','100','0','40','0','90','2019-03-19 01:00:00','2019-03-21 05:00:00','01:00:00','00:00:00','XII','a:1:{i:0;s:5:\"semua\";}','1','1','0','1','0','','','','');
