﻿<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="frilansa.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content">
          
        <img src="Images/jobs2.jpg" class="img-responsive center" />
        <a id="aboutus"></a>
     
         <div id="textpart1">
            
            <h1 class="center">En gemensam portal för mediabranschen</h1>
            <p class="center">
                Detta är platsen för dig som är frilansare inom mediabranschen. Vår vision är att skapa en gemensam portal för er inom denna yrkesgrupp.
            </p>
            <p class="center">
                Frilansa håller dig ständigt uppdaterad
            med de senaste branschnyheterna, du kan gå in på vår livechatt för att snacka med andra i branschen och det finns även möjlighet att diskutera olika ämnen i vårt forum.           
            </p>

            <p class="center">
                Inom kort kommer det finnas möjlighet att skapa en profil där du kan visa potentiella arbetsgivare vilken kompetens du har och när du är ledig
            för att ta uppdrag. Du kommer även att kunna köpa och sälja mediautrustning.
           
            </p>
        </div>

        <img src="Images/newsevents.jpg" class="img-responsive center" />
       <a id="news"></a>
         <div id="textpart2">
            <h1 class="center">Senaste Branschnyheterna</h1>
            <br />
             <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <b>FOTOMÄSSA 25/1 2015</b><p>Missa inte fotomässan på Älvsjömässan den 25/1 2015. Där kommer finnas mer än 30 uställare blanda annat Canon och Panasonic</p>
                    <a class="btn btn-default" href="http://www.stockholmsmassan.se" target="_blank">Mer info</a>
                </div>
                <div class="col-md-4">
                    <b>ÖPPET HUS PÅ SVT</b><p>Nu är det snart dags för SVT:s årliga öppet hus-dag. Det kommer bjudas på kaffe och bullar. Missa inte detta arrangemang.</p>
                    <a class="btn btn-default" href="http://www.svt.se" target="_blank">Mer info</a>
                </div>
                <div class="col-md-4">
                    <b>FRILANSARE POPULÄRT 2014</b><p>Allt fler väljer att vara frilansare av olika anledningar. TCO har gjort en grundlig spaning inom området. </p>
                    <a class="btn btn-default" href="http://www.tco.se" target="_blank">Mer info</a>
                </div>
            </div>
                 </div>

        </div>

        <img src="Images/newsevents.jpg" class="img-responsive center" />
            <a id="contact"></a>
        <div id="textpart3">
            <!--SKRIV KONTAKTFORMULÄR NEDAN-->

            <h1 class="center">Kontaktformulär</h1>
            <p>Name: </p>
            <input type="text" id="name" />
        </div>
    </div>

</asp:Content>
