$(document).ready(function () {
    $('#editModal').hide();
    let utilisateurList;

    function getall() {
        $(".utilisateurList").html(" ");
        $.ajax({
            url: "../controller/utilisateur/list.php",
            method: "GET",
            success: function (data) {
                utilisateurList = data.body
                for (const item of utilisateurList) {
                    $(".utilisateurList")
                        .append('<tr>' + '<td>' + item["nom"] + '</td>' + '<td>' + item["prenom"] + '</td>' + '<td>' + item["email"] + '<td>' + item["telephone"] + '</td>'+ "</td><td id='td-input'>" +
                            "<input class='btn btn-warning btn-sm btn-edit stdID' type='button' value='Edit'  data-sid=" + item["id_utilisateur"] + " />" +
                            "<input class='btn btn-danger btn-sm btn-del stdID' type='button' value='Delete'  data-sid=" + item["id_utilisateur"] + " />"
                            + '</td>' + '</tr>');
                }
            }
        })
    }

    getall();
    $('#tbody').on("click", ".btn-edit", function () {
        $('#editModal').show();
        $('#btnsave').hide();
        let index = $(this).parents("tr").index();
        $(" #fname").val(utilisateurList[index]["nom"]);
        $(" #lname").val(utilisateurList[index]["prenom"]);
        $(" #email").val(utilisateurList[index]["email"]);
        $(" #telephone").val(utilisateurList[index]["telephone"]);
        $(" #id_utilisateur").val(utilisateurList[index]["id_utilisateur"]);
        console.log(utilisateurList[index]["id_utilisateur"]);
        $('html, body').animate({
                scrollTop: '0px'
            },
            1500);
    });

    $("#submit").click(function () {
        const fname = $(" #fname").val();
        const lname = $(" #lname").val();
        const email = $(" #email").val();
        const telephone = $(" #telephone").val();
        const id_utilisateur = $(" #id_utilisateur").val();
        if (fname === "") {
            $('#fnameModal').show();
            $("#fmodalbutton").click(function () {
                $('#fnameModal').hide();
            });
        } else if (lname === "") {
            $('#lnameModal').show();
            $("#lmodalbutton").click(function () {
                $('#lnameModal').hide();
            });
        } else if (email === "") {
            $('#cnameModal').show();
            $("#cmodalbutton").click(function () {
                $('#cnameModal').hide();
            });
        }else if (telephone === "") {
            $('#tnameModal').show();
            $("#tmodalbutton").click(function () {
                $('tnameModal').hide();
            });
        }else {
            $.ajax({
                url: "../controller/utilisateur/update.php",
                method: "POST",
                data: {id_utilisateur: id_utilisateur, nom: fname, prenom: lname, email: email,telephone: telephone},
                dataType: "json",
                success: function () {
                    $('form')[0].reset();
                    getall();
                    $('#editModal').hide();
                    $('#btnsave').show();
                }

            })
            console.log(id_utilisateur);
        }
    });

// Close edit Modal
    $("#emodalbutton").click(function () {
        $('#editModal').hide();
        $('#btnsave').show();
        $('form')[0].reset();
    });

// Delete Button
    $("#tbody").on("click", ".btn-del", function () {
        let siD = $(this).attr("data-sid");
        $.ajax({
            url: "../controller/utilisateur/delete.php",
            method: "POST",
            data: {id: siD},
            dataType: "text",
            success: function () {
                $(this).closest("tr").fadeOut();
                getall();
            }

        })

    });

// Add student
    $('#btnsave').click(function () {
        let fn = $('#fname').val();
        let ln = $('#lname').val();
        let email = $('#email').val();
        const telephone = $(" #telephone").val();
        const siD = $(" #id_utilisateur").val();
        if (fn === "") {
            $('#fnameModal').show();
            $("#fmodalbutton").click(function () {
                $('#fnameModal').hide();
            });
        } else if (ln === "") {
            $('#lnameModal').show();
            $("#lmodalbutton").click(function () {
                $('#lnameModal').hide();
            });
        } else if (email === "") {
            $('#cnameModal').show();
            $("#cmodalbutton").click(function () {
                $('#cnameModal').hide();
            });
        } else {
            let data = {id_utilisateur: siD, nom: fn, prenom: ln, email: email,telephone:telephone};
            $.ajax({
                url: "../controller/utilisateur/create.php",
                method: "POST",
                data: data,
                dataType: "text",
                success: function () {
                    $('form')[0].reset();
                    getall();
                }
            });
        }
    });
});