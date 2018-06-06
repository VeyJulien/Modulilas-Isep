<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <title>Module - Template</title>
    <link rel="stylesheet" href="style.css">
    <script src="script.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
                <div class="overlay_text">&#202;tes-vous s&#251;r de vouloir<br>vous d&#233;connecter ?</div>
                <div class="overlay_under_text">Tous les changements non enregistr&#233;s seront perdus.</div>
                <div style="display:flex;" class="button_overlay"><a class="button_1">Rester</a><a href="index.html" class="button_1">Quitter</a></div>
            </div>
        </div>
        
        <div class="main_block">
            <p class="title_project title_page">Module Creator</p>
            
            <div class="page">
                
                <div class="input_module_container" style="overflow: hidden; height:97%;">
                    <div class="template_container">
                        
                        <c:forEach var="template" items="${viewName.getListTemplate()}">
                        
                        <div class="template_picture ${template.DisplayActive()}">${template.getViewName()}<br>
                            <i style="font-size:40px; padding-top:15px;" class="fas fa-images"></i>
                            <div class="manage_template">
                                <i class="far fa-trash-alt manage_template_icon"></i>
                                <i class="far fa-check-square manage_template_icon" style="color:${template.DisplayIcon()};"></i>
                            </div>
                        </div>
                        
                        </c:forEach>
                        
                    </div>
                    
              		<form style="overflow:scroll; height:120%;">
                    <input class="save_container" value="Enregistrer" type="submit">
                    
                    <div style="overflow:scroll; height:50%;">
                    	<c:forEach var="template" items="${viewName.getListTemplate()}">
                    
                    		<table class="table_edit_vue">
                        		<title>${template.getViewName()}</title>
                        		<c:set var="viewid" value="${template.getViewId()}" />
                        		<c:forEach var="viewfieldtype" items="${ViewFieldTypes.specificViewFieldtype(viewid)}">
                        		<tr>
                            		<c:set var="fieldid" value="${viewfieldtype.getFieldTypeId()}" />
                            		<c:forEach var="fieldtype" items="${FieldTypes.specificFieldtypeId(fieldid)}">
                            			<td>${fieldtype.getTitle()}</td>
                            			${viewfieldtype.active()}
                            		</c:forEach>
                        		</tr>
                       			</c:forEach>
                    		</table>
                
                		</c:forEach>
                	</div>
                
                </form>
                    
                </div>
                
            </div>
        
        <div class="lateral_menu">
            <div class="menu_title">Menu</div>
            <div class="statut_bullet">Administrateur</div>
            
            <ul class="button_list">
                <a href="Menu" class="link_button"><li class="button_menu">Ma Page</li><span class="bullet_notif">1</span></a>
                <a href="Creer_un_module" class="link_button"><li class="button_menu">Cr&#233;er un module</li></a>
                <a href="Chercher_un_module" class="link_button"><li class="button_menu">Chercher un module</li></a>
                <a href="Gerer_les_champs" class="link_button"><li class="button_menu">G&#233;rer les champs</li></a>
                <a href="Modifier_template" class="link_button"><li class="button_menu menu_select">Templates</li></a>
                <a type="button" onclick="on()" class="link_button"><li class="button_menu" style="border-bottom:1px solid rgba(255,255,255,0.1);">D&#233;connexion</li></a>
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