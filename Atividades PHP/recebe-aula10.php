<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>


    <h1>Página de Confirmação</h1>
    <p>Recebemos sua inscrição para o concurso. Para garantir que todos os dados estão corretos e completos, solicitamos que revise as informações abaixo e nos informe se estão corretas ou se há necessidade de correção.</p>
    <h2><strong>Dados de confirmação: </strong></h2>  
    <p><strong>Nome completo: </strong> <?php echo $_POST["nome_completo"]; ?> </p>
    <p><strong>Data de nascimento: </strong> <?php echo $_POST["Data_nascimento"]; ?> </p>
    <p><strong>Sexo: </strong> <?php echo $_POST["Sexo"]; ?> </p>
    <p><strong>Estado civil: </strong> <?php echo $_POST["Estado_civil"]; ?> </p>
    <p><strong>Nacionalidade: </strong> <?php echo $_POST["Nacionalidade"]; ?> </p>
    <p><strong>Número do RG: </strong> <?php echo $_POST["Numero_RG"]; ?> </p>
    <p><strong>CPF: </strong> <?php echo $_POST["CPF"]; ?> </p>
    <p><strong>Endereço completo: </strong> <?php echo $_POST["Endereço_completo"]; ?> </p>
    <p><strong>Logradouro: </strong> <?php echo $_POST["Logradouro"]; ?> </p>
    <p><strong>Número de residência: </strong> <?php echo $_POST["Número_residência"]; ?> </p>
    <p><strong>Bairro: </strong> <?php echo $_POST["Bairro"]; ?> </p>
    <p><strong>Cidade: </strong> <?php echo $_POST["Cidade"]; ?> </p>
    <p><strong>Estado: </strong> <?php echo $_POST["Estado"]; ?> </p>
    <p><strong>CEP: </strong> <?php echo $_POST["CEP"]; ?> </p>
    <p><strong>Telefone de contato: </strong> <?php echo $_POST["Telefone_contato"]; ?> </p>
    <p><strong>E-mail:  </strong> <?php echo $_POST["E-mail"]; ?> </p>
    <h4>Agradecemos pela sua cooperação e desejamos boa sorte no concurso.</h4>
    


</body>
</html>