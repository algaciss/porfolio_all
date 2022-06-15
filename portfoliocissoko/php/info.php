<?php
if ( (!isset($_GET["lang"])) OR ($_GET["lang"] == "" ) ){
    $lang = "fr";
}
else{
    $lang = $_GET["lang"];
}
?>