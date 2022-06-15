<?php
include("include/_connexion.php");
    /* login = login, mdp = mdp */

	$login = "";
	$mdp = "";

	if(isset($_POST['validelogin'])) {
		if(isset($_POST['login']))
			$login = $_POST['login'];
		if(isset($_POST['mdp']))
			$mdp = $_POST['mdp'];
	}
	if(isset($_POST['Deco'])){
		unset($_SESSION['login']);
	}
	else {
	    if(isset($_SESSION['login']))
		  $checklogin = $_SESSION['login'];
	    else
		  $checklogin = false;

			if(isset($_POST['validelogin'])){

        
				$user = $bdd->query("SELECT * FROM utilisateur WHERE idLogin = '$login'");
				$user = $user->fetch();

				if (!$user)
				{
					echo "L'utilisateur et/ou le mot de passe est incorrecte";
				}
				else
				{
					if (!password_verify($mdp, $user["mdp"])) {
						echo "L'utilisateur / mot de passe est incorrecte";
					}
					else {
						echo "Bonjour utilisateur $login<BR/>\n";
						$checklogin=true;
						$_SESSION['login'] = true;
					}
				}
			}
        if(!$checklogin) {
?>
		<section id="formConnect">
			<p>Entrez login et mot de passe</p>
			<form method='post' action='<?php echo $_SERVER['PHP_SELF'];?>'>
				<p><span class="label">identifiant : </span><input type="text" name='login'/></p>
				<p><span class="label">mot de passe : </span><input type="password" name='mdp'/></p>
				<input type='submit' name='validelogin' value='Soumettre'>
			</form>
			<a href="../index.php">Retour au portfolio</a>
		</section>
</body>
</html>
<?php
	exit(0);
	}
}
?>
