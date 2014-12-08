﻿<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="chat.aspx.cs" Inherits="frilansa.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content">
        <div class="image">
            <img src="Images/people.jpg" />
        </div>
        <h1 class="center">Live chatt</h1>
        <div id="chatContainer">
            <div id="chat">
                <div id="displayname"></div>
                <div id="numberOfUsers">
                    <span>Inloggade: </span>
                    <span id="hitCountValue">0</span>
                    <span>användare</span><br />
                </div>
                <input type="text" id="message" />
                <input type="button" id="sendmessage" value="Skicka" /><br />
                <div id="chatMessages"></div>
            </div>
            <div id="namesOfActiveUsers"></div>

        </div>
        <div id="endChat"></div>
    </div>
    <!--Script references. -->
    <!--Reference the jQuery library. -->
    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <!--Reference the SignalR library. -->
    <script src="Scripts/jquery.signalR-2.0.0.min.js"></script>
    <!--Reference the autogenerated SignalR hub script. -->
    <script src="signalr/hubs"></script>
    <!--Add script to update the page and send messages.-->
    <script src="Scripts/jquery.js" type="text/javascript">
    </script>
</asp:Content>
