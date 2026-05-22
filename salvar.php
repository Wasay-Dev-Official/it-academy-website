<?php

// =========================
// DATABASE CONNECTION
// =========================
$conn = new mysqli("localhost", "root", "", "curso_db");

// Check connection
if ($conn->connect_error) {
    die("Erro de conexão: " . $conn->connect_error);
}

// =========================
// GET FORM DATA (POST)
// =========================
$nome = $_POST['nome'];
$email = $_POST['email'];
$telefone = $_POST['telefone'];
$curso = $_POST['curso'];
$nivel = $_POST['nivel'];
$interesses = $_POST['interesses'];
$experiencia = $_POST['experiencia'];

// Convert date format to MySQL format (YYYY-MM-DD)
$data_inicio = date('Y-m-d', strtotime($_POST['data_inicio']));

$tempo = $_POST['tempo'];
$objetivo = $_POST['objetivo'];

// =========================
// SQL INSERT QUERY
// Using prepared statements for security
// =========================
$sql = "INSERT INTO inscricoes
(nome, email, telefone, curso, nivel, interesses, experiencia, data_inicio, disponibilidade, objetivo)
VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

$stmt = $conn->prepare($sql);

// Bind parameters to SQL query
$stmt->bind_param(
    "ssssssssss",
    $nome,
    $email,
    $telefone,
    $curso,
    $nivel,
    $interesses,
    $experiencia,
    $data_inicio,
    $tempo,
    $objetivo
);

// =========================
// EXECUTE QUERY
// =========================
if ($stmt->execute()) {
    echo "Sucesso";
} else {
    echo "Erro: " . $stmt->error;
}

// =========================
// CLOSE CONNECTION
// =========================
$stmt->close();
$conn->close();

?>
