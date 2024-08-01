<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        table{
            border-collapse: collapse;
        }
        td{
            border: 1px solid black;
        }
        .green{
            background-color: green;
        }
    </style>
</head>
<body>
    <?php
    echo "<h1>Tabela de cores alternadas</h1>";
    echo "<table>";
    for ($i = 1; $i <= 10; $i++) {
        if ($i%2 == 0) {
            echo "<tr><td class='green'>$i</td></tr>";
        } else {
        echo "<tr><td>$i</td></tr>";
        }
    }
    echo "</table>";
    ?>
</body>
</html>