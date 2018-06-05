<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <title>Module - Perso</title>
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
                <div class="overlay_text">Êtes-vous sûre de vouloir<br>vous d&#233;connecter ?</div>
                <div class="overlay_under_text">Tous les changements non enregistr&#233;s seront perdus.</div>
                <div style="display:flex;" class="button_overlay"><a class="button_1">Rester</a><a href="index.html" class="button_1">Quitter</a></div>
            </div>
        </div>
        
        <div class="main_block" style="background-color:rgb(53,53,53);">
            <p class="title_project title_page" style="color:white;">Module Creator</p>
            
            <div class="page">
                <img id="coffee_img" src="coffee.gif" style="width: 30%; padding-right: 35%; padding-left: 35%; transition: 1s;">
                <div style="color: white; text-align: center;">Espace personnel</div>
                <ul class="nave_personnal_page">
                    <li><a id="menu_1" onclick="show_password()" class="button_change_info button_change_info_selected">Changer le mot de passe</a></li>
                    <li><a id="menu_2" onclick="show_manage_admin()" class="button_change_info">G&#233;rer les admins</a></li>
                    <li><a id="menu_3" onclick="show_legal()" class="button_change_info">Mentions l&#233;gales</a></li>
                    <li><a id="menu_4" onclick="show_more()" class="button_change_info">&#192 propos</a></li>
                </ul>
                
                <form class="form_change_style" id="form_change" style="transition:0.7s;">
                    <table id="password_form" style="width:100%">
                        <tr>
                            <td style="width:50%;"><label>Ancien mot de passe</label></td>
                            <td style="width:50%;"><label>Confirmer votre nouveau mot de passe</label></td>
                        </tr>
                        <tr>
                            <td><input class="input_change_form" type="password" value="motdepasse"></td>
                            <td><input onchange="check_password()" autocomplete="off" id="new_pw_1" class="input_change_form" type="text"></td>
                        </tr>
                        <tr>
                            <td><label>Nouveau mot de passe</label></td>
                            <td><label id="advice" style="color: #6d6d6d; transition:0.5s;"><i class="fas fa-lightbulb"></i> Conseil : Au moins une majuscule, un chiffre</label>
                            <div id="bar_container" style="width:95%; display:none;">
                                <div class="full_bar" id="full_bar" style="transition:0.7s;"></div>
                                <div class="empty_bar" id="empty_bar" style="transition:0.7s;"></div>
                            </div> 
                            </td>
                        </tr>
                        <tr>
                            <td><input autocomplete="off" id="new_pw_2" class="input_change_form" type="text"></td>
                            <td><input class="button_change_password" type="submit" value="Enregistrer"></td>
                        </tr>
                    </table>
                    
                    <div id="legal" style="color:white; display:none;">
                    <h2 style="margin-top: 5px;">Informations l&#233;gales</h2>
                    <h3>1. Pr&#233;sentation du site.</h3>
                    <p>En vertu de l'article 6 de la loi n° 2004-575 du 21 juin 2004 pour la confiance dans l'&#233;conomie num&#233;rique, il est pr&#233;cis&#233; aux utilisateurs du site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a> l'identit&#233; des diff&#233;rents intervenants dans le cadre de sa r&#233;alisation et de son suivi :</p>
                    <p><strong>Propri&#233;taire</strong> : ISEP – &#233;cole d'ing&#233;nieurs – 28 Rue Notre Dame des Champs, 75006 Paris<br />
                    <strong>Cr&#233;ateur</strong>  : <a href="www.isep.fr">&#233;quipe Lilas</a><br />
                    <strong>Responsable publication</strong> : Mathieu Manceny – mathieu.manceny@isep.fr<br />
                    Le responsable publication est une personne physique ou une personne morale.<br />
                    <strong>Webmaster</strong> : ISEP – isep@isep.fr<br />
                    <strong>H&#233;bergeur</strong> : ISEP – 28 Rue Notre Dame des Champs, 75006 Paris<br />
                    Cr&#233;dits : Maxime BREVIERE, Arthur ROUAIX, No&#233; FAURE, Julien VEY, Guillaume PASQUEREAU, Hugues VINCEY<br />
                    Le mod&#232le de mentions l&#233;gales est offert par Subdelirium.com <a target="_blank" href="https://www.subdelirium.com/generateur-de-mentions-legales/">Mentions l&#233;gales</a></p>

                    <h3>2. Conditions g&#233;n&#233;rales d’utilisation du site et des services propos&#233;s.</h3>
                    <p>L’utilisation du site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a> implique l’acceptation pleine et enti&#232re des conditions g&#233;n&#233;rales d’utilisation ci-apr&#232s d&#233;crites. Ces conditions d’utilisation sont susceptibles d’être modifi&#233;es ou compl&#233;t&#233;es &#192 tout moment, les utilisateurs du site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a> sont donc invit&#233;s &#192 les consulter de mani&#232re r&#233;guli&#232re.</p>
                    <p>Ce site est normalement accessible &#192 tout moment aux utilisateurs. Une interruption pour raison de maintenance technique peut être toutefois d&#233;cid&#233;e par ISEP, qui s’efforcera alors de communiquer pr&#233;alablement aux utilisateurs les dates et heures de l’intervention.</p>
                    <p>Le site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a> est mis &#192 jour r&#233;guli&#232rement par Mathieu Manceny. De la même façon, les mentions l&#233;gales peuvent être modifi&#233;es &#192 tout moment : elles s’imposent n&#233;anmoins &#192 l’utilisateur qui est invit&#233; &#192 s’y r&#233;f&#233;rer le plus souvent possible afin d’en prendre connaissance.</p>
                    <h3>3. Description des services fournis.</h3>
                    <p>Le site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a> a pour objet de fournir une information concernant l’ensemble des activit&#233;s de la soci&#233;t&#233;.</p>
                    <p>ISEP s’efforce de fournir sur le site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a> des informations aussi pr&#233;cises que possible. Toutefois, il ne pourra être tenue responsable des omissions, des inexactitudes et des carences dans la mise &#192 jour, qu’elles soient de son fait ou du fait des tiers partenaires qui lui fournissent ces informations.</p>
                    <p>Tous les informations indiqu&#233;es sur le site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a> sont donn&#233;es &#192 titre indicatif, et sont susceptibles d’&#233;voluer. Par ailleurs, les renseignements figurant sur le site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a> ne sont pas exhaustifs. Ils sont donn&#233;s sous r&#233;serve de modifications ayant &#233;t&#233; apport&#233;es depuis leur mise en ligne.</p>
                    <h3>4. Limitations contractuelles sur les donn&#233;es techniques.</h3>
                    <p>Le site utilise la technologie JavaScript.</p>
                    <p>Le site Internet ne pourra être tenu responsable de dommages mat&#233;riels li&#233;s &#192 l’utilisation du site. De plus, l’utilisateur du site s’engage &#192 acc&#233;der au site en utilisant un mat&#233;riel r&#233;cent, ne contenant pas de virus et avec un navigateur de derni&#232re g&#233;n&#233;ration mis-&#192-jour</p>
                    <h3>5. Propri&#233;t&#233; intellectuelle et contrefaçons.</h3>
                    <p>ISEP est propri&#233;taire des droits de propri&#233;t&#233; intellectuelle ou d&#233;tient les droits d’usage sur tous les &#233;l&#233;ments accessibles sur le site, notamment les textes, images, graphismes, logo, icônes, sons, logiciels.</p>
                    <p>Toute reproduction, repr&#233;sentation, modification, publication, adaptation de tout ou partie des &#233;l&#233;ments du site, quel que soit le moyen ou le proc&#233;d&#233; utilis&#233;, est interdite, sauf autorisation &#233;crite pr&#233;alable de : ISEP.</p>
                    <p>Toute exploitation non autoris&#233;e du site ou de l’un quelconque des &#233;l&#233;ments qu’il contient sera consid&#233;r&#233;e comme constitutive d’une contrefaçon et poursuivie conform&#233;ment aux dispositions des articles L.335-2 et suivants du Code de Propri&#233;t&#233; Intellectuelle.</p>
                    <h3>6. Limitations de responsabilit&#233;.</h3>
                    <p>ISEP ne pourra être tenue responsable des dommages directs et indirects caus&#233;s au mat&#233;riel de l’utilisateur, lors de l’acc&#232s au site www.module_creator_isep.fr, et r&#233;sultant soit de l’utilisation d’un mat&#233;riel ne r&#233;pondant pas aux sp&#233;cifications indiqu&#233;es au point 4, soit de l’apparition d’un bug ou d’une incompatibilit&#233;.</p>
                    <p>ISEP ne pourra &#233;galement être tenue responsable des dommages indirects (tels par exemple qu’une perte de march&#233; ou perte d’une chance) cons&#233;cutifs &#192 l’utilisation du site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a>.</p>
                    <p>Des espaces interactifs (possibilit&#233; de poser des questions dans l’espace contact) sont &#192 la disposition des utilisateurs. ISEP se r&#233;serve le droit de supprimer, sans mise en demeure pr&#233;alable, tout contenu d&#233;pos&#233; dans cet espace qui contreviendrait &#192 la l&#233;gislation applicable en France, en particulier aux dispositions relatives &#192 la protection des donn&#233;es. Le cas &#233;ch&#233;ant, ISEP se r&#233;serve &#233;galement la possibilit&#233; de mettre en cause la responsabilit&#233; civile et/ou p&#233;nale de l’utilisateur, notamment en cas de message &#192 caract&#232re raciste, injurieux, diffamant, ou pornographique, quel que soit le support utilis&#233; (texte, photographie…).</p>
                    <h3>7. Gestion des donn&#233;es personnelles.</h3>
                    <p>En France, les donn&#233;es personnelles sont notamment prot&#233;g&#233;es par la loi n° 78-87 du 6 janvier 1978, la loi n° 2004-801 du 6 août 2004, l'article L. 226-13 du Code p&#233;nal et la Directive Europ&#233;enne du 24 octobre 1995.</p>
                    <p>A l'occasion de l'utilisation du site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a>, peuvent êtres recueillies : l'URL des liens par l'interm&#233;diaire desquels l'utilisateur a acc&#233;d&#233; au site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a>, le fournisseur d'acc&#232s de l'utilisateur, l'adresse de protocole Internet (IP) de l'utilisateur.</p>
                    <p> En tout &#233;tat de cause ISEP ne collecte des informations personnelles relatives &#192 l'utilisateur que pour le besoin de certains services propos&#233;s par le site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a>. L'utilisateur fournit ces informations en toute connaissance de cause, notamment lorsqu'il proc&#232de par lui-même &#192 leur saisie. Il est alors pr&#233;cis&#233; &#192 l'utilisateur du site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a> l’obligation ou non de fournir ces informations.</p>
                    <p>Conform&#233;ment aux dispositions des articles 38 et suivants de la loi 78-17 du 6 janvier 1978 relative &#192 l’informatique, aux fichiers et aux libert&#233;s, tout utilisateur dispose d’un droit d’acc&#232s, de rectification et d’opposition aux donn&#233;es personnelles le concernant, en effectuant sa demande &#233;crite et sign&#233;e, accompagn&#233;e d’une copie du titre d’identit&#233; avec signature du titulaire de la pi&#232ce, en pr&#233;cisant l’adresse &#192 laquelle la r&#233;ponse doit être envoy&#233;e.</p>
                    <p>Aucune information personnelle de l'utilisateur du site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a> n'est publi&#233;e &#192 l'insu de l'utilisateur, &#233;chang&#233;e, transf&#233;r&#233;e, c&#233;d&#233;e ou vendue sur un support quelconque &#192 des tiers. Seule l'hypoth&#232se du rachat de ISEP et de ses droits permettrait la transmission des dites informations &#192 l'&#233;ventuel acqu&#233;reur qui serait &#192 son tour tenu de la même obligation de conservation et de modification des donn&#233;es vis &#192 vis de l'utilisateur du site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a>.</p>
                    <p>Le site n'est pas d&#233;clar&#233; &#192 la CNIL car il ne recueille pas d'informations personnelles. .</p>
                    <p>Les bases de donn&#233;es sont prot&#233;g&#233;es par les dispositions de la loi du 1er juillet 1998 transposant la directive 96/9 du 11 mars 1996 relative &#192 la protection juridique des bases de donn&#233;es.</p>
                    <h3>8. Liens hypertextes et cookies.</h3>
                    <p>Le site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a> contient un certain nombre de liens hypertextes vers d’autres sites, mis en place avec l’autorisation de ISEP. Cependant, ISEP n’a pas la possibilit&#233; de v&#233;rifier le contenu des sites ainsi visit&#233;s, et n’assumera en cons&#233;quence aucune responsabilit&#233; de ce fait.</p>
                    <p>La navigation sur le site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a> est susceptible de provoquer l’installation de cookie(s) sur l’ordinateur de l’utilisateur. Un cookie est un fichier de petite taille, qui ne permet pas l’identification de l’utilisateur, mais qui enregistre des informations relatives &#192 la navigation d’un ordinateur sur un site. Les donn&#233;es ainsi obtenues visent &#192 faciliter la navigation ult&#233;rieure sur le site, et ont &#233;galement vocation &#192 permettre diverses mesures de fr&#233;quentation.</p>
                    <p>Le refus d’installation d’un cookie peut entraîner l’impossibilit&#233; d’acc&#233;der &#192 certains services. L’utilisateur peut toutefois configurer son ordinateur de la mani&#232re suivante, pour refuser l’installation des cookies :</p>
                    <p>Sous Internet Explorer : onglet outil (pictogramme en forme de rouage en haut a droite) / options internet. Cliquez sur Confidentialit&#233; et choisissez Bloquer tous les cookies. Validez sur Ok.</p>
                    <p>Sous Firefox : en haut de la fenêtre du navigateur, cliquez sur le bouton Firefox, puis aller dans l'onglet Options. Cliquer sur l'onglet Vie priv&#233;e.
                     Param&#233;trez les R&#232gles de conservation sur :  utiliser les param&#232tres personnalis&#233;s pour l'historique. Enfin d&#233;cochez-la pour  d&#233;sactiver les cookies.</p>
                    <p>Sous Safari : Cliquez en haut &#192 droite du navigateur sur le pictogramme de menu (symbolis&#233; par un rouage). S&#233;lectionnez Param&#232tres. Cliquez sur Afficher les param&#232tres avanc&#233;s. Dans la section "Confidentialit&#233;", cliquez sur Param&#232tres de contenu. Dans la section "Cookies", vous pouvez bloquer les cookies.</p>
                    <p>Sous Chrome : Cliquez en haut &#192 droite du navigateur sur le pictogramme de menu (symbolis&#233; par trois lignes horizontales). S&#233;lectionnez Param&#232tres. Cliquez sur Afficher les param&#232tres avanc&#233;s. Dans la section "Confidentialit&#233;", cliquez sur pr&#233;f&#233;rences.  Dans l'onglet "Confidentialit&#233;", vous pouvez bloquer les cookies.</p>

                    <h3>9. Droit applicable et attribution de juridiction.</h3>
                    <p>Tout litige en relation avec l’utilisation du site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a> est soumis au droit français. Il est fait attribution exclusive de juridiction aux tribunaux comp&#233;tents de Paris.</p>
                    <h3>10. Les principales lois concern&#233;es.</h3>
                    <p>Loi n° 78-17 du 6 janvier 1978, notamment modifi&#233;e par la loi n° 2004-801 du 6 août 2004 relative &#192 l'informatique, aux fichiers et aux libert&#233;s.</p>
                    <p> Loi n° 2004-575 du 21 juin 2004 pour la confiance dans l'&#233;conomie num&#233;rique.</p>
                    <h3>11. Lexique.</h3>
                    <p>Utilisateur : Internaute se connectant, utilisant le site susnomm&#233;.</p>
                    <p>Informations personnelles : « les informations qui permettent, sous quelque forme que ce soit, directement ou non, l'identification des personnes physiques auxquelles elles s'appliquent » (article 4 de la loi n° 78-17 du 6 janvier 1978).</p>
                </div>
                    
                <div id="more" style="display:none;">
                    <p style="margin-top: 5px;"><b>Cette plateforme web &#192 &#233;t&#233; d&#233;velopp&#233;e par l'&#233;quipe Lilas.</b></p>
                    <p>Date de d&#233;but du projet : 12 avril 2018</p>
                    <p>Composition de l'&#233;quipe : Maxime BREVIERE, Arthur ROUAIX, No&#233; FAURE, Julien VEY, Guillaume PASQUEREAU, Hugues VINCEY (&#233;quipe de A2 , sp&#233;cialit&#233; g&#233;nie logiciel)</p>
                </div>
                    
                <div id="manage_admin" style="display:none; width:100%">
                    <div style="display:inline;">
                            <form style="width:100%">
                                <div style="margin-left:5px; margin-bottom:15px; float:left;"><input class="input_change_form" type="text" placeholder="Pr&#233;nom"></div>
                                <div style="margin-left:5px; float:left;"><input class="input_change_form" type="text" placeholder="Nom"></div>
                                <div style="margin-left:5px; float:left;"><input class="input_change_form" type="mail" placeholder="Adresse Mail"></div>
                                <div style="margin-right:5px; float:right;"><input class="button_change_password" type="submit" value="Ajouter"></div>
                            </form>
                    </div>
                    
                    <form>
                    <table id="admin" style="width:100%;">
                        <c:forEach var="user" items="${Users.getListUsers()}">
                        <tr>
                            <td>${user.getFirstName()}</td>
                            <td>${user.getLastName()}</td>
                            <td><a href='mailto:${user.getMail()}'>${user.getMail()}</a></td>
                            <td>${user.displayGradeName()}</td>
                            <td><a class="upgrade_button" type="submit"><i class="fas fa-star"></i> ${user.displayStatus()}</a></td>
                        </tr>
                        </c:forEach>
                    </table>
                    </form>
                </div>
                </form>
                
            </div>
        
        <div class="lateral_menu" style="border-right: 10px solid #6d6d6d">
            <div class="menu_title">Menu</div>
            <div class="statut_bullet">Administrateur</div>
            
            <ul class="button_list">
                <a href="menu.html" class="link_button"><li class="button_menu">Ma Page</li><span class="bullet_notif">1</span></a>
                <a href="create_module.html" class="link_button"><li class="button_menu">Cr&#233;er un module</li></a>
                <a href="find.html" class="link_button"><li class="button_menu">Chercher un module</li></a>
                <a href="create_template.html" class="link_button"><li class="button_menu">G&#233;rer les champs</li></a>
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

function show_legal()
    {
        document.getElementById("password_form").style.display = "none";
        document.getElementById("more").style.display = "none";
        document.getElementById("legal").style.display = "block";
        document.getElementById("manage_admin").style.display = "none";
        
        document.getElementById("coffee_img").style.width = "0%";
        document.getElementById("form_change").style.height = "275px";
        
        document.getElementById("menu_1").classList.remove("button_change_info_selected");
        document.getElementById("menu_2").classList.remove("button_change_info_selected");
        document.getElementById("menu_3").classList.add("button_change_info_selected");
        document.getElementById("menu_4").classList.remove("button_change_info_selected");
    }

function show_password()
    {
        document.getElementById("password_form").style.display = "table";
        document.getElementById("more").style.display = "none";
        document.getElementById("legal").style.display = "none";
        document.getElementById("manage_admin").style.display = "none";
        
        document.getElementById("coffee_img").style.width = "30%";
        document.getElementById("form_change").style.height = "137px";
        
        document.getElementById("menu_1").classList.add("button_change_info_selected");
        document.getElementById("menu_2").classList.remove("button_change_info_selected");
        document.getElementById("menu_3").classList.remove("button_change_info_selected");
        document.getElementById("menu_4").classList.remove("button_change_info_selected");
    }

function show_more()
    {
        document.getElementById("password_form").style.display = "none";
        document.getElementById("more").style.display = "block";
        document.getElementById("legal").style.display = "none";
        document.getElementById("manage_admin").style.display = "none";
        
        document.getElementById("coffee_img").style.width = "30%";
        document.getElementById("form_change").style.height = "137px";
        
        document.getElementById("menu_1").classList.remove("button_change_info_selected");
        document.getElementById("menu_2").classList.remove("button_change_info_selected");
        document.getElementById("menu_3").classList.remove("button_change_info_selected");
        document.getElementById("menu_4").classList.add("button_change_info_selected");
    }

function show_manage_admin()
    {
        document.getElementById("password_form").style.display = "none";
        document.getElementById("more").style.display = "none";
        document.getElementById("legal").style.display = "none";
        document.getElementById("manage_admin").style.display = "table";
        
        document.getElementById("coffee_img").style.width = "0%";
        document.getElementById("form_change").style.height = "275px";
        
        document.getElementById("menu_1").classList.remove("button_change_info_selected");
        document.getElementById("menu_2").classList.add("button_change_info_selected");
        document.getElementById("menu_3").classList.remove("button_change_info_selected");
        document.getElementById("menu_4").classList.remove("button_change_info_selected");
    }

function check_password()
    {
        var pw1 = document.getElementById("new_pw_1").value;
        var pw2 = document.getElementById("new_pw_2").value;
        
        var test = 0;
        
        if(pw1 != pw2)
            {
                document.getElementById("advice").style.color = "#ff5c6a";
                document.getElementById("advice").innerHTML = "<i class=\"fas fa-exclamation-triangle\"></i> Les mots de passes doivent être identiques";
                document.getElementById("bar_container").style.display = "none";
            }
        else if (pw1 == "" || pw2 == "")
            {
                document.getElementById("advice").style.color = "#ff5c6a";
                document.getElementById("advice").innerHTML = "<i class=\"fas fa-exclamation-triangle\"></i> Les mots de passes ne peuvent être vides";
                document.getElementById("bar_container").style.display = "none";
            }
        else if (pw1.length < 8 || pw2.length < 8)
            {
                document.getElementById("advice").style.color = "#ff5c6a";
                document.getElementById("advice").innerHTML = "<i class=\"fas fa-exclamation-triangle\"></i> Au moins 8 caract&#232res exig&#233;s";
                document.getElementById("bar_container").style.display = "none";
            }
        else
        {
            if (pw1.length >= 24)
                {
                    test = test + 3;
                }
            else if (pw1.length > 16 && pw1.length < 24)
                {
                    test = test + 1;
                }
            
            if(/[A-Z]/.test(pw1) == true)
                {
                    test = test + 1;
                }
            
            if(/\d/.test(pw1) == true)
               {
                    test = test + 1;
               }
            
            if(test < 1)
                {
                    document.getElementById("advice").style.color = "white";
                    document.getElementById("advice").innerHTML = "<i class=\"fas fa-check-circle\"></i> Robustesse : Faible";
                    
                    document.getElementById("bar_container").style.display = "flex";
                    document.getElementById("full_bar").style.width = "25%";
                    document.getElementById("empty_bar").style.width = "75%";
                    
                }
            else if (test == 1)
                {
                    document.getElementById("advice").style.color = "white";
                    document.getElementById("advice").innerHTML = "<i class=\"fas fa-check-circle\"></i> Robustesse : Correcte";
                    
                    document.getElementById("bar_container").style.display = "flex";
                    document.getElementById("full_bar").style.width = "50%";
                    document.getElementById("empty_bar").style.width = "50%";
                }
            else if(test == 2)
                {
                    document.getElementById("advice").style.color = "white";
                    document.getElementById("advice").innerHTML = "<i class=\"fas fa-check-circle\"></i> Robustesse : Forte";
                    
                    document.getElementById("bar_container").style.display = "flex";
                    document.getElementById("full_bar").style.width = "75%";
                    document.getElementById("empty_bar").style.width = "25%";
                }
            else if(test >= 3)
                {
                    document.getElementById("advice").style.color = "white";
                    document.getElementById("advice").innerHTML = "<i class=\"fas fa-check-circle\"></i> Robustesse : Tr&#232s forte";
                    
                    document.getElementById("bar_container").style.display = "flex";
                    document.getElementById("full_bar").style.width = "100%";
                    document.getElementById("empty_bar").style.width = "0%";
                }
        }
        
    }

</script>