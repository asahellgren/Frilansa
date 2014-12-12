<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="search_results.aspx.cs" Inherits="frilansa.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content">

        <div id="tipue_search_content">
            <div id="tipue_search_loading"></div>
        </div>

        <script>
            $(document).ready(function () {
                $('#tipue_search_input').tipuesearch({
                    'mode': 'live',
                    //'liveDescription': '#logo2',
                    'liveContent': '.wrapper'
                });

            });
        </script>


    </div>
</asp:Content>
