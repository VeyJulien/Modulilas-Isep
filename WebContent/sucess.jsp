<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <title>Menu - Félicitation</title>
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
                <div class="overlay_text">Êtes-vous sûre de vouloir<br>vous déconnecter ?</div>
                <div class="overlay_under_text">Tous les changements non enregistrés seront perdus.</div>
                <div style="display:flex;" class="button_overlay"><a class="button_1">Rester</a><a href="index.jsp" class="button_1">Quitter</a></div>
            </div>
        </div>
        
        <div class="main_block">
            <p class="title_project title_page">Module Creator</p>
            
            <div class="page">
                <div class="step_name_container">
                    <span class="step_name">Informations<br>générales</span>
                    <span id="l_t_1" class="step_name">Présentation<br>générale</span>
                    <span id="l_t_2" class="step_name">Objectifs<br>pédagogiques</span>
                    <span id="l_t_3" class="step_name">Modalités<br>pédagogiques</span>
                </div>
                
                <div class="loadbar_container">
                    <span class="loadbar_round"></span>
                    <span class="loadbar_number">1</span>
                    <div class="loadbar_line">
                        <div class="load_progress"></div>
                    </div>
                    
                    <span id="l_r_1" class="loadbar_round"></span>
                    <span id="l_n_1" class="loadbar_number">2</span>
                    <div class="loadbar_line">
                        <div id="l_p_1" class="load_progress"></div>
                    </div>
                    
                    <span id="l_r_2" class="loadbar_round"></span>
                    <span id="l_n_2" class="loadbar_number">3</span>
                    <div class="loadbar_line">
                        <div id="l_p_2" class="load_progress"></div>
                    </div>
                    
                    <span id="l_r_3" class="loadbar_round"></span>
                    <span id="l_n_3" class="loadbar_number">4</span>
                    <div class="loadbar_line">
                        <div id="l_p_3" class="load_progress"></div>
                    </div>
                    
                    <span class="loadbar_round"></span>
                    <span class="loadbar_number">5</span>
                    
                </div>
                
                <div class="input_module_container" style="overflow: hidden;">
                    
                    <div class="icon_sucess play_success_anim"><i class="fas fa-check"></i></div>
                    <div class="text_sucess">Félicitation !</div>
                    <div class="text_sucess" style="font-size:20px;">Votre module a été créé avec succès</div>
                    
                    <div style="display:flex;">
                        <div style="width:36%;"></div>
                        <div class="download_pdf"><div class="icon_pdf"><i class="fas fa-file-pdf pd_1"></i><i class="fas fa-arrow-down pd_2"></i></div><a class="text_download">Télécharger le pdf du module</a></div>
                        <div style="width:35%;"></div>
                    </div>
                    <div class="size_download">Taille : 1.2 Mo</div>
                </div>
                
            </div>
        
        <div class="lateral_menu">
            <div class="menu_title">Menu</div>
            <div class="statut_bullet">Administrateur</div>
            
            <ul class="button_list">
                <a href="Menu" class="link_button"><li class="button_menu">Ma Page</li><span class="bullet_notif">1</span></a>
                <a href="Creer_un_module" class="link_button"><li class="button_menu">Cr&#233;er un module</li></a>
                <a href="Chercher_un_module" class="link_button"><li class="button_menu menu_select">Chercher un module</li></a>
                <a href="Gerer_les_champs" class="link_button"><li class="button_menu">G&#233;rer les champs</li></a>
                <a href="Modifier_template" class="link_button"><li class="button_menu">Templates</li></a>
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
function on() {
    document.getElementById("overlay").style.display = "block";
    document.getElementsByClassName("main_block")[0].style.filter = "blur(7px)";
}

function off() {
    document.getElementById("overlay").style.display = "none";
    document.getElementsByClassName("main_block")[0].style.filter = "blur(0px)";
}
</script>