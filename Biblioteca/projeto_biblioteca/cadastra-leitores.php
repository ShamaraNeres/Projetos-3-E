<?php
// Inclui o arquivo de configuração (conexão com banco de dados)
include "config.php";
// Verifica se a conexão com o banco de dados
if (!$conn){
    // Se a conexão  falhar exibe uma mensagem de erro e encerra a execução
    die("Falha na conexão: " . mysqli_connect_error());
}

//recebe os dados do formulário
$nome = 'Shamara';
$dtnasc = '2007-05-21';
$celular = '(81)98325-25027';
$email = 'shamara@gmail.com';
$ra = '111111';
$endereco = 'Rua  das Flores, 123';
$num_end = '65';
$bairro = 'Paratibe';
$cidade = 'Paulista/PE';

//cria variável para inserir o registro
$sql = "INSERT INTO `leitores`
(`Nome`, `DtNasc`, `Celular`, `Email`, `RA`, `Endereco`, `NumEnd`, `Bairro`, `CidadeUF`) VALUES 
('$nome','$dtnasc','$celular','$email','$ra','$endereco','$num_end','$bairro','$cidade')";

// Executa a conselta SQL. Se falhar, exibe o erro do banco de dados
$query = mysqli_query(mysql: $conn,query: $sql) or
die(mysqli_error(mysql: $db));

if($query){
    echo "<center>";
    echo "Cadastro realizado com sucesso!!<br>";
    echo "<a href='index.php'><button title='Home page'>Voltar</button></a>";
    echo "</center>";
} else {
    echo "<center>";
    echo "Erro ao cadastrar!!<br>";
    echo "<a hrefttle='index.php'><button tittle='Home page'>Voltar</button></a>";
    echo "</center>";
}
?>