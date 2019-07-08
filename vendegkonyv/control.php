<?php
    require_once 'db-connect.php';

    $event = filter_input(INPUT_POST, "event", FILTER_SANITIZE_SPECIAL_CHARS);
    if ($event === "hozzászólás") {
        $nev = filter_input(INPUT_POST, "nev", FILTER_SANITIZE_SPECIAL_CHARS);
        $hozzaszolas = filter_input(INPUT_POST, "hozzaszolas", FILTER_SANITIZE_SPECIAL_CHARS);
        if (strlen(trim($nev)) === 0) {
            $uzenet = "Nevet kötelező megadni!";
        } else
        if (strlen(trim($hozzaszolas)) === 0) {
            $uzenet = "A hozzászólást kötelező megadni!";
        } else {
            $sql = "insert into vendegkonyv (nev, hozzaszolas) values ('$nev', '$hozzaszolas')";
            if (mysqli_query($dbc, $sql)) {
                $id = mysqli_insert_id($dbc);
                $sql = "select datum from vendegkonyv where id = $id";
                $table = mysqli_query($dbc, $sql);
                list($datum) = mysqli_fetch_row($table);
                $uzenet = "Hozzászólás rögzítve!|||";
                $uzenet .= '<div class="card my-2">
                                <div class="card-header bg-secondary text-white">
                                    <div class="row">
                                        <div class="col-6">'.$nev.'</div>
                                        <div class="col-6 text-right">'.$datum.'</div>
                                    </div>
                                </div>
                                <div class="card-body">'.str_replace("&#10;", "<br>", $hozzaszolas).'</div>
                            </div>';
            } else {
                $uzenet = "Hiba a hozzászólás rögzítésekor!";
            }
        }
        echo $uzenet;
    }

?>
