<?php
include('koneksi.php');
if(isset($_POST['save'])){
	$query_input_transaksi="insert into t_transaksi (id_barang, nama_barang, kategory_id, satuan_id)
	values('".$_POST['id_transaksi']."',
			'".$_POST['nama_transaksi']."',
			'".$_POST['tgl_transaksi']."',
			'".$_POST['harga']."',
			'".$_POST['qty']."',
			'".$_POST['id_barang']."')";
	$proses_input_transaksi=mysqli_query($home,$save);
	if($proses_input_transaksi){
		echo 'Input Data Berhasil Gaesss';
	}else{
		echo mysqli_error($home);
	}
}
?>
<body bgcolor="#FF1493">
	<h2 align="center">UAS PEMROGRAMAN SEMESTER 3 </h2>
	<form method="post" action=""><!--Form untuk dirim data ke DB-->
	<table border="1" align="center"><!--Nama harus sama dengan database-->
		<ul>
			<li><a href="tampil_transaksi.php">Tampil Transaksi</li></a>
		</ul>
		<tr>
			<td>Id Transaksi</td>
			<td><input type="number" name="id_barang"></td>
		</tr>
		<tr>
			<td>Nama Transaksi</td>
			<td><input type="text" name="nama_barang"></td>
		</tr>
		<tr>
			<td>Tanggal Transaksi</td>
			<td><input type="date" name="kategory_id"></td>
		</tr>
		<tr>
			<td>Harga</td>
			<td><input type="number" name="kategory_id"></td>
		</tr>
		<tr>
			<td>Qty</td>
			<td><input type="number" name="kategory_id"></td>
		</tr>
		<tr>
			<td>Id Barang</td>
			<td><input type="number" name="satuan_id"></td>
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
