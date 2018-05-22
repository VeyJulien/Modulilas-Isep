<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="fr">
<head>
    <meta charset="utf-8">
    <title>Module - Perso</title>
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
                    <li><a id="menu_2" onclick="show_manage_admin()" class="button_change_info">Gérer les admins</a></li>
                    <li><a id="menu_3" onclick="show_legal()" class="button_change_info">Mentions légales</a></li>
                    <li><a id="menu_4" onclick="show_more()" class="button_change_info">À propos</a></li>
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
                    <h2 style="margin-top: 5px;">Informations légales</h2>
                    <h3>1. Présentation du site.</h3>
                    <p>En vertu de l'article 6 de la loi n° 2004-575 du 21 juin 2004 pour la confiance dans l'économie numérique, il est précisé aux utilisateurs du site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a> l'identité des différents intervenants dans le cadre de sa réalisation et de son suivi :</p>
                    <p><strong>Propriétaire</strong> : ISEP – École d'ingénieurs – 28 Rue Notre Dame des Champs, 75006 Paris<br />
                    <strong>Créateur</strong>  : <a href="www.isep.fr">Équipe Lilas</a><br />
                    <strong>Responsable publication</strong> : Mathieu Manceny – mathieu.manceny@isep.fr<br />
                    Le responsable publication est une personne physique ou une personne morale.<br />
                    <strong>Webmaster</strong> : ISEP – isep@isep.fr<br />
                    <strong>Hébergeur</strong> : ISEP – 28 Rue Notre Dame des Champs, 75006 Paris<br />
                    Crédits : Maxime BREVIERE, Arthur ROUAIX, Noé FAURE, Julien VEY, Guillaume PASQUEREAU, Hugues VINCEY<br />
                    Le modèle de mentions légales est offert par Subdelirium.com <a target="_blank" href="https://www.subdelirium.com/generateur-de-mentions-legales/">Mentions légales</a></p>

                    <h3>2. Conditions générales d’utilisation du site et des services proposés.</h3>
                    <p>L’utilisation du site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a> implique l’acceptation pleine et entière des conditions générales d’utilisation ci-après décrites. Ces conditions d’utilisation sont susceptibles d’être modifiées ou complétées à tout moment, les utilisateurs du site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a> sont donc invités à les consulter de manière régulière.</p>
                    <p>Ce site est normalement accessible à tout moment aux utilisateurs. Une interruption pour raison de maintenance technique peut être toutefois décidée par ISEP, qui s’efforcera alors de communiquer préalablement aux utilisateurs les dates et heures de l’intervention.</p>
                    <p>Le site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a> est mis à jour régulièrement par Mathieu Manceny. De la même façon, les mentions légales peuvent être modifiées à tout moment : elles s’imposent néanmoins à l’utilisateur qui est invité à s’y référer le plus souvent possible afin d’en prendre connaissance.</p>
                    <h3>3. Description des services fournis.</h3>
                    <p>Le site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a> a pour objet de fournir une information concernant l’ensemble des activités de la société.</p>
                    <p>ISEP s’efforce de fournir sur le site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a> des informations aussi précises que possible. Toutefois, il ne pourra être tenue responsable des omissions, des inexactitudes et des carences dans la mise à jour, qu’elles soient de son fait ou du fait des tiers partenaires qui lui fournissent ces informations.</p>
                    <p>Tous les informations indiquées sur le site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a> sont données à titre indicatif, et sont susceptibles d’évoluer. Par ailleurs, les renseignements figurant sur le site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a> ne sont pas exhaustifs. Ils sont donnés sous réserve de modifications ayant été apportées depuis leur mise en ligne.</p>
                    <h3>4. Limitations contractuelles sur les données techniques.</h3>
                    <p>Le site utilise la technologie JavaScript.</p>
                    <p>Le site Internet ne pourra être tenu responsable de dommages matériels liés à l’utilisation du site. De plus, l’utilisateur du site s’engage à accéder au site en utilisant un matériel récent, ne contenant pas de virus et avec un navigateur de dernière génération mis-à-jour</p>
                    <h3>5. Propriété intellectuelle et contrefaçons.</h3>
                    <p>ISEP est propriétaire des droits de propriété intellectuelle ou détient les droits d’usage sur tous les éléments accessibles sur le site, notamment les textes, images, graphismes, logo, icônes, sons, logiciels.</p>
                    <p>Toute reproduction, représentation, modification, publication, adaptation de tout ou partie des éléments du site, quel que soit le moyen ou le procédé utilisé, est interdite, sauf autorisation écrite préalable de : ISEP.</p>
                    <p>Toute exploitation non autorisée du site ou de l’un quelconque des éléments qu’il contient sera considérée comme constitutive d’une contrefaçon et poursuivie conformément aux dispositions des articles L.335-2 et suivants du Code de Propriété Intellectuelle.</p>
                    <h3>6. Limitations de responsabilité.</h3>
                    <p>ISEP ne pourra être tenue responsable des dommages directs et indirects causés au matériel de l’utilisateur, lors de l’accès au site www.module_creator_isep.fr, et résultant soit de l’utilisation d’un matériel ne répondant pas aux spécifications indiquées au point 4, soit de l’apparition d’un bug ou d’une incompatibilité.</p>
                    <p>ISEP ne pourra également être tenue responsable des dommages indirects (tels par exemple qu’une perte de marché ou perte d’une chance) consécutifs à l’utilisation du site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a>.</p>
                    <p>Des espaces interactifs (possibilité de poser des questions dans l’espace contact) sont à la disposition des utilisateurs. ISEP se réserve le droit de supprimer, sans mise en demeure préalable, tout contenu déposé dans cet espace qui contreviendrait à la législation applicable en France, en particulier aux dispositions relatives à la protection des données. Le cas échéant, ISEP se réserve également la possibilité de mettre en cause la responsabilité civile et/ou pénale de l’utilisateur, notamment en cas de message à caractère raciste, injurieux, diffamant, ou pornographique, quel que soit le support utilisé (texte, photographie…).</p>
                    <h3>7. Gestion des données personnelles.</h3>
                    <p>En France, les données personnelles sont notamment protégées par la loi n° 78-87 du 6 janvier 1978, la loi n° 2004-801 du 6 août 2004, l'article L. 226-13 du Code pénal et la Directive Européenne du 24 octobre 1995.</p>
                    <p>A l'occasion de l'utilisation du site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a>, peuvent êtres recueillies : l'URL des liens par l'intermédiaire desquels l'utilisateur a accédé au site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a>, le fournisseur d'accès de l'utilisateur, l'adresse de protocole Internet (IP) de l'utilisateur.</p>
                    <p> En tout état de cause ISEP ne collecte des informations personnelles relatives à l'utilisateur que pour le besoin de certains services proposés par le site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a>. L'utilisateur fournit ces informations en toute connaissance de cause, notamment lorsqu'il procède par lui-même à leur saisie. Il est alors précisé à l'utilisateur du site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a> l’obligation ou non de fournir ces informations.</p>
                    <p>Conformément aux dispositions des articles 38 et suivants de la loi 78-17 du 6 janvier 1978 relative à l’informatique, aux fichiers et aux libertés, tout utilisateur dispose d’un droit d’accès, de rectification et d’opposition aux données personnelles le concernant, en effectuant sa demande écrite et signée, accompagnée d’une copie du titre d’identité avec signature du titulaire de la pièce, en précisant l’adresse à laquelle la réponse doit être envoyée.</p>
                    <p>Aucune information personnelle de l'utilisateur du site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a> n'est publiée à l'insu de l'utilisateur, échangée, transférée, cédée ou vendue sur un support quelconque à des tiers. Seule l'hypothèse du rachat de ISEP et de ses droits permettrait la transmission des dites informations à l'éventuel acquéreur qui serait à son tour tenu de la même obligation de conservation et de modification des données vis à vis de l'utilisateur du site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a>.</p>
                    <p>Le site n'est pas déclaré à la CNIL car il ne recueille pas d'informations personnelles. .</p>
                    <p>Les bases de données sont protégées par les dispositions de la loi du 1er juillet 1998 transposant la directive 96/9 du 11 mars 1996 relative à la protection juridique des bases de données.</p>
                    <h3>8. Liens hypertextes et cookies.</h3>
                    <p>Le site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a> contient un certain nombre de liens hypertextes vers d’autres sites, mis en place avec l’autorisation de ISEP. Cependant, ISEP n’a pas la possibilité de vérifier le contenu des sites ainsi visités, et n’assumera en conséquence aucune responsabilité de ce fait.</p>
                    <p>La navigation sur le site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a> est susceptible de provoquer l’installation de cookie(s) sur l’ordinateur de l’utilisateur. Un cookie est un fichier de petite taille, qui ne permet pas l’identification de l’utilisateur, mais qui enregistre des informations relatives à la navigation d’un ordinateur sur un site. Les données ainsi obtenues visent à faciliter la navigation ultérieure sur le site, et ont également vocation à permettre diverses mesures de fréquentation.</p>
                    <p>Le refus d’installation d’un cookie peut entraîner l’impossibilité d’accéder à certains services. L’utilisateur peut toutefois configurer son ordinateur de la manière suivante, pour refuser l’installation des cookies :</p>
                    <p>Sous Internet Explorer : onglet outil (pictogramme en forme de rouage en haut a droite) / options internet. Cliquez sur Confidentialité et choisissez Bloquer tous les cookies. Validez sur Ok.</p>
                    <p>Sous Firefox : en haut de la fenêtre du navigateur, cliquez sur le bouton Firefox, puis aller dans l'onglet Options. Cliquer sur l'onglet Vie privée.
                     Paramétrez les Règles de conservation sur :  utiliser les paramètres personnalisés pour l'historique. Enfin décochez-la pour  désactiver les cookies.</p>
                    <p>Sous Safari : Cliquez en haut à droite du navigateur sur le pictogramme de menu (symbolisé par un rouage). Sélectionnez Paramètres. Cliquez sur Afficher les paramètres avancés. Dans la section "Confidentialité", cliquez sur Paramètres de contenu. Dans la section "Cookies", vous pouvez bloquer les cookies.</p>
                    <p>Sous Chrome : Cliquez en haut à droite du navigateur sur le pictogramme de menu (symbolisé par trois lignes horizontales). Sélectionnez Paramètres. Cliquez sur Afficher les paramètres avancés. Dans la section "Confidentialité", cliquez sur préférences.  Dans l'onglet "Confidentialité", vous pouvez bloquer les cookies.</p>

                    <h3>9. Droit applicable et attribution de juridiction.</h3>
                    <p>Tout litige en relation avec l’utilisation du site <a href="http://www.module_creator_isep.fr/">www.module_creator_isep.fr</a> est soumis au droit français. Il est fait attribution exclusive de juridiction aux tribunaux compétents de Paris.</p>
                    <h3>10. Les principales lois concernées.</h3>
                    <p>Loi n° 78-17 du 6 janvier 1978, notamment modifiée par la loi n° 2004-801 du 6 août 2004 relative à l'informatique, aux fichiers et aux libertés.</p>
                    <p> Loi n° 2004-575 du 21 juin 2004 pour la confiance dans l'économie numérique.</p>
                    <h3>11. Lexique.</h3>
                    <p>Utilisateur : Internaute se connectant, utilisant le site susnommé.</p>
                    <p>Informations personnelles : « les informations qui permettent, sous quelque forme que ce soit, directement ou non, l'identification des personnes physiques auxquelles elles s'appliquent » (article 4 de la loi n° 78-17 du 6 janvier 1978).</p>
                </div>
                    
                <div id="more" style="display:none;">
                    <p style="margin-top: 5px;"><b>Cette plateforme web à été développée par l'équipe Lilas.</b></p>
                    <p>Date de début du projet : 12 avril 2018</p>
                    <p>Composition de l'équipe : Maxime BREVIERE, Arthur ROUAIX, Noé FAURE, Julien VEY, Guillaume PASQUEREAU, Hugues VINCEY (Équipe de A2 , spécialité génie logiciel)</p>
                </div>
                    
                <div id="manage_admin" style="display:none; width:100%">
                    <div style="display:inline;">
                            <form style="width:100%">
                                <div style="margin-left:5px; margin-bottom:15px; float:left;"><input class="input_change_form" type="text" placeholder="Prénom"></div>
                                <div style="margin-left:5px; float:left;"><input class="input_change_form" type="text" placeholder="Nom"></div>
                                <div style="margin-left:5px; float:left;"><input class="input_change_form" type="mail" placeholder="Adresse Mail"></div>
                                <div style="margin-right:5px; float:right;"><input class="button_change_password" type="submit" value="Ajouter"></div>
                            </form>
                    </div>

                    <form>
                    <table id="admin" style="width:100%;">
                        
                        <tr>
                            <td>Maxime</td>
                            <td>BREVIERE</td>
                            <td><a href="mailto:maxime.breviere@isep.fr">maxime.breviere@isep.fr</a></td>
                            <td>Admin</td>
                            <td><a class="upgrade_button" type="submit"><i class="fas fa-star"></i> DEBASE</a></td>
                        </tr>
                        
                        <tr>
                            <td>Arthur</td>
                            <td>ROUAIX</td>
                            <td><a href="mailto:arthur.rouaix@isep.fr">arthur.rouaix@isep.fr</a></td>
                            <td>Admin</td>
                            <td><a class="upgrade_button" type="submit"><i class="fas fa-star"></i> DEBASE</a></td>
                        </tr>
                        
                        <tr>
                            <td>Julien</td>
                            <td>VEY</td>
                            <td><a href="mailto:julien.vey@isep.fr">julien.vey@isep.fr</a></td>
                            <td>Admin</td>
                            <td><a class="upgrade_button" type="submit"><i class="fas fa-star"></i> DEBASE</a></td>
                        </tr>
                        
                        <tr>
                            <td>Guillaume</td>
                            <td>PASQUEREAU</td>
                            <td><a href="mailto:guillaume.pasquereau@isep.fr">guillaume.pasquereau@isep.fr</a></td>
                            <td>Admin</td>
                            <td><a class="upgrade_button" type="submit"><i class="fas fa-star"></i> DEBASE</a></td>
                        </tr>
                        
                        <tr>
                            <td>Hugues</td>
                            <td>VINCEY</td>
                            <td><a href="mailto:hugues.vincey@isep.fr">hugues.vincey@isep.fr</a></td>
                            <td>Admin</td>
                            <td><a class="upgrade_button" type="submit"><i class="fas fa-star"></i> DEBASE</a></td>
                        </tr>
                        
                        <tr>
                            <td>Noé</td>
                            <td>FAURE</td>
                            <td><a href="mailto:noe.faure@isep.fr">noe.faure@isep.fr</a></td>
                            <td>Admin</td>
                            <td><a class="upgrade_button" type="submit"><i class="fas fa-star"></i> DEBASE</a></td>
                        </tr>
                        
                        <tr>
                            <td>Mathieu</td>
                            <td>Manceny</td>
                            <td><a href="mailto:mathieu.manceny@isep.fr">mathieu.manceny@isep.fr</a></td>
                            <td>DE</td>
                            <td><a class="upgrade_button" type="submit"><i class="far fa-star"></i> UPGRADE</a></td>
                        </tr>
                        
                        <tr>
                            <td>Mohamed</td>
                            <td>Sellami</td>
                            <td><a href="mailto:mohamed.sellami@isep.fr">mohamed.sellami@isep.fr</a></td>
                            <td>Professeur</td>
                            <td><a class="upgrade_button" type="submit"><i class="far fa-star"></i> UPGRADE</a></td>
                        </tr>
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
                <a href="create_module.html" class="link_button"><li class="button_menu">Créer un module</li></a>
                <a href="find.html" class="link_button"><li class="button_menu">Chercher un module</li></a>
                <a href="create_template.html" class="link_button"><li class="button_menu">Gérer les champs</li></a>
                <a href="modify_template.html" class="link_button"><li class="button_menu">Templates</li></a>
                <a type="button" onclick="on()" class="link_button"><li class="button_menu" style="border-bottom:1px solid rgba(255,255,255,0.1);">Déconnexion</li></a>
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
                document.getElementById("advice").innerHTML = "<i class=\"fas fa-exclamation-triangle\"></i> Au moins 8 caractères exigés";
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
                    document.getElementById("advice").innerHTML = "<i class=\"fas fa-check-circle\"></i> Robustesse : Très forte";
                    
                    document.getElementById("bar_container").style.display = "flex";
                    document.getElementById("full_bar").style.width = "100%";
                    document.getElementById("empty_bar").style.width = "0%";
                }
        }
        
    }

</script>