<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="fr">
<head>
    <meta charset="utf-8">
    <title>Menu</title>
    <link rel="stylesheet" href="style.css">
    <script src="script.js"></script>
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
            <div class="page">
                <form class="find_page">
                    <div style="display:flex;"><input class="search_bar" type="text" placeholder="Rechercher un module..."><i class="fas fa-search icon_search"></i></div>
                    
                    <label class="container_check">Afficher uniquement mes fiches<input type="checkbox" style="width:0px;">
                        <span class="checkmark"></span>
                    </label>
                    
                    <div class="menu_accordion">
                        <div style="display:flex;"><button type="button" class="accordion" onclick="display_block_a_1()">Ann�e 1</button><i class="fas fa-angle-double-up icon_accordion a_1"></i></div>
                        <div class="panel">

                            <div style="display:flex;"><button type="button" class="accordion" onclick="display_block_a_1_e()">�lectronique</button><i class="fas fa-angle-double-up icon_accordion_2 a_1_e"></i></div>
                            <div class="panel">

                                <ul>
                                    <li class="list_accordion"><b>IE2409 :</b> Microsyst�mes �lectroniques<a style="float:right" href="#"><i class="fas fa-edit icon_module edit"></i><i class="fas fa-eye icon_module"></i></a></li>
                                    <li class="list_accordion"><b>IE2410 :</b> Microsyst�mes Informatiques<a style="float:right" href="#"><i class="fas fa-edit icon_module edit"></i><i class="fas fa-eye icon_module"></i></a></li>
                                </ul>

                            </div>

                            <div style="display:flex;"><button type="button" class="accordion" onclick="display_block_a_1_i()">Informatique</button><i class="fas fa-angle-double-up icon_accordion_2 a_1_i"></i></div>
                            <div class="panel">
                            
                            <ul>
								<c:forEach var="module" items="${Modules.specificModules('Informatique',1)}">
									<li class="list_accordion"><b>${module.getCode()} :</b>${module.getTitre()}<a style="float:right" href="#"><i class="fas fa-edit icon_module edit"></i><i class="fas fa-eye icon_module"></i></a></li>
								</c:forEach>
								
                                
                                </ul>

                            </div>

                        </div>
                    
                    
                        <div style="display:flex;"><button class="accordion">Ann�e 2</button><i class="fas fa-angle-double-up icon_accordion"></i></div>
                        
                        <div style="display:flex;"><button class="accordion">Ann�e 3</button><i class="fas fa-angle-double-up icon_accordion"></i></div>
                        
                    </div>
                 
                </form>
            </div>
        
        <div class="lateral_menu">
            <div class="menu_title">Menu</div>
            <div class="statut_bullet">Administrateur</div>
            
            <ul class="button_list">
                <a href="menu.html" class="link_button"><li class="button_menu">Ma Page</li><span class="bullet_notif">1</span></a>
                <a href="create_module.html" class="link_button"><li class="button_menu">Cr�er un module</li></a>
                <a href="find.html" class="link_button"><li class="button_menu menu_select">Chercher un module</li></a>
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
    
    var anne_1_activation = false;
    var anne_1_e_activation = false;
    var anne_1_i_activation = false;
    
    function display_block_a_1()
    { 
        if(anne_1_activation == false)
        {
            document.getElementsByClassName("panel")[0].style.display = "block";
            document.getElementsByClassName("a_1")[0].style.transform = "rotate(180deg)";
            anne_1_activation = true;
        }
        else
        {
            document.getElementsByClassName("panel")[0].style.display = "none";
            document.getElementsByClassName("a_1")[0].style.transform = "rotate(0deg)";
            anne_1_activation = false;
        }
    }
    
    function display_block_a_1_e()
    { 
        if(anne_1_e_activation == false)
        {
            document.getElementsByClassName("panel")[1].style.display = "block";
            document.getElementsByClassName("a_1_e")[0].style.transform = "rotate(180deg)";
            anne_1_e_activation = true;
        }
        else
        {
            document.getElementsByClassName("panel")[1].style.display = "none";
            document.getElementsByClassName("a_1_e")[0].style.transform = "rotate(0deg)";
            anne_1_e_activation = false;
        }
    }
    
    function display_block_a_1_i()
    { 
        if(anne_1_i_activation == false)
        {
            document.getElementsByClassName("panel")[2].style.display = "block";
            document.getElementsByClassName("a_1_i")[0].style.transform = "rotate(180deg)";
            anne_1_i_activation = true;
        }
        else
        {
            document.getElementsByClassName("panel")[2].style.display = "none";
            document.getElementsByClassName("a_1_i")[0].style.transform = "rotate(0deg)";
            anne_1_i_activation = false;
        }
    }
    
    
</script>

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