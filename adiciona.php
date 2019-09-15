<?php

$id_pessoa = $_POST['id_pessoa'];
$habilidade= $_POST['habilidade'];

$con = mysqli_connect("host","user","senha","basedados") or die(mysql_error);
$sql = "INSERT INTO habilidade (id_pessoa, habilidade) VALUES ('$id_pessoa', '$habilidade')";

mysqli_query($con,$sql) or die("Erro ao tentar cadastrar registro <br>");
mysqli_close($con);
echo "habilidade cadastrada com sucesso! <br>";



?>

<a href="busca.html">Voltar</a> 