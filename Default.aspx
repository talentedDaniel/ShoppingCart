<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ShoppingCart.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1 
        {
            width:900px;
        }
        .style2 
        {
            width:633px;
            text-align: left;
        }
        .style3 
        {
            width:257px;
            text-align: center;
        }
        .style4 
        {
            width: 185px;
            text-align: center;
        }
        .styple6 
        {
            width:260px;
            text-align: left;
        }
        .style7
        {
            width: 427px;
            text-align: center;
        }
        .style8 
        {
            width: 108px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <table align="center" class="style1">
                    <tr>
                        <td>
                            <table align="center" class="style1" style="border-bottom-style: ridge; border-width: medium; border-color: aquamarine">
                                 <tr>
                                     <td class="style8" align="center" rowspan="2">
                                         <asp:Image ID="Image1" runat="server" Height="53px" Width="72px" ImageUrl="~/Images/"/>
                                         &nbsp;
                                     </td>
                                     <td class="style6" rowspan="2">
                                         <asp:LinkButton ID="lblLogo" runat="server" Text="ShoppingCart" font-size="20px" ForeColor="purple" OnClick="lblLogo_Click"></asp:LinkButton>
                                     </td>
                                     <td class="style7" rowspan="2">
                                         <asp:Image ID="Image3" runat="server" Height="67px" Width="282px" ImageUrl="~/Images/"/>
                                     </td>
                                     <td rowspan="2" align="right">
                                         <asp:Image ID="Image2" runat="server" Height="53px" Width="70px" ImageUrl="~/Images/"/>
                                     </td>
                                     <td align="left">
                                         <asp:LinkButton ID="btnShoppingCart" runat="server" Font-Size="20pt" ForeColor="Black" OnClick="btnShoppingCart_Click" Text="ShoppingCart">0</asp:LinkButton>
                                     </td>
                                 </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
