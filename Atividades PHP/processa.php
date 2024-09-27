
<?php
// Verifica se o formulário foi enviado
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Recebe os dados do formulário
    $nome = $_POST['nome'];
    $senha = $_POST['senha'];
    
    // Verifica se os dados correspondem aos valores esperados
    if ($nome === 'Lais' && $senha === '12345') {
        echo "Autenticação realizada com sucesso";
    } else {
        echo "Você não tem permissão de visualizar essa página";
    }
} else {
    // Caso o formulário não tenha sido enviado corretamente
    echo "Dados não recebidos.";
}
?>

    <title>Document</title>