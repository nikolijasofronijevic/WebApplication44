<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication44._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
         </br>
         </br>
        <h1>Ormar Aleksandre Prijovic</h1>
        </br>
        </br>
        <p1>Dobro dosli u officijalnu fanpage stranicu koja Vas obavestava o odeci koju Aleksandra Prijovic nosi</p1>
        </br>
        </br>
        <p1>Pre nego sto krenemo, <u>morate</u> odgovoriti na jedno <b><u>pitanje</u></b></p1>
        </br>
        </br>
        <p>Da li ste fan Aleksandre Prijovic</p>
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Da" />
        <asp:CheckBox ID="CheckBox2" runat="server" Text="Ne" />
        <asp:Button ID="Button1" runat="server" Text="Potvrdi" OnClick="Button1_Click" />
        <div id="message" runat="server" style="color: red; font-weight: bold;"></div>
    </div>

    
               
       
   

</asp:Content>
