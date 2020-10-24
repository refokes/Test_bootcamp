<html>
<head>
	<title></title>
</head>
<body>
	<h1>Tambah Data Buku</h1>
	<form method="post" action="proses_simpan.php" enctype="multipart/form-data">
	<table cellpadding="8">
	<tr>
		<td>id</td>
		<td><input type="text" name="id"></td>
	</tr>
	<tr>
		<td>Judul </td>
		<td><input type="text" name="name"></td>
	</tr>
	<tr>
		<td>Kategori</td>
		<td><input type="number" name="kategori"></td>
	</tr>
	<tr>
		<td>Penulis</td>
		<td><input type="number" name="penulis"></td>
	</tr>
	<tr>
		<td>Tahun Terbit</td>
		<td><input type="number" name="publication_year"></td>
	</tr>
	<tr>
		<td>Foto</td>
		<td><input type="file" name="img"></td>
	</tr>
	</table>

	<hr>
	<input type="submit" value="Simpan">
	<a href="index.php"><input type="button" value="Batal"></a>
	</form>
</body>
</html>
