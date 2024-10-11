<?php
$servername = "localhost"; // ou o endereço do seu servidor
$username = "seu_usuario";
$password = "sua_senha";
$dbname = "seu_banco_de_dados";

// Criar conexão
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexão
if ($conn->connect_error) {
    die("Conexão falhou: " . $conn->connect_error);
}
echo "Conectado com sucesso";

$conn->close();
?>

<?php
$servername = "localhost"; // ou o endereço do seu servidor
$username = "seu_usuario";
$password = "sua_senha";
$dbname = "seu_banco_de_dados";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    //


