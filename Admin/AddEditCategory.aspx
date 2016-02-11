<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddEditCategory.aspx.cs" Inherits="ShoppingCart.Admin.AddEditCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <h4>Add New Category:</h4>
        <hr />
    </div>
    <table align="center" cellspacing="1" style="width: 100%; background-color: white;">
         <tr>
            <td style="width: 50%; padding-left: 100px;" align="left">
                Category Name:
            </td>
            <td style="width: 50%;" align="left">
                <asp:TextBox ID="txtCategoryName" runat="server" Width="210px"></asp:TextBox>
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
                <asp:Button ID="btnAddNewCategory" runat="server" OnClick="btnSubmit_Click" Text="Submit" Width="210px"/>
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
