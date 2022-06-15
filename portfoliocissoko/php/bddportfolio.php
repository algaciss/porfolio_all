<?php
    function getPDO() {
        $host = 'localhost';
        $db   = 'portfolio';
        $user = 'root';
        $pass = 'root';
        $charset = 'utf8';
        
        $dsn = "mysql:host=$host;dbname=$db;charset=$charset;port=3306";
        $options = [
            PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
            PDO::ATTR_EMULATE_PREPARES   => false,
        ];
        try {
            return new PDO($dsn, $user, $pass, $options);
        } catch (\PDOException $e) {
            throw new \PDOException($e->getMessage(), (int)$e->getCode());
        }
    }

    function getTables($pdo,$lange) {
        $result = $pdo->query("SELECT * FROM `experiences` WHERE lang = '$lange'")->fetchAll();
        return $result;
    }
    function getTablesmenu($pdo,$lange) {
        $result = $pdo->query("SELECT * FROM `menu` WHERE lang = '$lange'")->fetchAll();
        return $result;
    }
    function getTablesme($pdo,$lange) {
        $result = $pdo->query("SELECT * FROM `moi` WHERE lang = '$lange'")->fetchAll();
        return $result;
    }
    function getTablescv($pdo,$lange) {
        $result = $pdo->query("SELECT * FROM `addcv` WHERE lang = '$lange'")->fetchAll();
        return $result;
    }
    function getTableskil($pdo,$lange) {
        $result = $pdo->query("SELECT * FROM `skill` WHERE langue = '$lange'")->fetchAll();
        return $result;
    }
    function getTablesparcours($pdo,$lange) {
        $result = $pdo->query("SELECT * FROM `titreparcours` WHERE langue = '$lange'")->fetchAll();
        return $result;
    }
    function getTableformation($pdo,$lange) {
        $result = $pdo->query("SELECT * FROM `formations` WHERE langue = '$lange'")->fetchAll();
        return $result;
    }
    function getTablestage($pdo,$lange) {
        $result = $pdo->query("SELECT * FROM `stage` WHERE langue = '$lange'")->fetchAll();
        return $result;
    }
    function getTableexp($pdo,$lange) {
        $result = $pdo->query("SELECT * FROM `experience` WHERE langue = '$lange'")->fetchAll();
        return $result;
    }
    function getTableform($pdo,$lange) {
        $result = $pdo->query("SELECT * FROM `formulaire` WHERE langue = '$lange'")->fetchAll();
        return $result;
    }
    function getTablecitation($pdo,$lange) {
        $result = $pdo->query("SELECT * FROM `citation` WHERE langue = '$lange'")->fetchAll();
        return $result;
    }
    function getTableproject($pdo,$lange) {
        $result = $pdo->query("SELECT * FROM `projetname` WHERE langue = '$lange'")->fetchAll();
        return $result;
    }
    function getTableclique($pdo,$lange) {
        $result = $pdo->query("SELECT * FROM `clique` WHERE langue = '$lange'")->fetchAll();
        return $result;
    }
    
    
    function getTablespropo($pdo,$lange) {
        $result = $pdo->query("SELECT * FROM `propodemoi` WHERE langue = '$lange'")->fetchAll();
        return $result;
    }
    function getMessage($pdo, $name, $email, $message) {
     $pdo->query("INSERT INTO `message`(`email`, `nom`, `message`) VALUES ('$email','$name','$message')");
    }

    function experiences($pdo,$lang) {
        $resultats = $pdo->query("SELECT * FROM `experiences` WHERE `lang` = '$lang'")->fetchAll();
        //$premier = $resultats->fetch();
        
        return $resultats;
    }

?>