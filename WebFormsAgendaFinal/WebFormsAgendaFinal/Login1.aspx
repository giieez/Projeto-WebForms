<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login1.aspx.cs" Inherits="WebFormsAgendaFinal.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" Text="Email"></asp:Label>
        </div>
        <asp:TextBox ID="txbgmail" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Senha"></asp:Label>
        <br />
        <asp:TextBox ID="txbsenha" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:Button ID="btlogar" runat="server" OnClick="btlogar_Click" Text="Logar" />
        <br />
        <asp:Label ID="ID1" runat="server"></asp:Label>
    </form>
</body>
</html>
