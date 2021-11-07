<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<link rel="shortcut icon" href="favicon.ico"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>SysOn Sistemas</title>

<style type="text/css">
html {
	background-image: url("fundo.jpg");
	background-repeat: inherit;
	background-position: center;	      
	background-size: cover;	
	weight: 100%;
	height: 100%;
	
}	

/*body{background:url(imagens/bg_topo.jpg) repeat-x top; background-color:#f3f1f1; }*/

#topo{text-align:center; font-family:Verdana, Geneva, sans-serif; font-size:14px; font-weight:bold; color:#666;}

#login{width:300px; margin:200px auto; font:bold 20px Tahoma, Geneva, sans-serif;font-style:normal; color:#FFF; /*background:url(imagens/login_bg.gif) no-repeat left center;*/ border:5px solid #ffffff; background-color:#FF0000;

text-shadow:0px -1px 1px #222222;box-shadow:2px 2px 5px #000000;-moz-box-shadow:2px 2px 5px #000000;-webkit-box-shadow:2px 2px 5px #000000;

border-radius:15px 15px 15px 15px;-moz-border-radius:10px 10px 10px 10px;-webkit-border-radius:10px 10px 10px 10px;

width:250px; padding:10px 43px 30px 70px;}

form{padding:30px;}

label input[type=text],input[type=password]{display:block; margin:5px 0; padding:5px; border:1px solid #999; border-radius:15px;-moz-border-radius:5px;-webkit-border-radius:5px;}

input[type=submit]{

	color:#FFF; font-size:19px;

	padding:5px 10px;

	margin-bottom:22px;

	margin-left:0px;

	float:left; 

	border-color:#cfcdcd #c0bebe #c0bebe #cfcdcd;

	border-style:solid;

	border-width:1px;

	box-shadow:1px 1px 1px #033;

	border-radius:3px;

	-moz-border-radius:3px;

	-webkit-border-radius:3px;

	cursor:pointer;

	

background: #299a0b; /* Old browsers */

background: -moz-linear-gradient(top,  #299a0b 0%, #299a0b 100%); /* FF3.6+ */

background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#299a0b), color-stop(100%,#299a0b)); /* Chrome,Safari4+ */

background: -webkit-linear-gradient(top,  #299a0b 0%,#299a0b 100%); /* Chrome10+,Safari5.1+ */

background: -o-linear-gradient(top,  #299a0b 0%,#299a0b 100%); /* Opera 11.10+ */

background: -ms-linear-gradient(top,  #299a0b 0%,#299a0b 100%); /* IE10+ */

background: linear-gradient(to bottom,  #299a0b 0%,#299a0b 100%); /* W3C */

filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#299a0b', endColorstr='#299a0b',GradientType=0 ); /* IE6-9 */



}

#erro{font-family:Verdana, Geneva, sans-serif; font-size:14px; font-weight:bold; color:#F00; text-align:center;}

</style>

</head>

<body>

<!--div id="topo"><img src="imagens/logar.png" width="200" height="120"  border="0" title="Logomarca"/><br/></div>-->



<div id="login">

<div id="erro">

<?php 

#$erro = $_POST['login_errado'];
$erro = isset($_POST['login_errado']) ? $_POST['login_errado'] : '' ;

#$logar = $_POST['logar'];
$logar = isset($_POST['logar']) ? $_POST['logar'] : '';

		if($erro == "erro"){

		echo "Login ou Senha não conferem.";

		}		

		elseif($logar == "errar"){

		echo "Você tem permissão para acessar somente com aparelho mobile.";

		}

?>

</div>

<form action="login.php" method="POST" style="font-size: 22px; margin:5px -60px ">

	  Usuário:<br/>

    <label>

  <input type="text" name="login" style="font-size: 22px;" />

  </label>

 	  <br/> Senha:<br/>

    <label>

  <input type="password" name="senha" style="font-size: 22px;"/>

  </label>

  <input type="submit" name="logar" value="Entrar" style="margin:5px 200px "/>

</form>

</div>



</body>

</html>