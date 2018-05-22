<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="fr">
<head>
    <meta charset="utf-8">
    <title>Connection</title>
    <link rel="stylesheet" href="style.css">
    <script src="script.js"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js" integrity="sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
    <link rel="icon" href="icon_website.gif" type="image/gif" sizes="16x16">
    
</head>
<body>
    <div class="background">
        <div class="main_block">
            <form class="login_form" method="post" action="/ModuLilas-Isep/Controller">
                <legend class="title_project">Module Creator</legend><br>
                <div class="label_login">Identifiant<div class="oblig"></div></div>
                <input type="text" placeholder="Entrez votre identifiant ISEP" required="required"><br><br>

                <div class="label_login">Password<div class="oblig"></div></div>
                <input type="password" placeholder="Entrez votre mot de passe" required="required"><br>

                <div class="submit_block">
                <input class="submit_button" type="submit" value="Connexion">
                </div>

            </form>
        </div>
    </div>
</body>
</html>
