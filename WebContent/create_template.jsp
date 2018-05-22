<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="fr">
<heaad>
    <meta charset="utf-8">
    <title>Module - Champs</title>
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
                <div class="overlay_text">�tes-vous s�re de vouloir<br>vous d�connecter ?</div>
                <div class="overlay_under_text">Tous les changements non enregistr�s seront perdus.</div>
                <div style="display:flex;" class="button_overlay"><a class="button_1">Rester</a><a href="index.html" class="button_1">Quitter</a></div>
            </div>
        </div>
        
        <div class="main_block">
            <p class="title_project title_page">Module Creator</p>
            
            <div class="page">
                
                <div class="info_container">
                    <div style="display:flex;">
                        <i style="cursor:auto;" class="fas fa-underline icon_selection_type icon_selection_type_active"></i><div style="margin-left: 10px;margin-right: 5px;font-size: 15px;padding-top: 3px;">Une ligne de texte</div><br>
                        <i style="cursor:auto;" class="fas fa-align-justify icon_selection_type icon_selection_type_active"></i><div style="margin-left: 10px;margin-right: 5px;font-size: 15px;padding-top: 3px;">Un paragraphe</div><br>
                        <i style="cursor:auto;" class="far fa-check-square icon_selection_type icon_selection_type_active"></i><div style="margin-left: 10px;margin-right: 5px;font-size: 15px;padding-top: 3px;">Un oui ou non</div><br>
                        <i style="cursor:auto;" class="fas fa-plus-circle icon_selection_type icon_selection_type_active"></i><div style="margin-left: 10px;margin-right: 5px;font-size: 15px;padding-top: 3px;">Un Nombre </div><br>
                    </div>
                    <ul class="menu_template">
                        <li id="menu_1" class="element_menu_template element_menu_template_active"><a type="button" onclick="show_step_1()">Step 1</a></li>
                        <li id="menu_2" class="element_menu_template"><a type="button" onclick="show_step_2()">Step 2</a></li>
                        <li id="menu_3" class="element_menu_template"><a type="button" onclick="show_step_3()">Step 3</a></li>
                        <li id="menu_4" class="element_menu_template"><a type="button" onclick="show_step_4()">Step 4</a></li>
                        <li class="save_template"><a style="color: white;">Enregistrer</a></li>
                    </ul>
                </div>
                
                <div style="overflow:auto; height:85%;">
                
                <div id="step_1">
                    
                <div class="label_input_step_name">Nom de l'�tape</div>
                <input value="Informations g�n�rales" class="input_step_name" type="text">
                
                <ul id="list_1" class="list_template">
                    <% int i1 = 0; %>
                    <c:forEach var="fieldtype" items="${Fieldtypes.specificFieldtype(1)}">
                    
                    	<div style="display:flex;">
                    	<i type="button" onclick="delete_element(this)" class="far fa-trash-alt manage_field_icon"></i>
                    	<i type="button" onclick="hide_element(this)" class="fas fa-eye manage_field_icon_2"></i>
                        
                    	<li class="element_list_template2">
                        
                        	<div style="padding-left: 18px;padding-right:18px;" class="count_template"><%= i1 = i1 + 1 %></div>
                        	<div style="display:block; margin-right:10px; min-width: 75px;">
                            	${fieldtype.activateField(fieldtype.getFormat())}
                        	</div>
                        	<div style="display:block;">
                            	<input class="input_template" value="${fieldtype.getTitle()}">
                            	<input class="input_template" value="${fieldtype.getDescription()}">
                        	</div>
                        	<div class="arrow_container">
                            	<i class="fas fa-arrow-up arrow_up_template"></i><br>
                            	<i class="fas fa-arrow-down arrow_down_template"></i>
                        	</div>
                    
                    	</li>
                    	</div>
                    
                    </c:forEach>   
                    
                </ul>
                    
                <div class="add_field" type="button" onclick="add_to_list('list_1')"><i class="fas fa-plus-circle"></i> Ajouter un champ suppl�mentaire</div>
                </div>
                
                <div id="step_2" style="display:none;">
                    
                <div class="label_input_step_name">Nom de l'�tape</div>
                <input value="Pr�sentation g�n�rale" class="input_step_name" type="text">
                    
                    <ul id="list_2" class="list_template">
                    <% int i2 = 0; %>
                    <c:forEach var="fieldtype" items="${Fieldtypes.specificFieldtype(2)}">
                    
                    	<div style="display:flex;">
                    	<i type="button" onclick="delete_element(this)" class="far fa-trash-alt manage_field_icon"></i>
                    	<i type="button" onclick="hide_element(this)" class="fas fa-eye manage_field_icon_2"></i>
                        
                    	<li class="element_list_template2">
                        
                        	<div style="padding-left: 18px;padding-right:18px;" class="count_template"><%= i2 = i2	 + 1 %></div>
                        	<div style="display:block; margin-right:10px; min-width: 75px;">
                            	${fieldtype.activateField(fieldtype.getFormat())}
                            </div>
                        	<div style="display:block;">
                            	<input class="input_template" value="${fieldtype.getTitle()}">
                            	<input class="input_template" value="${fieldtype.getDescription()}">
                        	</div>
                        	<div class="arrow_container">
                            	<i class="fas fa-arrow-up arrow_up_template"></i><br>
                            	<i class="fas fa-arrow-down arrow_down_template"></i>
                        	</div>
                    
                    	</li>
                    	</div>
                    
                    </c:forEach>  
                    
                    </ul>
                    
                    <div class="add_field" type="button" onclick="add_to_list('list_2')"><i class="fas fa-plus-circle"></i> Ajouter un champ suppl�mentaire</div>
                </div>
                    
                <div id="step_3" style="display:none;">
                    
                <div class="label_input_step_name">Nom de l'�tape</div>
                <input value="Objectifs p�dagogiques" class="input_step_name" type="text">
                    
                    <ul id="list_3" class="list_template">
                    <% int i3 = 0; %>
                    <c:forEach var="fieldtype" items="${Fieldtypes.specificFieldtype(3)}">
                    
                    	<div style="display:flex;">
                    	<i type="button" onclick="delete_element(this)" class="far fa-trash-alt manage_field_icon"></i>
                    	<i type="button" onclick="hide_element(this)" class="fas fa-eye manage_field_icon_2"></i>
                        
                    	<li class="element_list_template2">
                        
                        	<div style="padding-left: 18px;padding-right:18px;" class="count_template"><%= i3 = i3 + 1 %></div>
                        	<div style="display:block; margin-right:10px; min-width: 75px;">
                            	${fieldtype.activateField(fieldtype.getFormat())}
                        	</div>
                        	<div style="display:block;">
                            	<input class="input_template" value="${fieldtype.getTitle()}">
                            	<input class="input_template" value="${fieldtype.getDescription()}">
                        	</div>
                        	<div class="arrow_container">
                            	<i class="fas fa-arrow-up arrow_up_template"></i><br>
                            	<i class="fas fa-arrow-down arrow_down_template"></i>
                        	</div>
                    
                    	</li>
                    	</div>
                    
                    </c:forEach>  
                    
                    </ul>
                    
                    <div class="add_field" type="button" onclick="add_to_list('list_3')"><i class="fas fa-plus-circle"></i> Ajouter un champ suppl�mentaire</div>
                </div>
                    
                <div id="step_4" style="display:none;">
                    
                <div class="label_input_step_name">Nom de l'�tape</div>
                <input value="Modalit�s p�dagogiques" class="input_step_name" type="text">
                    
                    <ul id="list_4" class="list_template">
                    <% int i4 = 0; %>
                    <c:forEach var="fieldtype" items="${Fieldtypes.specificFieldtype(4)}">
                    
                    	<div style="display:flex;">
                    	<i type="button" onclick="delete_element(this)" class="far fa-trash-alt manage_field_icon"></i>
                    	<i type="button" onclick="hide_element(this)" class="fas fa-eye manage_field_icon_2"></i>
                        
                    	<li class="element_list_template2">
                        
                        	<div style="padding-left: 18px;padding-right:18px;" class="count_template"><%= i4 = i4 + 1 %></div>
                        	<div style="display:block; margin-right:10px; min-width: 75px;">
                            	${fieldtype.activateField(fieldtype.getFormat())}
                        	</div>
                        	<div style="display:block;">
                            	<input class="input_template" value="${fieldtype.getTitle()}">
                            	<input class="input_template" value="${fieldtype.getDescription()}">
                        	</div>
                        	<div class="arrow_container">
                            	<i class="fas fa-arrow-up arrow_up_template"></i><br>
                            	<i class="fas fa-arrow-down arrow_down_template"></i>
                        	</div>
                    
                    	</li>
                    	</div>
                    
                    </c:forEach>  
                    
                    </ul>
                    
                    <div class="add_field" type="button" onclick="add_to_list('list_4')"><i class="fas fa-plus-circle"></i> Ajouter un champ suppl�mentaire</div>
                </div>
                
                </div>
            </div>
        
        <div class="lateral_menu">
            <div class="menu_title">Menu</div>
            <div class="statut_bullet">Administrateur</div>
            
            <ul class="button_list">
                <a href="menu.html" class="link_button"><li class="button_menu">Ma Page</li><span class="bullet_notif">1</span></a>
                <a href="create_module.html" class="link_button"><li class="button_menu">Cr�er un module</li></a>
                <a href="find.html" class="link_button"><li class="button_menu">Chercher un module</li></a>
                <a href="create_template.html" class="link_button"><li class="button_menu menu_select">G�rer les champs</li></a>
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

function show_step_1()
    {
        document.getElementById("step_1").style.display = "block";
        document.getElementById("step_2").style.display = "none";
        document.getElementById("step_3").style.display = "none";
        document.getElementById("step_4").style.display = "none";
        
        document.getElementById("menu_1").classList.add("element_menu_template_active");
        document.getElementById("menu_2").classList.remove("element_menu_template_active");
        document.getElementById("menu_3").classList.remove("element_menu_template_active");
        document.getElementById("menu_4").classList.remove("element_menu_template_active");
    }
    
function show_step_2()
    {
        document.getElementById("step_1").style.display = "none";
        document.getElementById("step_2").style.display = "block";
        document.getElementById("step_3").style.display = "none";
        document.getElementById("step_4").style.display = "none";
        
        document.getElementById("menu_1").classList.remove("element_menu_template_active");
        document.getElementById("menu_2").classList.add("element_menu_template_active");
        document.getElementById("menu_3").classList.remove("element_menu_template_active");
        document.getElementById("menu_4").classList.remove("element_menu_template_active");
    }

function show_step_3()
    {
        document.getElementById("step_1").style.display = "none";
        document.getElementById("step_2").style.display = "none";
        document.getElementById("step_3").style.display = "block";
        document.getElementById("step_4").style.display = "none";
        
        document.getElementById("menu_1").classList.remove("element_menu_template_active");
        document.getElementById("menu_2").classList.remove("element_menu_template_active");
        document.getElementById("menu_3").classList.add("element_menu_template_active");
        document.getElementById("menu_4").classList.remove("element_menu_template_active");
    }

function show_step_4()
    {
        document.getElementById("step_1").style.display = "none";
        document.getElementById("step_2").style.display = "none";
        document.getElementById("step_3").style.display = "none";
        document.getElementById("step_4").style.display = "block";
        
        document.getElementById("menu_1").classList.remove("element_menu_template_active");
        document.getElementById("menu_2").classList.remove("element_menu_template_active");
        document.getElementById("menu_3").classList.remove("element_menu_template_active");
        document.getElementById("menu_4").classList.add("element_menu_template_active");
    }
    
function hide_element(current)
    {
        var element = current.nextElementSibling;
        
        if(element.style.opacity == 0.2)
        {
                element.style.opacity = "1";
        }
        else
        {
            element.style.opacity = "0.2";
        }
    }
    
function delete_element(current)
    {
        var element = current.nextElementSibling;
        var element2 = element.nextElementSibling;
        
        element2.style.opacity = "0";
        element2.style.marginLeft = "450px";
        setTimeout(function(){  element.remove();
                                element2.remove();
                                current.remove();
                             }, 600);
        
    }
    
function switch_button(current)
    {
        
        //Next buttons
        if(current.nextElementSibling)
        {
            var next1 = current.nextElementSibling;
            next1.classList.remove("icon_selection_type_active");
                
            if(next1.nextElementSibling)
            {
                var next2 = next1.nextElementSibling;
                next2.classList.remove("icon_selection_type_active");
                
                if(next2.nextElementSibling)
                {
                    var next3 = next2.nextElementSibling;
                    next3.classList.remove("icon_selection_type_active");
                    
                    if(next3.nextElementSibling)
                    {
                        var next4 = next3.nextElementSibling;
                        next4.classList.remove("icon_selection_type_active");
                    }
                }
            }
        }
        
        //Previous Button
        if(current.previousElementSibling)
        {
            var prev1 = current.previousElementSibling;
            prev1.classList.remove("icon_selection_type_active");
                
            if(prev1.previousElementSibling)
            {
                var prev2 = prev1.previousElementSibling;
                prev2.classList.remove("icon_selection_type_active");
                
                if(prev2.previousElementSibling)
                {
                    var prev3 = prev2.previousElementSibling;
                    prev3.classList.remove("icon_selection_type_active");
                    
                    if(prev3.previousElementSibling)
                    {
                        var prev4 = prev3.previousElementSibling;
                        prev4.classList.remove("icon_selection_type_active");
                    }
                }
            }
        }
        
        current.classList.add("icon_selection_type_active");
        
    }

    
function add_to_list(name)
    {
        var list_name = "#" + name;
        
        var num = $(list_name + ' li').length;
        num = num + 1;
        
        var list_contain = "<div style=\"display:flex;\"><i type=\"button\" onclick=\"delete_element(this)\" class=\"far fa-trash-alt manage_field_icon\"></i><i type=\"button\" onclick=\"hide_element(this)\" class=\"fas fa-eye manage_field_icon_2\"></i><li class=\"element_list_template2\"><div style=\"padding-right:18px;\"class=\"count_template\">" + num + "</div><div style=\"display:block; margin-right:10px; min-width: 75px;\"><i type=\"button\" onclick=\"switch_button(this)\" class=\"fas fa-align-justify icon_selection_type\"></i><i type=\"button\" onclick=\"switch_button(this)\" class=\"fas fa-underline icon_selection_type icon_selection_type_active\"></i><br><i type=\"button\" onclick=\"switch_button(this)\" class=\"far fa-check-square icon_selection_type \"></i><i type=\"button\" onclick=\"switch_button(this)\" class=\"fas fa-plus-circle icon_selection_type\"></i></div><div style=\"display:block;\"><input class=\"input_template\"><input class=\"input_template\"></div><div class=\"arrow_container\"><i class=\"fas fa-arrow-up arrow_up_template\"></i><br><i class=\"fas fa-arrow-down arrow_down_template\"></i></div></li></div>";
        
        $(list_name).append(list_contain);
        
    }

</script>