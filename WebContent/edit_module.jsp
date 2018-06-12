<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="fr">
<head>
    <meta charset="utf-8">
    <title>Module - Cr&#233;er un module</title>
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
                <div class="overlay_text">&#202;tes-vous s&#251;r de vouloir<br>vous d&#233;connecter ?</div>
                <div class="overlay_under_text">Tous les changements non enregistr&#233;s seront perdus.</div>
                <div style="display:flex;" class="button_overlay"><a class="button_1">Rester</a><a href="index.html" class="button_1">Quitter</a></div>
            </div>
        </div>
        
        <div class="main_block">
            <p class="title_project title_page">Module Creator</p>
            
            <div class="page">
                <div class="step_name_container">

              	 <c:forEach var="step" items="${Fieldtypes.listSteps()}">
              	 	<c:set var="etape" value="${step}" />
                	<c:forEach var="max" items="${Steps.specificStep(etape)}">
                			${max.text()}
                    </c:forEach>
                </c:forEach>
                
                </div>
                
                <div class="loadbar_container">
                <c:forEach var="step" items="${Fieldtypes.listSteps()}">
                	<c:set var="etape" value="${step}" />
                	<c:forEach var="max" items="${Steps.specificStep(etape)}">
                			${max.loadbar(Fieldtypes.maxStep())}
                    </c:forEach>
                </c:forEach>
                    
                </div>
                
                
                <div class="input_module_container">
                    <form id = "editModule" action="/ModuLilas-Isep/ModuleCreation" method="post">
                    	<input type="hidden" name="action" value="edition">
                    	
                        <c:forEach var="step" items="${Fieldtypes.listSteps()}">
                       	 	<% int i = 1; %>
                        	<div id="step_${step}" style="transition: 1s;">
                        
                        	<c:set var="etape" value="${step}" />
                        	<c:forEach var="fieldtype" items="${Fieldtypes.specificFieldtype(etape)}">
                        
                        		<label>${fieldtype.getTitle()}</label><i class="fas fa-circle oblig_field"></i>
                        		<c:set var="index" value="<%= i %>" />
                        		<c:set var="text" value="${Datas[0].get(index-1)}" />
                        		${fieldtype.fieldTypeForEdit(fieldtype.getFormat(),index,text)}
                        		<% i = i + 1; %>
                        
                       		</c:forEach>
                        	<c:forEach var="max" items="${Steps.specificStep(etape)}">
                        		${max.button(Fieldtypes.maxStep())}
                       		</c:forEach>
                      	   
                        	</div>
                        </c:forEach>
                        
                    </form>
                </div>
                
            </div>
        
        <div class="lateral_menu">
            <div class="menu_title">Menu</div>
            <div class="statut_bullet">Administrateur</div>
            
            <ul class="button_list">

                <a href="Menu" class="link_button"><li class="button_menu">Ma Page</li><span class="bullet_notif">1</span></a>
                <a href="Creer_un_module" class="link_button"><li class="button_menu menu_select">Cr&#233;er un module</li></a>
                <a href="Chercher_un_module" class="link_button"><li class="button_menu">Chercher un module</li></a>
                <a href="Gerer_les_champs" class="link_button"><li class="button_menu">G&#233;rer les champs</li></a>
                <a href="Modifier_template" class="link_button"><li class="button_menu">Templates</li></a>
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

<script>
function check_field_1(){
    var object = document.getElementById("field_1").value;
    
    if (object == "")
    {
        document.getElementById("check_1").style.color = "#d6d6d7";
        document.getElementById("field_1").style.color = "black";
        document.getElementById("ok_1").style.display = "none";
        
    }
    else
    {
        document.getElementById("check_1").style.color = "#ff5b6a";
        document.getElementById("field_1").style.color = "#ff5b6a";
        document.getElementById("ok_1").style.display = "flex";
    }
}
    
function check_field_2(){
    var object = document.getElementById("field_2").value;
    
    if (object == "")
    {
        document.getElementById("check_2").style.color = "#d6d6d7";
        document.getElementById("field_2").style.color = "black";
        document.getElementById("ok_2").style.display = "none";
    }
    else
    {
        document.getElementById("check_2").style.color = "#ff5b6a";
        document.getElementById("field_2").style.color = "#ff5b6a";
        document.getElementById("ok_2").style.display = "flex";
    }
}
    
function check_field_3(){
    var object = document.getElementById("field_3").value;
    
    if (object == "")
    {
        document.getElementById("check_3").style.color = "#d6d6d7";
        document.getElementById("field_3").style.color = "black";
        document.getElementById("ok_3").style.display = "none";
    }
    else
    {
        document.getElementById("check_3").style.color = "#ff5b6a";
        document.getElementById("field_3").style.color = "#ff5b6a";
        document.getElementById("ok_3").style.display = "flex";
    }
}
    
function check_field_4(){
    var object = document.getElementById("field_4").value;
    
    
    if (isNaN(object) || object <= 0)
    { 
        document.getElementById("check_4").style.color = "#d6d6d7";
        document.getElementById("field_4").style.color = "black";
        document.getElementById("ok_4").style.display = "none";
    }
    else
    { 
        document.getElementById("check_4").style.color = "#ff5b6a";
        document.getElementById("field_4").style.color = "#ff5b6a";
        document.getElementById("ok_4").style.display = "flex";
    }
    
    if(object =="")
    {
        document.getElementById("field_4").value = "0";
    }
}
    
function check_field_5(){
    var object = document.getElementById("field_5").value;
    
    
    if (isNaN(object) || object <= 0)
    { 
        document.getElementById("check_5").style.color = "#d6d6d7";
        document.getElementById("field_5").style.color = "black";
        document.getElementById("ok_5").style.display = "none";
    }
    else
    { 
        document.getElementById("check_5").style.color = "#ff5b6a";
        document.getElementById("field_5").style.color = "#ff5b6a";
        document.getElementById("ok_5").style.display = "flex";
    }
    
    if(object == "")
    {
        document.getElementById("field_5").value = "0";
    }
}
    
function add_field_4(){
    
    var a = Number(document.getElementById("field_4").value);
    var b = 1;
    var c = 0;
    c = a + b;
    document.getElementById("field_4").value = c;
    
    check_field_4();
    
}
    
function remove_field_4(){
    
    var a = Number(document.getElementById("field_4").value);
    var b = 1;
    var c = 0;
    c = a - b;
    document.getElementById("field_4").value = c;
    
    check_field_4();
}
    
function add_field_5(){
    
    var a = Number(document.getElementById("field_5").value);
    var b = 1;
    var c = 0;
    c = a + b;
    document.getElementById("field_5").value = c;
    
    check_field_5();
    
}
    
function remove_field_5(){
    
    var a = Number(document.getElementById("field_5").value);
    var b = 1;
    var c = 0;
    c = a - b;
    document.getElementById("field_5").value = c;
    
    check_field_5();
}
    
function check_box_field(){
    
    var check = document.getElementById("Mycheck_1").checked;
    
    if (check == true)
    {
        document.getElementById("Mycheck_2").checked = false;
    }
    else
    {
        document.getElementById("Mycheck_2").checked = true;
    }
}
    
function check_box_field_2(){
    
    var check = document.getElementById("Mycheck_2").checked;
    
    if (check == true)
    {
        document.getElementById("Mycheck_1").checked = false;
    }
    else
    {
        document.getElementById("Mycheck_1").checked = true;
    }
}

function press_next_step_1(){
    
    document.getElementById("step_1").style.opacity = "0";
    document.getElementById("step_1").style.paddingRight = "700px";
    document.getElementById("step_1").style.marginLeft = "-700px";
    
    setTimeout(function(){ document.getElementById("step_1").style.display = "none";
                           document.getElementById("step_2").style.display = "block";}, 600);
    
    setTimeout(function(){ document.getElementById("step_2").style.opacity = "1";
                           document.getElementById("step_2").style.marginRight = "0px";
                           document.getElementById("step_2").style.paddingLeft = "0px";
                           
                           document.getElementById("l_r_1").classList.add("play_round_loadbar");
                           document.getElementById("l_n_1").classList.add("play_text_loadbar_2");
                           document.getElementById("l_p_1").classList.add("play_line_loadbar");
                           document.getElementById("l_t_1").classList.add("play_text_loadbar");
                         
                         }, 630);
}
    
function press_previous_step_2(){
    
    document.getElementById("step_2").style.display = "none";
    document.getElementById("step_1").style.paddingRight = "0px";
    document.getElementById("step_1").style.marginLeft = "0px";
    document.getElementById("step_1").style.display = "block";
    
    setTimeout(function(){ document.getElementById("step_1").style.opacity = "1";}, 600);
    
    document.getElementById("l_r_1").classList.remove("play_round_loadbar");
    document.getElementById("l_n_1").classList.remove("play_text_loadbar_2");
    document.getElementById("l_p_1").classList.remove("play_line_loadbar");
    document.getElementById("l_t_1").classList.remove("play_text_loadbar");

}

function press_next_step_2(){
    
    document.getElementById("step_2").style.opacity = "0";
    document.getElementById("step_2").style.paddingRight = "700px";
    document.getElementById("step_2").style.marginLeft = "-700px";
    
    setTimeout(function(){ document.getElementById("step_2").style.display = "none";
                           document.getElementById("step_3").style.display = "block";}, 600);
    
    setTimeout(function(){ document.getElementById("step_3").style.opacity = "1";
                           document.getElementById("step_3").style.marginRight = "0px";
                           document.getElementById("step_3").style.paddingLeft = "0px";
                           
                           document.getElementById("l_r_2").classList.add("play_round_loadbar");
                           document.getElementById("l_n_2").classList.add("play_text_loadbar_2");
                           document.getElementById("l_p_2").classList.add("play_line_loadbar");
                           document.getElementById("l_t_2").classList.add("play_text_loadbar");
                         
                         }, 630);
}
    
function press_previous_step_3(){
    
    document.getElementById("step_3").style.display = "none";
    document.getElementById("step_2").style.paddingRight = "0px";
    document.getElementById("step_2").style.marginLeft = "0px";
    document.getElementById("step_2").style.display = "block";
    
    setTimeout(function(){ document.getElementById("step_2").style.opacity = "1";}, 600);
    
    document.getElementById("l_r_2").classList.remove("play_round_loadbar");
    document.getElementById("l_n_2").classList.remove("play_text_loadbar_2");
    document.getElementById("l_p_2").classList.remove("play_line_loadbar");
    document.getElementById("l_t_2").classList.remove("play_text_loadbar");

}
    
function press_next_step_3(){
    
    document.getElementById("step_3").style.opacity = "0";
    document.getElementById("step_3").style.paddingRight = "700px";
    document.getElementById("step_3").style.marginLeft = "-700px";
    
    setTimeout(function(){ document.getElementById("step_3").style.display = "none";
                           document.getElementById("step_4").style.display = "block";}, 600);
    
    setTimeout(function(){ document.getElementById("step_4").style.opacity = "1";
                           document.getElementById("step_4").style.marginRight = "0px";
                           document.getElementById("step_4").style.paddingLeft = "0px";
                           
                           document.getElementById("l_r_3").classList.add("play_round_loadbar");
                           document.getElementById("l_n_3").classList.add("play_text_loadbar_2");
                           document.getElementById("l_p_3").classList.add("play_line_loadbar");
                           document.getElementById("l_t_3").classList.add("play_text_loadbar");
                         
                         }, 630);
}
    
function press_previous_step_4(){
    
    document.getElementById("step_4").style.display = "none";
    document.getElementById("step_3").style.paddingRight = "0px";
    document.getElementById("step_3").style.marginLeft = "0px";
    document.getElementById("step_3").style.display = "block";
    
    setTimeout(function(){ document.getElementById("step_3").style.opacity = "1";}, 600);
    
    document.getElementById("l_r_3").classList.remove("play_round_loadbar");
    document.getElementById("l_n_3").classList.remove("play_text_loadbar_2");
    document.getElementById("l_p_3").classList.remove("play_line_loadbar");
    document.getElementById("l_t_3").classList.remove("play_text_loadbar");

}

document.getElementById("step_2").style.display = "none";
document.getElementById("step_3").style.display = "none";
document.getElementById("step_4").style.display = "none";
</script>