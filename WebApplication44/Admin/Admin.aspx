<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication44.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <h2>Admin Panel</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="sifra" HeaderText="Šifra" />
            <asp:BoundField DataField="mestoNastupa" HeaderText="Mesto Nastupa" />
            <asp:BoundField DataField="vrstaOdece" HeaderText="Vrsta Odeće" />
            <asp:BoundField DataField="naziv" HeaderText="Naziv" />
            <asp:BoundField DataField="kreator" HeaderText="Kreator" />
            <asp:BoundField DataField="cena" HeaderText="Cena" />
            <asp:BoundField DataField="slika" HeaderText="Slika" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
    <br />
    Šifra: <asp:TextBox ID="txtSifra" runat="server"></asp:TextBox><br />
    Mesto Nastupa: <asp:TextBox ID="txtMestoNastupa" runat="server"></asp:TextBox><br />
    Vrsta Odeće: <asp:TextBox ID="txtVrstaOdece" runat="server"></asp:TextBox><br />
    Naziv: <asp:TextBox ID="txtNaziv" runat="server"></asp:TextBox><br />
    Kreator: <asp:TextBox ID="txtKreator" runat="server"></asp:TextBox><br />
    Cena: <asp:TextBox ID="txtCena" runat="server"></asp:TextBox><br />
    Slika: <asp:TextBox ID="txtSlika" runat="server"></asp:TextBox><br />
  
    <asp:Button ID="btnDelete" runat="server" Text="Obriši" OnClick="btnDelete_Click" /><br />
    <asp:Button ID="btnAdd" runat="server" Text="Dodaj" OnClick="btnAdd_Click"  /><br />
    <asp:Button ID="btnUpdate" runat="server" Text="Ažuriraj" OnClick="btnUpdate_Click"/><br />
</asp:Content>
