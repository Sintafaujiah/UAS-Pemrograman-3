<?php
include('koneksi.php');
if(isset($_POST['save'])){
	$query_input_kategory="insert into t_kategory (id_kategory, nama_kategory)
	values('".$_POST['id_kategory']."',
			'".$_POST['nama_kategory']."')";
	$proses_input_kategory=mysqli_query($home,$save);
	if($proses_input_kategory){
		echo 'Input Data Berhasil Gaesss';
	}else{
		echo mysqli_error($home);
	}
}
?>
<body bgcolor="#FF8C00">
	<h2 align="center">UAS PEMROGRAMAN SEMESTER 3 </h2>
	<form method="post" action=""><!--Form untuk dirim data ke DB-->
	<table border="1" align="center"><!--Nama harus sama dengan database-->
		<ul>
			<li><a href="tampil_kategory.php">Tampil Kategory</li></a>
		</ul>
		<tr>
			<td>Id Kategory</td>
			<td><input type="number" name="id_satuan"></td>
		<tr>
			<td>Nama Kategory</td>
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
