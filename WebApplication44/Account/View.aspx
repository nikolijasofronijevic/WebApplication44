<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="WebApplication44.Account.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
     </br>
     </br>
     </br>
     </br>
    
    <h3>Pretrazite podatke</h3>
    
    <div>
        <asp:Label ID="labelVrstaOdece" runat="server" Text="Izaberite vrstu odeće:"></asp:Label>
        <asp:DropDownList ID="ddlVrstaOdece" runat="server">
            <asp:ListItem Text="Izaberite..." Value=""></asp:ListItem>
           
        </asp:DropDownList>
    </div>
    </br>
   
    <div>
        <asp:Label ID="labelKreator" runat="server" Text="Izaberite kreatora:"></asp:Label>
        <asp:DropDownList ID="ddlKreator" runat="server">
            <asp:ListItem Text="Izaberite..." Value=""></asp:ListItem>
           
        </asp:DropDownList>
    </div>
     </br>
    <asp:Button ID="btnPretrazi" runat="server" Text="Pretraži" OnClick="btnPretrazi_Click" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="sifra" HeaderText="ID" />
            <asp:BoundField DataField="mestoNastupa" HeaderText="Mesto Nastupa" />
            <asp:BoundField DataField="vrstaOdece" HeaderText="Vrsta Odeće" />
            <asp:BoundField DataField="naziv" HeaderText="Naziv" />
            <asp:BoundField DataField="kreator" HeaderText="Kreator" />
            <asp:BoundField DataField="cena" HeaderText="Cena" />
            
            <asp:ImageField DataImageUrlField="slika" HeaderText="Slika">
                <ControlStyle Height="180px" Width="180px"></ControlStyle>
            </asp:ImageField>
        </Columns>
    </asp:GridView>
</asp:Content>

