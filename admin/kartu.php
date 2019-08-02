<?php
	require("../config/config.default.php");
	require("../config/config.function.php");
	require("../config/functions.crud.php");
	require("../config/dis.php");
	include "phpqrcode/qrlib.php";
	(isset($_SESSION['id_pengawas'])) ? $id_pengawas = $_SESSION['id_pengawas'] : $id_pengawas = 0;
	($id_pengawas == 0) ? header('location:index.php') : null;
	$id_kelas = @$_GET['id_kelas'];
	
	
	if (date('m') >= 7 AND date('m') <= 12) {
		$ajaran = date('Y') . "/" . (date('Y') + 1);
	} elseif (date('m') >= 1 AND date('m') <= 6) {
		$ajaran = (date('Y') - 1) . "/" . date('Y');
	}
	$kelas = mysql_fetch_array(mysql_query("SELECT * FROM kelas WHERE id_kelas='$id_kelas'"));
	
	echo "
		<style>
			* { font-size:x-small; }
			.box { /*border:1px solid #000; width:100%; height:200px; margin: 10px; */}
		</style>
		
		<table border='0' width='100%' align='center' cellpadding='2' '>
			<tr>";
	$siswaQ = mysql_query("SELECT * FROM siswa WHERE id_kelas='$id_kelas' ORDER BY nama ASC");
	while ($siswa = mysql_fetch_array($siswaQ)) {
		$nopeserta = $siswa['foto'];
		$ruang = mysql_fetch_array(mysql_query("SELECT * FROM ruang WHERE kode_ruang='$siswa[ruang]'"));
		$sesi = mysql_fetch_array(mysql_query("SELECT * FROM sesi WHERE kode_sesi=$siswa[sesi]"));
		$no++;
		
		echo "
						<td width='50%'>
							<div  style='width:9.1cm;border:1px solid #666;'>
								<table border='0' width='100%' align='center' >
									<tr>
										<td align='left' valign='top'>
											<img src='../$setting[logo]' height='40px'/>
										</td>
										<td align='center'>
											<b>$setting[header_kartu]<br/>TP $ajaran</b>
										</td>
										<td align='right' valign='top'>

										</td>
									</tr>
								</table>
								<hr/>
								<table border='0' width='100%' align='center'>
									<tr>
										<td width='100px' align='center' rowspan='7'>";
		if (!$siswa['foto']) {
			echo "<img src='$homeurl/dist/img/avatar_default.png' class='img'  style='max-width:60px' alt='+'>";
		} else {
			echo "<img src='$homeurl/foto/fotosiswa/$siswa[foto]' class='img'  style='max-width:60px' alt='+'>";
		}
		echo "
										</td>";
		$id = $siswa[1];
		$jrsQ = mysql_fetch_array(mysql_query("select * from kelas where id_kelas = '$id'"));
		$jrs = mysql_fetch_array(mysql_query("select * from pk where id_pk = '$jrsQ[1]'"));
		echo "
										<td width='60px' valign='top'>Sekolah</td>
										<td valign='top'>: " . strtoupper($setting['sekolah']) . "</td>
									</tr>
									<tr>
										<td valign='top'>Nama</td>
										<td valign='top'>: $siswa[nama]</td>
									</tr>
									<tr>
										<td valign='top'>Kelas </td>
										<td valign='top'>: $kelas[nama]</td>
									</tr>
									<tr>
										<td valign='top'>Username</td>
										<td valign='top'>: $siswa[username]</td>
									</tr>
									<tr>
										<td valign='top'>Password</td>
										<td valign='top'>: $siswa[password]</td>
									</tr>
								</table>
							</div>";
		if (($no % 10) == 0) {
			echo "<div style='page-break-before:always;'></div>";
		}
		
		echo "
						</td>
					";
		if (($no % 2) == 0) {
			echo "</tr><tr>";
		}
		
	}
	echo "
			</tr>
		</table>
	";