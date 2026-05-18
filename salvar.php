<?php
$conn = new mysqli("localhost", "root", "", "curso_db");

if ($conn->connect_error) {
    die("Erro de conexão: " . $conn->connect_error);
}

$nome = $_POST['nome'];
$email = $_POST['email'];
$telefone = $_POST['telefone'];
$curso = $_POST['curso'];
$nivel = $_POST['nivel'];
$interesses = $_POST['interesses'];
$experiencia = $_POST['experiencia'];
$data_inicio = date('Y-m-d', strtotime($_POST['data_inicio']));
$tempo = $_POST['tempo'];
$objetivo = $_POST['objetivo'];

$sql = "INSERT INTO inscricoes
(nome, email, telefone, curso, nivel, interesses, experiencia, data_inicio, disponibilidade, objetivo)
VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

$stmt = $conn->prepare($sql);
$stmt->bind_param("ssssssisss", $nome, $email, $telefone, $curso, $nivel, $interesses, $experiencia, $data_inicio, $tempo, $objetivo);

if ($stmt->execute()) {
    echo "Sucesso";
} else {
    echo "Erro";
}

$conn->close();
?>
