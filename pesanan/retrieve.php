<?php
require("../config/koneksi.php");
$perintah = "SELECT * FROM pesanan";
$eksekusi = mysqli_query($konek, $perintah);
$cek = mysqli_affected_rows($konek);

if($cek > 0){
    $response["kode"] = 1;
    $response["pesan"] = "Data Tersedia";
    $response["data"] = array();

    while($ambil = mysqli_fetch_object($eksekusi)){
        $F["id"] = $ambil->id;
        $F["id_produk"] = $ambil->id_produk;
        $F["id_user"] = $ambil->id_user;
        $F["alamat"] = $ambil->alamat;
        $F["nohp"] = $ambil->nohp;
        $F["level"] = $ambil->level;
        $F["password"] = $ambil->password;
        $F["proses"] = $ambil->proses;
        
        array_push($response["data"], $F);
    }
    
}
else{
    $response["kode"] = 0;
    $response["pesan"] = "Data Tidak Tersedia";
}

echo json_encode($response);
mysqli_close($konek);