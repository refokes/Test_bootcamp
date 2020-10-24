<?php
include "koneksi.php";

$id = $_GET['id'];

$query = "SELECT * FROM book_tb WHERE id='".$id."'";
$sql = mysqli_query($connect, $query);
$data = mysqli_fetch_array($sql);


if(is_file("images/".$data['img']))
	unlink("images/".$data['img']);

$query2 = "DELETE FROM book_tb WHERE id='".$id."'";
$sql2 = mysqli_query($connect, $query2);

if($sql2){
	header("location: index.php");
}else{
	echo "Data gagal dihapus. <a href='index.php'>Kembali</a>";
}
?>
