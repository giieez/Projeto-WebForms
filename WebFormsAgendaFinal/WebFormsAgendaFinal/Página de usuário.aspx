﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PagePrincipal.Master" AutoEventWireup="true" CodeBehind="Página de usuário.aspx.cs" Inherits="WebFormsAgendaFinal.Página_de_usuário" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Lista de usuários</h3>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Email" DataSourceID="SqlDataSourceUsuario" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="background-color:#FFF8DC;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                </td>
                <td>
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                </td>
                <td>
                    <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />
                </td>
                <td>
                    <asp:Label ID="SenhaLabel" runat="server" Text='<%# Eval("Senha") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color:#008A8C;color: #FFFFFF;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Atualizar" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                </td>
                <td>
                    <asp:Label ID="EmailLabel1" runat="server" Text='<%# Eval("Email") %>' />
                </td>
                <td>
                    <asp:TextBox ID="NomeTextBox" runat="server" Text='<%# Bind("Nome") %>' />
                </td>
                <td>
                    <asp:TextBox ID="SenhaTextBox" runat="server" Text='<%# Bind("Senha") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>Nenhum dado foi retornado.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserir" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Limpar" />
                </td>
                <td>
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                </td>
                <td>
                    <asp:TextBox ID="NomeTextBox" runat="server" Text='<%# Bind("Nome") %>' />
                </td>
                <td>
                    <asp:TextBox ID="SenhaTextBox" runat="server" Text='<%# Bind("Senha") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color:#DCDCDC;color: #000000;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                </td>
                <td>
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                </td>
                <td>
                    <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />
                </td>
                <td>
                    <asp:Label ID="SenhaLabel" runat="server" Text='<%# Eval("Senha") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                <th runat="server"></th>
                                <th runat="server">Email</th>
                                <th runat="server">Nome</th>
                                <th runat="server">Senha</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                </td>
                <td>
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                </td>
                <td>
                    <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />
                </td>
                <td>
                    <asp:Label ID="SenhaLabel" runat="server" Text='<%# Eval("Senha") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSourceUsuario" runat="server" ConnectionString="Data Source=10.0.0.159;Initial Catalog=BancoAgenda;Persist Security Info=True;User ID=sa;Password=Aprender2024;" SelectCommand="SELECT [Email], [Nome], [Senha] FROM [Usuario]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Usuario] WHERE [Email] = @original_Email AND [Nome] = @original_Nome AND [Senha] = @original_Senha" InsertCommand="INSERT INTO [Usuario] ([Email], [Nome], [Senha]) VALUES (@Email, @Nome, @Senha)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:BancoAgendaConnectionString.ProviderName %>" UpdateCommand="UPDATE [Usuario] SET [Nome] = @Nome, [Senha] = @Senha WHERE [Email] = @original_Email AND [Nome] = @original_Nome AND [Senha] = @original_Senha">
        <DeleteParameters>
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_Nome" Type="String" />
            <asp:Parameter Name="original_Senha" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Nome" Type="String" />
            <asp:Parameter Name="Senha" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nome" Type="String" />
            <asp:Parameter Name="Senha" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_Nome" Type="String" />
            <asp:Parameter Name="original_Senha" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
<br />
<asp:Label ID="IMsg" runat="server" Font-Bold="True" Font-Size="Larger"></asp:Label>
</asp:Content>
