<?php
require("../config/koneksi.php");

$response = array();

if($_SERVER['REQUEST_METHOD'] == 'POST'){

    $id_produk = $_POST["id_produk"];
    $id_user = $_POST["id_user"];
    $alamat = $_POST["alamat"];
    $nohp = $_POST["nohp"];
    $level = $_POST["level"];
    $password = $_POST["password"];
    $proses = $_POST["proses"];

    $perintah = "INSERT INTO pesanan ( id_produk, id_user, alamat, nohp, level, password, proses) VALUES('$id_produk','$id_user','$alamat','$nohp','$level','$password','$proses')";
    $eksekusi = mysqli_query($konek, $perintah);
    $cek      = mysqli_affected_rows($konek);

    if($cek > 0){
        $response["kode"] = 1;
        $response["pesan"] = "Simpan Data Berhasil";
    }
    else{
        $response["kode"] = 0;
        $response["pesan"] = "Gagal Menyimpan Data";
    }
}
else{
    $response["kode"] = 0;
    $response["pesan"] = "Tidak Ada Post Data";
}

echo json_encode($response);
mysqli_close($konek);