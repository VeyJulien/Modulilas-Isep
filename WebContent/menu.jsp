<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="fr">
<head>
    <meta charset="utf-8">
    <title>Module - Menu</title>
    <link rel="stylesheet" href="style.css">
    
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
                <div class="overlay_text">&#202;tes-vous s&#251;r de vouloir<br>vous d&#233;connecter ?</div>
                <div class="overlay_under_text">Tous les changements non enregistr&#233;s seront perdus.</div>
                <div style="display:flex;" class="button_overlay"><a class="button_1">Rester</a><a href="index.html" class="button_1">Quitter</a></div>
            </div>
        </div>
        
        <div class="main_block">
            <p class="title_project title_page">Module Creator</p>
            <div class="page" style="overflow-y: overlay; overflow-x: hidden; padding-left: 5px;">
                <div class="notif_block">
                    <div style="display:flex;">
                        <span class="title_notif">Notifications (1)</span>
                        <form method="get" action="send_notif.html">
                            <button type="submit" class="edit_button">R&#233;diger un message</button>
                        </form>
                        <form method="get" action="change.html">
                            <button type="submit" class="edit_button">Espace Personnel</button>
                        </form>
                    <span class="bell"><i class="fas fa-bell bell_anim"></i></span>
                    </div>
                    
                    <p style="margin-bottom: 0em;">Bienvenue,<br>
                    Vous avez 1 nouvelle notification.</p>
                </div>
                
                <div class="notifs_container">
                    
                    <div class="notif_block">
                        <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
                        <span>
                            <span class="title_notif">De</span> : 
                            <span style="color:#ff5c6a;">L'&#233;quipe de d&#233;veloppement</span></span><button id="edit_1" type="button" onclick="edit_1()" class="edit_button"><i class="fas fa-pencil-alt"></i> Éditer</button><button type="button" class="edit_button"><i class="far fa-trash-alt"></i> Supprimer</button><br>
                        <span><span class="title_notif">Le</span> : <span style="color:#ff5c6a;">08/07/2018 à 18h32</span></span><br>
                        
                        <p id="message_1" style="margin-bottom: 0em;">Bienvenue !<br>F&#233;licitation, ceci est votre première connection !<br> Nous vous souhaitons une agr&#233;able navigation, si vous rencontrez des difficult&#233;s n'h&#233;sitez pas à nous en faire part.</p>
                        
                        <textarea id="text_area_1" rows="4" class="textarea_module edit_textarea">Bienvenue ! &#13;&#10;F&#233;licitation, ceci est votre première connection !&#13;&#10;Nous vous souhaitons une agr&#233;able navigation, si vous rencontrez des difficult&#233;s n'h&#233;sitez pas à nous en faire part.</textarea>
                    </div>
                
                </div>
            </div>
        
        <div class="lateral_menu">
            <div class="menu_title">Menu</div>
            <div class="statut_bullet">Administrateur</div>
            
            <ul class="button_list">
                <a href="Menu" class="link_button"><li class="button_menu menu_select">Ma Page</li><span class="bullet_notif">1</span></a>
                <a href="Creer_un_module" class="link_button"><li class="button_menu">Cr&#233;er un module</li></a>
                <a href="Chercher_un_module" class="link_button"><li class="button_menu play_element_2_menu">Chercher un module</li></a>
                <a href="Gerer_les_champs" class="link_button"><li class="button_menu play_element_3_menu">G&#233;rer les champs</li></a>
                <a href="Modifier_template" class="link_button"><li class="button_menu">Templates</li></a>
                <a type="button" onclick="on()" class="link_button"><li class="button_menu play_element_4_menu" style="border-bottom:1px solid rgba(255,255,255,0.1);">D&#233;connexion</li></a>
            </ul>
            
            <div class="info_menu">
                <p>Session : Test<br>
                Version : 1.0.0 &#169;</p>
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

var is_editing = false;
    
var close = document.getElementsByClassName("closebtn");
var i;

for (i = 0; i < close.length; i++) {
    close[i].onclick = function(){
        var div = this.parentElement;
        div.style.opacity = "0";
        setTimeout(function(){ div.style.display = "none"; }, 600);
    }
}
    
function edit_1()
{
    if (is_editing == false)
        {
            document.getElementById("message_1").style.display = "none";
            document.getElementById("text_area_1").style.display = "block";
            document.getElementById("edit_1").classList.add("update");
            document.getElementById("edit_1").innerHTML = "Enregistrer les modifications";
            is_editing = true;
        }
    else
    {
        //Update
        var text;
        text = document.getElementById("text_area_1").value;
        text = text.replace(/\n\r?/g, '<br />');
        
        document.getElementById("message_1").innerHTML = text;
        
        document.getElementById("message_1").style.display = "block";
        document.getElementById("text_area_1").style.display = "none";
        document.getElementById("edit_1").classList.remove("update");
        document.getElementById("edit_1").innerHTML = "<i class=\"fas fa-pencil-alt\"></i> Éditer";
        is_editing = false;
    }
}
    
</script>