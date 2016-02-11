﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ShoppingCart.Admin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin: 200px">
        <table align="center" class="border" style="border: 1px ridge #999999; width: 450px;">
            <tr>
                <td align="center" colspan="2">
                    <hr />
                    <asp:Label ID="labelAlert" runat="server" Font-Names="Aharoni" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="Label1" runat="server" Font-Names="Aharoni" ForeColor="Purple" Text="Shopping Cart" Style="font-weight: 700"></asp:Label>
                    <hr />
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 50%">
                    Username:
                </td>
                <td style="width: 50%">
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 50%">
                    Password:
                </td>
                <td style="width: 50%">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 50%">
                    &nbsp;
                </td>
                <td style="width: 50%">
                    <asp:Button ID="BtnLogin" runat="server" Text="Login" OnClick="BtnLogin_Click" Width="130px"/>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
