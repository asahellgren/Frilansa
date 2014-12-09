<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="frilansa.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content">
        <div class="image">
            <img src="Images/jobs2.jpg" /></div>
        <a id="aboutus"></a>
        <div id="textpart1">

            <h1 class="center">EN GEMENSAM PORTAL FÖR MEDIABRANSCHEN</h1>
            <p class="center">Detta är platsen för dig som är frilansare inom mediabranschen. Vår vision är att skapa en gemensam portal för er inom denna yrkesgrupp.</p>

            <p class="center">
                Frilansa håller dig ständigt uppdaterad
            med de senaste branschnyheterna, du har möjlighet att använda vår livechatt för att prata med andra i branschen och det finns även möjlighet att diskutera olika ämnen i vårt forum.
            </p>

            <p class="center">
                Inom kort kommer det finnas möjlighet att skapa en profil där du kan visa potentiella arbetsgivare vilken kompetens du har och när du är ledig
            för att ta uppdrag. Du kommer även att kunna köpa och sälja mediautrustning.
            </p>

        </div>
        <div class="image">
            <a id="news"></a>
            <img src="Images/newsevents.jpg" />
        </div>
        <div id="textpart2">
            <h1 class="center">Senaste Branschnyheterna</h1>
            <div id="news1"><b>FOTOMÄSSA 25/1 2015</b><p>Missa inte fotomässan på Älvsjömässan den 25/1 2015. Där kommer finnas mer än 30 uställare blanda annat Canon och Panasonic</p>
            </div>
            <div id="news2"><b>ÖPPET HUS PÅ SVT</b><p>Nu är det snart dags för SVT:s årliga öppet hus-dag. Det kommer bjudas på kaffe och bullar. Läs mer om arrangemanget här.</p>
            </div>
            <div id="news3"><b>FRILANSARE POPULÄRT 2014</b><p>Det har blivit populärt att jobba som frilansare. Allt fler väljer denna anställningsform av olika anledningar. Läs mer om SIFO:s undersökning här.</p>
            </div>

        </div>
        <div class="image">
            <a id="contact"></a>
            <img src="Images/newsevents.jpg" />
        </div>
        <div id="textpart3"> <!--SKRIV KONTAKTFORMULÄR NEDAN-->
            <h1 class="center">Kontaktformulär</h1>
            <p>Name: </p><input type="text" id="name"/>
        </div>
    </div>

</asp:Content>
