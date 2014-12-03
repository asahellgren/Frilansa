<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="chat.aspx.cs" Inherits="frilansa.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        
        <p>Antal uppkopplade: </p><div id="hitCountValue">0</div>
        <div id="displayname"></div><br/>
        <ul id="chatUsers"></ul><br/>
        <input type="text" id="message" />
        <input type="button" id="sendmessage" value="Send" />
        
        
          
        <ul id="chatMessages"></ul>
    </div>
</asp:Content>
