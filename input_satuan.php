<?php
include('koneksi.php');
if(isset($_POST['save'])){
	$query_input_satuan="insert into t_satuan (id_satuan, nama_satuan)
	values('".$_POST['id_satuan']."',
			'".$_POST['nama_satuan']."')";
	$proses_input_satuan=mysqli_query($home,$save);
	if($proses_input_satuan){
		echo 'Input Data Berhasil Gaesss';
	}else{
		echo mysqli_error($home);
	}
}
?>
<body bgcolor="#7FFF00">
	<h2 align="center">UAS PEMROGRAMAN SEMESTER 3 </h2>
	<form method="post" action=""><!--Form untuk dirim data ke DB-->
	<table border="1" align="center"><!--Nama harus sama dengan database-->
		<ul>
			<li><a href="tampil_satuan.php">Tampil Satuan</li></a>
		</ul>
		<tr>
			<td>Id Satuan</td>
			<td><input type="number" name="id_satuan"></td>
		<tr>
			<td>Nama Satuan</td>
			<td><input type="text" name="nama_satuan"></td>
		</tr>
		<tr>
			<td><input type="submit" name="save"></td>
		</tr>
		</table>
	</form>
</body>
<ul>
	<li><a href="menu.php">Home Menu Utama</li></a>
</ul>
