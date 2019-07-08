$(document).ready(function() {
    $("#btnKuldes").on("click", function() {
        var nev = $("#nev").val().trim();
        var hozzaszolas = $("#hozzaszolas").val().trim();
        if (nev.length > 0 && hozzaszolas.length > 0) {
            var ajaxObj = $.ajax({
                type: "post",
                url: "control.php",
                data: {
                    "nev": nev,
                    "hozzaszolas": hozzaszolas,
                    "event": "hozzászólás"
                },
                success: function(valasz) {
                    valasz = valasz.split("|||");
                    $("#uzenet").html('<div class="alert alert-info text-center">'+valasz[0]+'</div>');
                    if (valasz.length === 2) { // van kártya
                        $("#btnKuldes").parent().after(valasz[1]);
                    }
                }
            });
        } else {
            $("#uzenet").html('<div class="alert alert-info text-center">Név, vagy hozzászólás nincs megadva!</div>');
        }
    });
});