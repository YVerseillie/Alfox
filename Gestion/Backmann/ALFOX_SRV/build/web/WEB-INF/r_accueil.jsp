<%-- 
    Document   : r_accueil.jsp
    Description  : page accueil du responsable (tableau de bord du parc)
    Created on : Mars 2018
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Acceuil</title> 
        <%@ include file="/includes/header.jspf" %>
    </head>
    <body>
        <div data-role="page" id="page1">
            <div class="header" data-role="header" data-id="main-header" data-tap-toggle="false" 
                 data-theme="a" data-position="fixed" data-fullscreen="true">
                <h1><img id="logoHeader" src="images/alcisLogo.png"/>Accueil</h1>
            </div>
            
            <div role="main" class="ui-content">
                <center>
                    <br/><br/><br/> 
                    <h1>Tableau de bord</h1>
                    <br/><br/>
                    <div class="grid">
                        <div class="card">
                            <div class="cardTitre">Nombre de véhicules</div>
                            <div class="container">
                                <div id="cnv" class="cardValeur">21</div>
                                <div class="cardUnite">véhicules</div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="cardTitre">Age moyen</div>
                            <div class="container">
                                <div id="cam" class="cardValeur">1,2</div>
                                <div class="cardUnite">ans</div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="cardTitre">Nombre de véhicules hors zone</div>
                            <div class="container">
                                <div id="cnvhz" class="cardValeur">3</div>
                                <div class="cardUnite">véhicules</div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="cardTitre">Kilométrage moyen</div>
                            <div class="container">
                                <div id="ckm" class="cardValeur">32 456</div>
                                <div class="cardUnite">km</div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="cardTitre">Kilométrage mensuel moyen</div>
                            <div class="container">
                                <div id="ckmm" class="cardValeur">1 834</div>
                                <div class="cardUnite">km/mois</div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="cardTitre">Conso. mensuelle moyenne</div>
                            <div class="container">
                                <div id="ccmm" class="cardValeur">6,3</div>
                                <div class="cardUnite">l/100km</div>
                            </div>
                        </div>
                    </div>
                    <br/><br/><br/><br/><br/>
                    <form id="formLogin" method="post" action="alfoxControl.jsp">
                        <input name="action" id="logout" type="hidden" value="logout"/><br/>
                        <button type="submit" id="submitOK" name="submitOK">Déconnexion</button>
                    </form>
                    <p class="mini">V0.1 - Mars 2018<br/>Développement : BTS SNIR Lycée V.Hugo Colomiers</p>
                    <br/><br/><br/>
                </center>
            </div>
            <%@include file="/includes/footer.jspf"%>
        </div>
    </body>
</html>