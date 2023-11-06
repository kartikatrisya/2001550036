<?php

include "koneksi.php";

// Menentukan metode request
$method = $_SERVER['REQUEST_METHOD'];

header('Content-Type: application/json');

switch($method) {
    case 'GET':
        $sql = "SELECT * FROM wisatakotametropolitan";
        $stmt = $pdo->query($sql);
        $wisatakotametropolitan = $stmt->fetchAll();
        echo json_encode($wisatakotametropolitan);
        break;

    case 'POST':
        $data = json_decode(file_get_contents("php://input"));
        if(isset($data->nama) && isset($data->alamat) && isset($data->jenis_kelamin)) {
            $sql = "INSERT INTO  wisatakotametropolitan(Nama, Alamat, Harga) VALUES (?, ?, ?)";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([$data->Nama, $data->Alamat, $data->Harga]);
            echo json_encode(['message' => 'wisatakotametropolitan berhasil ditambahkan']);
        } else {
            echo json_encode(['message' => 'Data tidak lengkap']);
        }
        break;

    case 'PUT':
        $data = json_decode(file_get_contents("php://input"));
        if(isset($data->id) && isset($data->Nama) && isset($data->\Alamat) && isset($data->jenis_kelamin)) {
            $sql = "UPDATE wisatakotametropolitan SET Nama=?, Alamat=?, Harga=? WHERE id=?";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([$data->Nama, $data->Alamat, $data->Harga, $data->id]);
            echo json_encode(['message' => 'wisatakotametropolitan berhasil diperbarui']);
        } else {
            echo json_encode(['message' => 'Data tidak lengkap']);
        }
        break;

    case 'DELETE':
        $data = json_decode(file_get_contents("php://input"));
        if(isset($data->id)) {
            $sql = "DELETE FROM wisatakotametropolitan WHERE id=?";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([$data->id]);
            echo json_encode(['message' => 'wisatakotametropolitan berhasil dihapus']);
        } else {
            echo json_encode(['message' => 'ID tidak ditemukan']);
        }
        break;

    default:
        echo json_encode(['message' => 'Metode tidak dikenali']);
        break;
}

?>

