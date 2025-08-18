<?php 
require_once("conexao.php");
$query = $pdo->query("SELECT * from usuarios where nivel = 'Administrador'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$linhas = @count($res);
$senha = '123';
$senha_crip = password_hash($senha, PASSWORD_DEFAULT);
if($linhas == 0){
	$pdo->query("INSERT INTO usuarios SET nome = '$nome_sistema', email = '$email_sistema', senha = '', senha_crip = '$senha_crip', nivel = 'Administrador', ativo = 'Sim', foto = 'sem-foto.jpg', telefone = '$telefone_sistema', data = curDate() ");
}

$data_atual = date('Y-m-d');
//percorrer as contas para gerar as cobranças

 ?>
 <!DOCTYPE html>
<html>
<head>
	<title><?php echo $nome_sistema ?></title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" type="image/x-icon" href="img/icone.png">

</head>
<body>
	<div class="login">		
		<div class="form">
			<img src="img/logo.png" class="imagem">
			<form method="post" action="autenticar.php">
				<input type="text" name="usuario" id="usuario" placeholder="Seu Email ou Telefone" required>
				<input type="password" name="senha" placeholder="Senha" required>
				<button>Login</button>
				<p><small><a href="#" onclick="recuperar()" title="Preencha o seu email para receber a recuperação">Recuperar Senha?</a></small></p>
			</form>	
		</div>
	</div>
</body>
</html>


<script src="painel/js/jquery-1.11.1.min.js"></script>
	<!-- Mascaras JS -->
<script type="text/javascript" src="painel/js/mascaras.js"></script>

<!-- Ajax para funcionar Mascaras JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script> 



<script type="text/javascript">
	function recuperar(){
		var email = $('#usuario').val();
		if(email == ""){
			alert("Digite um Email!");
			return;
		}

		$.ajax({
	        url: 'recuperar.php',
	        method: 'POST',
	        data: {email},
	        dataType: "html",

	        success:function(result){
	            if(result == 'Recuperado'){
	            	alert('Confira sua senha no email!')
	            }else{
	            	alert(result)
	            }
	            
	        }
    	});
	}
</script>