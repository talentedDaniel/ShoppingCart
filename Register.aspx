<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ShoppingCart.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <h4>Customer Registration:</h4>
        <hr />
    </div>
    <table align="center" cellspacing="1" style="width: 100%; background-color: white;">
        <tr>
            <td style="width: 50%; padding-left: 100px;" align="left">
                User Name:
            </td>
            <td style="width: 50%;" align="left">
                <asp:TextBox ID="txtUsername" runat="server" Width="210px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 50%; padding-left: 100px;" align="left">
                &nbsp;
            </td>
            <td style="width: 50%;" align="left">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 50%; padding-left: 100px; height: 25px;" align="left">
                Password:
            </td>
            <td style="width: 50%; height: 25px;" align="left">
                <asp:TextBox ID="txtPassword" runat="server" Width="210px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 50%; padding-left: 100px;" align="left">
                &nbsp;
            </td>
            <td style="width: 50%;" align="left">
                &nbsp;
            </td>
        </tr>
                <tr>
            <td style="width: 50%; padding-left: 100px; height: 25px;" align="left">
                Confirm:
            </td>
            <td style="width: 50%; height: 25px;" align="left">
                <asp:TextBox ID="txtConfirm" runat="server" Width="210px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 50%; padding-left: 100px;" align="left">
                &nbsp;
            </td>
            <td style="width: 50%;" align="left">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 50%; padding-left: 100px;" align="left">
                Email:
            </td>
            <td style="width: 50%;" align="left">
                <asp:TextBox ID="txtEmail" runat="server" Width="210px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 50%; padding-left: 100px;" align="left">
                &nbsp;
            </td>
            <td style="width: 50%;" align="left">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 50%; padding-left: 100px;" align="left">
            </td>
            <td style="width: 50%;" align="left">
                <asp:Button ID="btnAddNewProduct" runat="server" OnClick="btnRegister_Click" Text="Register" Width="210px"/>
            </td>
        </tr>
        <tr>
            <td style="width: 50%; padding-left: 100px;" align="left">
                &nbsp;
            </td>
            <td style="width: 50%;" align="left">
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
