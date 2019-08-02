<?php
	
	echo "
        <div class='row'>
            <div class='col-md-12'>
            
            <div class='box box-primary'>
                <div class='box-header with-border bg-blue'>
                    <h3 class='box-title'>Status Download</h3>
                    <div class='box-tools btn-group'>
						<a href='?pg=sycn&ac=startsycn' class='btn btn-sm btn-danger'><i class='fa fa-download'> Start Sycn </i></a>
                    </div>
                </div><!-- /.box-header -->
                
                <div class='box-body'>
                    <ul class='list-group'>
                        <li class='list-group-item'>DATA 1</li>
                        <li class='list-group-item'>
                        	<div id='progress_siswa' style='width:100%; border:1px solid #ccc; padding:5px; margin-top:10px; height:33px'></div>
                        	<div id='information_siswa' style='width:25%;'></div></li>
                    </ul>
                    
                    <ul class='list-group'>
                        <li class='list-group-item'>DATA 2</li>
                        <li class='list-group-item'>
                        	<div id='progress_rombel' style='width:100%; border:1px solid #ccc; padding:5px; margin-top:10px; height:33px'></div>
                        	<div id='information_rombel' style='width:25%;'></div></li>
                    </ul>
                    
                    <ul class='list-group'>
                        <li class='list-group-item'>DATA 3</li>
                        <li class='list-group-item'>
                        	<div id='progress_ujian' style='width:100%; border:1px solid #ccc; padding:5px; margin-top:10px; height:33px'></div>
                        	<div id='information_ujian' style='width:25%;'></div></li>
                    </ul>
                    
                    <ul class='list-group'>
                        <li class='list-group-item'>DATA 4</li>
                        <li class='list-group-item'>
                        	<div id='progress_soal' style='width:100%; border:1px solid #ccc; padding:5px; margin-top:10px; height:33px'></div>
                        	<div id='information_soal' style='width:25%;'></div></li>
                    </ul>
                </div>
            </div>
        </div>
		";
	
	if ($ac == 'startsycn') {
		
		$servername = 'prodb.crzd7fqdmi4z.ap-southeast-1.rds.amazonaws.com';
		$username = 'admin';
		$password = 'hjve6uly';
		$dbname = 'pesantren_cyber';

// Create connection
		$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
		if ($conn->connect_error) {
			die("Connection failed: " . $conn->connect_error);
		}
		
		/// SYCN DATA SISWA
		$sqlDataSiswa = "SELECT master_rombel.id as 'id_rombel', master_santri.id AS 'id_santri',master_santri.nama,master_sekolah.sekolah,kelas,rombel,foto,induk,PASSWORD FROM master_rombel_siswa LEFT JOIN master_santri ON master_rombel_siswa.id_santri=master_santri.id LEFT JOIN master_rombel ON master_rombel.id=master_rombel_siswa.id_rombel LEFT JOIN master_kelas ON master_kelas.id=master_rombel.id_kelas LEFT JOIN master_sekolah ON master_sekolah.id=master_kelas.id_sekolah WHERE master_rombel.tahun_ajaran=4 AND master_kelas.tingkat=12";
		
		$resultDataSiswa = $conn->query($sqlDataSiswa);
		$i = 1;
		$baris = $resultDataSiswa->num_rows;
		if ($resultDataSiswa->num_rows > 0) {
			mysql_query('TRUNCATE TABLE siswa');
			// output data of each row
			while ($row = $resultDataSiswa->fetch_assoc()) {
				mysql_query("INSERT INTO siswa (nis,id_siswa,id_kelas,idpk,no_peserta,nama,level,ruang,sesi,username,password,foto)
								values ('$row[induk]','$row[id_santri]','$row[id_rombel]','$row[rombel]','$row[induk]','$row[nama]','$row[kelas]','lab_ma','1','$row[induk]','$row[PASSWORD]','$row[foto]')");
				/*$foto = "https://res.cloudinary.com/dqq8siyfu/image/upload/w_200,q_auto:good/fotosantriaws/" . $row["id_santri"] . "/" . $row["foto"];
				if (getimagesize($foto)) {
					copy($foto, "../foto/fotosiswa/" . $row['foto']);
				}*/
				
				$percent = intval($i / $baris * 100) . "%";
				// Javascript for updating the progress bar and information
				echo '<script language="javascript">
				document.getElementById("progress_siswa").innerHTML="<div style=\"width:' . $percent . ';background-image:url(https://www.csuohio.edu/sites/default/files/media/international/images/pbar-ani.gif);\">&nbsp;</div>";
				document.getElementById("information_siswa").innerHTML="  Download Berkas  <b>' . $i . '</b> row(s) of <b>' . $baris . '</b> ... ' . $percent . '  Completed.";
				</script>';
				// This is for the buffer achieve the minimum size in order to flush data
				echo str_repeat(' ', 1024 * 64);
				// Send output to browser immediately
				flush();
				// Tell user that the process is completed
				$i++;
				
			}
			
		} else {
			echo "0 results";
		}
		
		/// SYCN DATA KELAS
		$sqlDataRombel = "SELECT kelas,rombel, master_rombel.id as 'id_rombel' FROM master_rombel LEFT JOIN master_kelas ON master_kelas.id=master_rombel.id_kelas LEFT JOIN master_ajaran ON master_ajaran.id=master_rombel.tahun_ajaran WHERE master_ajaran.`status`='Y' AND tingkat=12";
		
		$resultDataRombel = $conn->query($sqlDataRombel);
		$i = 1;
		$baris = $resultDataRombel->num_rows;
		if ($resultDataRombel->num_rows > 0) {
			mysql_query('TRUNCATE TABLE kelas');
			// output data of each row
			while ($row = $resultDataRombel->fetch_assoc()) {
				mysql_query("INSERT INTO kelas (id_kelas,level,nama)
								values ('$row[id_rombel]','$row[kelas]','$row[kelas]$row[rombel]')");
				
				$percent = intval($i / $baris * 100) . "%";
				// Javascript for updating the progress bar and information
				echo '<script language="javascript">
				document.getElementById("progress_rombel").innerHTML="<div style=\"width:' . $percent . ';background-image:url(https://www.csuohio.edu/sites/default/files/media/international/images/pbar-ani.gif);\">&nbsp;</div>";
				document.getElementById("information_rombel").innerHTML="  Download Berkas  <b>' . $i . '</b> row(s) of <b>' . $baris . '</b> ... ' . $percent . '  Completed.";
				</script>';
				// This is for the buffer achieve the minimum size in order to flush data
				echo str_repeat(' ', 1024 * 64);
				// Send output to browser immediately
				flush();
				// Tell user that the process is completed
				$i++;
				
			}
			
		} else {
			echo "0 results";
		}
		
		
		$conn->close();
		
	}
	
	