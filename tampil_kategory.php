<?php
include('koneksi.php');
$tampil_kategory = mysqli_query($home,'select * from t_kategory');
?>
<body bgcolor="#CD853F">
	<h2 align="center">UAS PEMROGRAMAN SEMESTER 3 </h2>
	<form method="post" action=""><!--Form untuk dirim data ke DB-->
	<table border="1" align="center"><!--Nama harus sama dengan database-->
		<ul>
			<li><a href="input_kategory.php">Input Kategory</li></a>
		</ul>
	<tr>
		<td>Id Kategory</td>
		<td>Nama Kategory</td>
	</tr>
<?php while($data = mysqli_fetch_array($tampil_kategory)) { ?>
	<tr>
		<td><?php echo $data['id_kategory']; ?></td>
		<td><?php echo $data['nama_kategory']; ?></td>
	</tr>
<?php } ?>
		</table>
	</form>
</body>
<ul>
	<li><a href="menu.php">Home Menu Utama</li></a>
</ul>