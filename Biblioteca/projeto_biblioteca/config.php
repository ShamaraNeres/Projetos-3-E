<?php
// Configuração de banco de dados
$db_host = "localhost"; // Hostname do servidor de dados
$db_user = "root"; // Nome de usuário para conectlor ao banco de dados
$db_pass = ""; // Senha para conector ao banco de dados (vazio significa sem senha)
$db_name = "biblioteca"; // Nome do banco de dados a conectar 

// Conectar ao banco de dados
$conn = new mysqli($db_host, $db_user, $db_pass, $db_name);

// Verificar se a conexão foi bem-sucedida 
if ($conn->connect_error){
    // Se houver um erro, exibir a mensagem de erro e encerrar a execução do script
    // a seta -> é usada para acessar propriedades de métodos de objetos em PHP, tornando o código mais legível e fácil de manter
    die("Conexão falhou: {$conn->connect_error}");
}
else {
    echo "PARABÉNS!!! A conexão ao banco de dados ocorre normalmente!";
}