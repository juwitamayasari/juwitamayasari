<?php
session_start();
include "../../koneksi.php";
?>
<html>
<link rel="stylesheet" type="text/css" href="../../css.css">
<body>
<center>
<h2><b> Apotek Tambah Loro </b></h2>
</center>

<div class="wrapper">
		<nav>
		<ul>
	<li><a href="../../user.php"> Halaman Utama </a></li>
    <li><a href="../obat/tampil.php"> Obat </a></li>
    <li><a href="../karyawan/tampil.php"> Karyawan</a></li>
    <li><a href="../transaksi/tampil.php"> Transaksi</a></li>
    <li><a href="../../logout.php"> Logout</a></li></aside>
   		</ul>
		</nav>
        
<section class="courses">
<article>
<br>

<a href='export.php'>| Export Data  | </a> 
<a href='proses_print.php'>| Print Data | </a>
<br><br> 

<form method="post" action="cari.php"> 
<select name="pilih"> <option value=""> Cari Berdasarkan </option> 
					<option value="no_pembeli"> No Pembeli </option>
                    <option value="nama_pembeli"> Nama Pembeli </option>
                    </select>
<input type="text" name="pilihan">
<input type="submit" name="submit" value="Cari">
</form>

<center>
<br><b><font size="+2">DATA PEMBELI</font></b> 
<br><br>

<table border="1">
<th> No </th>
<th> No Pembeli </th>
<th> Nama Pembeli </th>
<th> Alamat Pembeli </th>
<th> Umur Pembeli </th>
<th> Nomor Telepon </th>

<?php  // membuat batas data
include "../../koneksi.php";
$batas=5;
$halaman=$_GET['halaman'];
if(empty($halaman)) {
	$posisi=0;
	$halaman=1;
}
else {
$posisi=($halaman-1)*$batas;
}
$tampil="select * from pembeli order by no_pembeli limit $posisi,$batas";
$hasil=mysql_query($tampil);
$no=1+$posisi;
while($row=mysql_fetch_array($hasil)) {
echo"<tr><td>$no</td>";
echo"<td>$row[no_pembeli]</td>";
echo"<td>$row[nama_pembeli]</td>";
echo"<td>$row[alamat_pembeli]</td>";
echo"<td>$row[umur_pembeli]</td>";
echo"<td>$row[tlp_pembeli]</td>";

$no++;
}
echo "</table>";
?>

<?php // membuat halaman
	$tampil2 = "SELECT * FROM pembeli";
	$query = mysql_query($tampil2);
	$jum = mysql_num_rows($query);
	$jmlhal = ceil($jum/$batas);

for ($i=1;$i<=$jmlhal;$i++)
	if ($i != $hal)
	{
		echo"<a href='$_SERVER[PHP_SELF]?halaman=$i'> $i </a> | ";	
	}
	else
	{
		echo"<b> $i </b> | ";	
	}
echo "<br><br> <font color='#000'>TOTAL DATA : <b> $jum </b> DATA </font><br><br>"; // membuat total data
?>
<?php
	echo "<a href='../../user.php'><b><u>Kembali</u></b></a>";  // kembali
	?>
	
</table>
</center>
</article>    
				  
	</section>
    <aside>
    <section class="contact-details">
<h3><font size="+2"><center>Selamat Datang di "Apotek Tambah Loro"</center></font></h3>
	</section>
	<section class="popular-recipes">
<center><img src="../../gambar/login.jpg" width="200" height="200"></center>
	</section>
	</aside>
			
<footer><center>
&copy; 2017 UAS Bahasa Pemrograman 3
</center></footer>
</div><!-- .wrapper -->