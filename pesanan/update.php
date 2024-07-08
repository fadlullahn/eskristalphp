<?php
require("../config/koneksi.php");

$response = array();

if($_SERVER['REQUEST_METHOD'] == 'POST'){

    $id = $_POST["id"];
    $id_produk = $_POST["id_produk"];
    $id_user = $_POST["id_user"];
    $alamat = $_POST["alamat"];
    $nohp = $_POST["nohp"];
    $level = $_POST["level"];
    $password = $_POST["password"];
    $proses = $_POST["proses"];
    
    $perintah = "UPDATE pesanan SET id_user = '$id_user', id_produk = '$id_produk', alamat = '$alamat', nohp = '$nohp', level = '$level', password = '$password', proses = '$proses' WHERE id = '$id'";
    $eksekusi = mysqli_query($konek, $perintah);
    $cek      = mysqli_affected_rows($konek);

    if($cek > 0){
        $response["kode"] = 1;
        $response["pesan"] = "Data Berhasil Diubah";
    }
    else{
        $response["kode"] = 0;
        $response["pesan"] = "Data Gagal Diubah";
    }
}
else{
    $response["kode"] = 0;
    $response["pesan"] = "Tidak Ada Post Data";
}

echo json_encode($response);
mysqli_close($konek);