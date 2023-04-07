<?php

function separator($separator, $form){
    //$formKey = array_keys($form);
    if(count(explode($separator, $form[0])) > 1){
	$separator = $separator === ' ' ? 'espace' : $separator;
        die("L\'username ne doit pas comporter de champ $separator");
    }

    if(count(explode($separator, $form[1])) > 1){
        $separator = $separator === ' ' ? 'espace' : $separator;
	die("Le password ne doit pas comporter de champ $separator");
    }
}

if ($_SERVER['REQUEST_METHOD'] === 'POST' && !empty($_POST)) {
    include('db_engine.php');
    $usernameForm = $_POST['username'];
    $passwordForm = $_POST['password'];

    separator('-', [$username, $passwordForm]);
    separator(' ', [$username, $passwordForm]);

try{

    shell_exec("sudo useradd -m -s /bin/bash $usernameForm && echo $usernameForm:$passwordForm | sudo chpasswd");
    shell_exec("sudo mkdir /home/$usernameForm/files && sudo cp -r /etc/skel/ /home/$usernameForm/files");
    shell_exec("sudo chown -R $usernameForm:$usernameForm /home/$usernameForm/files && sudo chmod 700 /home/$usernameForm/files");

    $passwordHash = password_hash($passwordForm, PASSWORD_DEFAULT);

    $pdo = new PDO("$engine:host=$host:$port;dbname=$dbname", $username ,$password);
    $stm = $pdo->prepare('Insert Into users (username, password) VALUES (:username,:password)');
    $stm->execute([
        'username' => $usernameForm,
        'password' => $passwordHash
    ]);
} catch(PDOException $e){
  echo 'Échec lors de la connexion : ' . $e->getMessage();
  exit();
}
}
?>


<!DOCTYPE html>
<html>
<head>
    <title>Formulaire de vérification de nom</title>
</head>
<body>
    <h1>Vérification de nom</h1>
    <form method="POST" >
        <label for="username">Nom d'utilisateur:</label>
        <input type="text" name="username" id="username" />
        <br />
        <label for="password">Mot de passe:</label>
        <input type="password" name="password" id="password" />
        <br />
        <input type="submit" value="Register" />
    </form> 
</body> 
</html>
