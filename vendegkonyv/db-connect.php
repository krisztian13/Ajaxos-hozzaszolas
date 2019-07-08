<?php
    // csatlakozás az adatbázishoz
    $dbc = mysqli_connect("localhost", "root", "root", "vendegkonyv");
    // karakterkódolás beállítása
    $sql = "set names utf8";
    mysqli_query($dbc, $sql);
?>