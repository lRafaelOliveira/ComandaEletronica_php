<h1> &nbsp;&nbsp;&nbsp;PEDIDOS PARA ENTREGA</h1> 
<?php 
	if($_GET['fecha'] == "fechar"){
	$id_mesa = $_GET['id_mesa'];
	
		$delete = mysql_query("UPDATE pedido SET situacao ='0', idGarcon = '' WHERE id_mesa = '$id_mesa' ")or die(mysql_error());
		$up = mysql_query("UPDATE entrega SET situacao = '0' WHERE id_mesa = '$id_mesa'")or die(mysql_error());
	}
?>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/jquery.autocomplete.js"></script>

<script type="text/javascript">
  $().ready(function(){
	$("#busca").autocomplete("ajax/busca.php", {
		width: 300,
		matchContains: true,
		selectFirst: false
	});
  });
</script>


<div id="mesas">
<div class="div"><center>
    <form method="post" action=""><br />

      <input size="32" type="text" class="busca" id="busca" name="buscar" value="Localizar pedido" onfocus="if (this.value == 'Localizar pedido') this.value = '';" onblur="if (this.value == '') this.value = 'Localizar pedido';" /> 
      <a href="inicio.php?btn=cadastroclientes">Novo Cliente </a>
	  <h4><font color="#0B0B61">15 ULTIMOS PEDIDOS CADASTRADAS</h4> 
    </form></center>
  </div>

<ul>
	<?php 
		$sql = mysql_query("SELECT * FROM pedido ORDER BY id_mesa DESC LIMIT 15");
		while($ver = mysql_fetch_array($sql)){
			$situacao = $ver['situacao'];
			$id_mesa = $ver['id_mesa'];
			$numero = $ver['nome'];
			$idGarcon = $ver['idGarcon'];
			
			$gar = mysql_query("SELECT * FROM garcon WHERE idGarcon='$idGarcon'");
			$bosta = mysql_fetch_assoc($gar);
			$nomeGarcon = $bosta['nomeGarcon'];
		
			
			if($situacao == 0){
				$img = "<img src='imagens/restaurant_p.png' width='60' height='47' border='0'>";				
			}else{
			$img = "<img src='imagens/restaurant_pverde.png' width='60' height='47' border='0'>";
			}
	?>

	<li><a href="?btn=vendapedido&id_mesa=<?php echo $id_mesa ?>&idGarcon=<?php echo $idGarcon ?>"><?php echo $img; echo "<br/>";  echo ''.$numero;  echo "<br/>"; if($situacao == 1){echo "Garçom: ".$nomeGarcon; }else{echo "ABRIR";} ?></a></li>


<?php }?>
</ul>
</div>