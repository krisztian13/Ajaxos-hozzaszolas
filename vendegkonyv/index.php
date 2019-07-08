<?php
    require_once 'db-connect.php';
    
    $sql = "select datum, nev, hozzaszolas from vendegkonyv order by id desc";
    $table = mysqli_query($dbc, $sql);
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Vendégkönyv</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="bootstrap-4/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="container">
            <h1 class="text-center my-4">Vendégkönyv</h1>
            <div id="uzenet"></div>
            <div class="form-group">
                <input class="form-control" type="text" id="nev" name="nev" placeholder="Név" required autofocus>
            </div>
            <div class="form-group">
                <textarea class="form-control" id="hozzaszolas" name="hozzaszolas" placeholder="Hozzászólás" required></textarea>
            </div>
            <div class="form-group text-center">
                <button id="btnKuldes" class="btn btn-success">Küldés</button>
            </div>
<?php
            while (list($datum, $nev, $hozzaszolas) = mysqli_fetch_row($table)) {
?>
                <div class="card my-2">
                    <div class="card-header bg-secondary text-white">
                        <div class="row">
                            <div class="col-6"><?php echo $nev; ?></div>
                            <div class="col-6 text-right"><?php echo $datum; ?></div>
                        </div>
                    </div>
                    <div class="card-body"><?php echo str_replace("&#10;", "<br>", $hozzaszolas); ?></div>
                </div>
<?php
            }
?>
        </div>
        <script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="bootstrap-4/js/popper.min.js" type="text/javascript"></script>
        <script src="bootstrap-4/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/ajax.js" type="text/javascript"></script>
    </body>
</html>
