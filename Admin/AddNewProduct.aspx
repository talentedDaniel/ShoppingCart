<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddNewProduct.aspx.cs" Inherits="ShoppingCart.Admin.AddNewProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <h4>Add New Products:</h4>
        <hr />
    </div>
    <table align="center" cellspacing="1" style="width: 100%; background-color: white;">
        <tr>
            <td style="width: 50%; padding-left: 100px;" align="left">
                Product Name:
            </td>
            <td style="width: 50%;" align="left">
                <asp:TextBox ID="txtProductName" runat="server" Width="210px"></asp:TextBox>
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
                Product Category:
            </td>
            <td style="width: 50%;" align="left">
                <asp:DropDownList ID="categoryDropDownList" runat="server" Width="210px"></asp:DropDownList>
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
                Product Description:
            </td>
            <td style="width: 50%;" align="left">
                <asp:TextBox ID="txtProductDescription" runat="server" Width="210px" Height="150px"></asp:TextBox>
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
                Product Image:
            </td>
            <td style="width: 50%;" align="left">
                <asp:FileUpload ID="uploadProductImage" runat="server"/>
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
                Product Price:
            </td>
            <td style="width: 50%;" align="left">
                <asp:TextBox ID="txtProductPrice" runat="server" Width="210px"></asp:TextBox>
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
                Product Ingredient:
            </td>
            <td style="width: 50%;" align="left">
                <asp:DropDownList ID="productIngredientDropDownList" runat="server" Width="210px"></asp:DropDownList>
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
                <asp:Button ID="btnAddNewProduct" runat="server" OnClick="btnSubmit_Click" Text="Submit" Width="210px"/>
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
