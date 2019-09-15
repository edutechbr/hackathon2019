<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<?php 
$nome	= $_POST ["nome"];	
$escola	= $_POST ["escola"];	
$funcao	= $_POST ["funcao"];
$habilidade	= $_POST ["habilidade"];	

$con = mysqli_connect("host","user","senha","basedados") or die(mysqli_error);



$query = "INSERT INTO `habil` ( `nome` , `escola` , `funcao` , `habilidade` , `id` ) 
VALUES ('$nome', '$escola', '$funcao', '$habilidade', '')";

mysqli_query($query,$conexao);

echo "Seu cadastro foi realizado com sucesso!<br>Agradecemos a aten��o.";
?> 
</body>
</html>
