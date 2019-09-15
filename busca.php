<?php

$con = mysqli_connect("host","user","senha","basedados") or die(mysql_error);

$busca=$_POST["busca"];
$sql = mysqli_query($con,"SELECT 
                            *, group_concat(habilidade ORDER BY habilidade SEPARATOR ', ') habilidades 
                          FROM 
                            pessoa p LEFT JOIN habilidade h on h.id_pessoa = p.id_pessoa
                          WHERE 
                            p.nome LIKE '%$busca%' OR h.habilidade LIKE '%$busca%' group by p.id_pessoa");

$count = mysqli_num_rows($sql);

if ($count == 0) {
    echo "Nenhum resultado!<br>";
} else {

    if ($count == 1) {
        echo "1 resultado encontrado!<br>";
    }
    
    if ($count > 1) {
        echo "$count resultados encontrados!<br>";
    }
    
    while ($dados = mysqli_fetch_array($sql)) {
       
        echo "$dados[nome] - $dados[habilidades] - ";
     echo
    		   '<form method="POST" action="adiciona.php">
    		    <input type="hidden" name="id_pessoa" value="'.$dados['id_pessoa'].'">
                <input type="text" name="habilidade" size="20">
                <input type="submit" value="+" habilidade="ok">
                </form><br>';
               
    }
}


?>