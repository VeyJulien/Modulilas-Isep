<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <title>Module - Envoyer</title>
    <link rel="stylesheet" href="style.css">
    <script src="script.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js" integrity="sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
    <link rel="icon" href="icon_website.gif" type="image/gif" sizes="16x16">
    
</head>
<body>
    <div class="background">
        
        <div id="overlay" onclick="off()">
            <div>
                <i class="fas fa-times cross_overlay"></i>
                <div class="overlay_text">�tes-vous s�re de vouloir<br>vous d�connecter ?</div>
                <div class="overlay_under_text">Tous les changements non enregistr�s seront perdus.</div>
                <div style="display:flex;" class="button_overlay"><a class="button_1">Rester</a><a href="index.html" class="button_1">Quitter</a></div>
            </div>
        </div>
        
        <div class="main_block">
            <p class="title_project title_page">Module Creator</p>
            <div class="page" style="overflow-y: overlay; overflow-x: hidden; padding-left: 5px;">
                <div class="input_module_container" style="margin-left:2px; height: 90%;">
                    <div>R�diger une notification</div>
                    
                    <div style="display:flex;">
                        <form method="get" action="menu.html">
                            <button type="submit" class="edit_button" style="margin-left:0px;"><i class="far fa-paper-plane"></i> Envoyer</button>
                        </form>

                        <form method="get" action="menu.html">
                            <button class="edit_button"><i class="fas fa-undo"></i> Retour � la page d'accueil</button>
                        </form>
                        <form>
                            <button id="lines_button" type="button" onclick="hide_lines()" class="edit_button"><i class="fas fa-align-justify"></i> Masquer les lignes</button>
                        </form>
                    </div>
                    
                    <div style="display:flex;">
                        <div class="marg_send">1<br>2<br>3<br>4<br>5<br>6</div>
                        <textarea rows="6" id="textarea_lines" onkeydown="return limitLines(this, event)" class="send_textarea" autofocus></textarea>
                    </div>
                </div>
                
            </div>
        
        <div class="lateral_menu">
            <div class="menu_title">Menu</div>
            <div class="statut_bullet">Administrateur</div>
            
            <ul class="button_list">
                <a href="menu.html" class="link_button"><li class="button_menu menu_select">Ma Page</li><span class="bullet_notif">1</span></a>
                <a href="create_module.html" class="link_button"><li class="button_menu">Cr�er un module</li></a>
                <a href="find.html" class="link_button"><li class="button_menu">Chercher un module</li></a>
                <a href="create_template.html" class="link_button"><li class="button_menu">G�rer les champs</li></a>
                <a href="modify_template.html" class="link_button"><li class="button_menu">Templates</li></a>
                <a type="button" onclick="on()" class="link_button"><li class="button_menu" style="border-bottom:1px solid rgba(255,255,255,0.1);">D�connexion</li></a>
            </ul>
            
            <div class="info_menu">
                <p>Session : Test<br>
                Version : 1.0.0 �</p>
            </div>
        </div>
        
        </div>
    </div>
</body>
</html>

<script>
function on() {
    document.getElementById("overlay").style.display = "block";
    document.getElementsByClassName("main_block")[0].style.filter = "blur(7px)";
}

function off() {
    document.getElementById("overlay").style.display = "none";
    document.getElementsByClassName("main_block")[0].style.filter = "blur(0px)";
}
</script>

<script>

function hide_lines()
    {
        if (document.getElementById("textarea_lines").style.background != "white")
        {
        document.getElementById("textarea_lines").style.background = "white";
        document.getElementById("lines_button").innerHTML = "<i class=\"fas fa-align-justify\"></i> Afficher les lignes";
        }
        else
        {
            document.getElementById("textarea_lines").style.background = "linear-gradient(transparent, transparent 40px, #ededed 0px)";
            document.getElementById("textarea_lines").style.backgroundSize = "30px 41px";
            document.getElementById("textarea_lines").style.backgroundAttachment = "scroll";
            document.getElementById("lines_button").innerHTML = "<i class=\"fas fa-align-justify\"></i> Masquer les lignes";
        }
    }

</script>