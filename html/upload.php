<?php
session_start();

$sardoche = $_SESSION['user'];

$usage = shell_exec("sudo du -sh -s /home/".$sardoche."/files");

$usage = trim($usage); // supprime les espaces en début et fin de chaîne
$usage = preg_replace('/\s+/', ' ', $usage); // remplace les espaces multiples par un seul espace
$usage = explode(' ', $usage)[0]; // récupère la première partie de la chaîne (la taille)

?>
<!DOCTYPE html>
<html>
<head>
	<title>Téléchargement de fichiers</title>
</head>
<body>
	<h1>Téléchargement de fichiers</h1>
	<h2>Vous utilisez <?php echo $usage?> de mémoire disque</h2>
	<form  method="post" enctype="multipart/form-data">
		<label for="file">Sélectionnez un fichier à télécharger :</label>
		<input type="file" name="monfichier" id="file"><br><br>
		<input type="submit" name="submit" value="Télécharger">
	</form>
</body>
</html> 
<?php 
 var_dump($sardoche);
shell_exec("sudo chown -R www-data:www-data /home/".$sardoche."/files && sudo chmod -R 755 /home/".$sardoche."/files");

if ($_FILES['monfichier']['error'] === UPLOAD_ERR_OK) {
    $tmp_name = $_FILES['monfichier']['tmp_name'];
    $name = basename($_FILES['monfichier']['name']);
    $destination = '/home/'.$sardoche.'/files/' . $name;
    if (move_uploaded_file($tmp_name, $destination)) {
        echo "Le fichier a été téléchargé avec succès.";


    } else {
        echo "Une erreur est survenue lors du téléchargement du fichier.";
        
    }
} else {
    echo "Une erreur est survenue lors du téléchargement du fichier.";
}








?>
