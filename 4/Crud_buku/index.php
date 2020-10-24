<html>
<head>
	<title>Latihan 4</title>
</head>
<body>
	<h1>Data Buku</h1>
	<a href="form_simpan.php">Tambah Data</a><br><br>
	<table border="1" width="100%">
	<tr>
		<th>Foto</th>
		<th>Id</th>
		<th>Nama</th>
		<th>Kategori</th>
		<th>Penulis</th>
		<th>Tanggal Terbit</th>
		<th colspan="2">Aksi</th>
	</tr>
	<?php
	include "koneksi.php";

	$query = "SELECT `book_tb`.`img`,`book_tb`.`id`,`book_tb`.`name`,`category_tb`.`name`AS kategori,`writer_tb`.`name` AS penulis,`book_tb`.`publication_year`
	FROM book_tb,`category_tb`,`writer_tb`
	WHERE `book_tb`.`writer_id`=`writer_tb`.`id` AND `book_tb`.`category_id`=`category_tb`.`id`";
	$sql = mysqli_query($connect, $query);

	while($data = mysqli_fetch_array($sql)){
		echo "<tr>";
		echo "<td><img src='images/".$data['img']."' width='100' height='100'></td>";
		echo "<td>".$data['id']."</td>";
		echo "<td>".$data['name']."</td>";
		echo "<td>".$data['kategori']."</td>";
		echo "<td>".$data['penulis']."</td>";
		echo "<td>".$data['publication_year']."</td>";
		echo "<td>Ubah</td>";
		echo "<td><a href='proses_hapus.php?id=".$data['id']."'>Hapus</a></td>";
		echo "</tr>";
	}
	?>
	</table>
</body>
</html>
