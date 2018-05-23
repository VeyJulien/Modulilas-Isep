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
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
    <div class="background">
        
        <div id="overlay" onclick="off()">
            <div>
                <i class="fas fa-times cross_overlay"></i>
                <div class="overlay_text">Êtes-vous sûre de vouloir<br>vous d&#233;connecter ?</div>
                <div class="overlay_under_text">Tous les changements non enregistr&#233;s seront perdus.</div>
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
                    	<c:forEach var="annee" items="${Modules.listAns()}">
                        	<div class="childshow"><button type="button" class="accordion">Ann&#233;e ${annee}</button><i class="fas fa-angle-double-up icon_accordion a_1"></i></div>
                        	<div class="panel childshow">
                        		<c:forEach var="enseignement" items="${Modules.listEns()}">
                        	
                            		<div class="childshow"><button type="button" class="accordion">${enseignement}</button><i class="fas fa-angle-double-up icon_accordion_2 a_1_e"></i></div>
                            		<div class="panel childshow">

                                		<ul class="childshow">
                                			<c:set var="ens" value="${enseignement}" />
                                			<c:set var="year" value="${annee}" />
                                			<c:forEach var="module" items="${Modules.specificModules(ens,year)}">
												<li class="list_accordion childshow"><b>${module.getCode()} : </b>${module.getTitre()}<a style="float:right" href="#"><i class="fas fa-edit icon_module edit"></i><i class="fas fa-eye icon_module"></i></a></li>
											</c:forEach>
                                		</ul>
                            		</div>
                            	</c:forEach>
                        	</div>
						</c:forEach>
                    </div>
                        
                 
                </form>
            </div>
        
        <div class="lateral_menu">
            <div class="menu_title">Menu</div>
            <div class="statut_bullet">Administrateur</div>
            
            <ul class="button_list">
                <a href="menu.html" class="link_button"><li class="button_menu">Ma Page</li><span class="bullet_notif">1</span></a>
                <a href="create_module.html" class="link_button"><li class="button_menu">Cr&#233;er un module</li></a>
                <a href="Chercher_un_module" class="link_button"><li class="button_menu menu_select">Chercher un module</li></a>
                <a href="Gerer_les_champs" class="link_button"><li class="button_menu">G&#233;rer les champs</li></a>
                <a href="modify_template.html" class="link_button"><li class="button_menu">Templates</li></a>
                <a type="button" onclick="on()" class="link_button"><li class="button_menu" style="border-bottom:1px solid rgba(255,255,255,0.1);">D&#233;connexion</li></a>
            </ul>
            
            <div class="info_menu">
                <p>Session : Test<br>
                Version : 1.0.0 ©</p>
            </div>
        </div>
        
        </div>
    </div>
</body>
</html>

<script>
    
$(".childshow").click(function (e) {
    e.stopPropagation();
    jQuery(this).next('.childshow').toggle();
});
    
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