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
        .style6 
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
        .auto-style1 {
            width: 181px;
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
                            <table align="center" class="style1" style="border-bottom-style: ridge; border-width: medium; border-color: purple">
                                <tr>
                                    <td class="style8" align="center" rowspan="2">
                                        <asp:Image ID="Image1" runat="server" Height="53px" Width="72px" ImageUrl="~/Images/"/> &nbsp;
                                    </td>
                                    <td class="style6" rowspan="2">
                                        <asp:LinkButton ID="lblLogo" runat="server" Text="Shopping Cart" Font-Size="20pt" ForeColor="#6600CC" OnClick="lblLogo_Click"></asp:LinkButton>
                                        <br />
                                    </td>
                                    <td class="style7" rowspan="2">
                                        <asp:Image ID="Image3" runat="server" Height="67px" ImageUrl="~/Images/" Width="282px" />
                                    </td>
                                    <td rowspan="2" align="right">
                                        <asp:Image ID="Image2" runat="server" Height="53px" ImageUrl="~/Images/" Width="70px"/>
                                    </td>
                                    <td align="left">
                                        <asp:LinkButton ID="btnShoppingCart" runat="server" Font-Underline="false" Font-Size="20pt" ForeColor="Purple" OnClick="btnShoppingCart_Click">0</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3" valign="middle">
                                        <asp:HyperLink ID="linkRegister" Text="Register" runat="server" NavigateUrl="Register.aspx" Visible="true"></asp:HyperLink>
                                        <asp:HyperLink ID="linkCart" runat="server" NavigateUrl="~/ShoppingCart.aspx" Visible="false"></asp:HyperLink>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table align="center" class="style1" style="border: thin ridge Purple">
                                <tr>
                                    <td class="style2">
                                        &nbsp;
                                        <asp:Label ID="lblCategoryName" runat="server" Font-Size="15pt" ForeColor="Purple"></asp:Label>
                                    </td>
                                    <td class="style3" style="border-left-style: ridge; border-width: thin; border-color:black">
                                        &nbsp;
                                        <asp:Label ID="lblProduct" runat="server" Text="Products" Font-Size="15pt" ForeColor="Purple"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table align="center" class="style1">
                                <tr>
                                    <td class="style2" valign="top">
                                        <asp:Panel ID="pnlProducts" runat="server" ScrollBars="Auto" Height="500px" BorderColor="Black" BorderStyle="Inset" BorderWidth="1px">
                                            <asp:DataList ID="dlProducts" runat="server" RepeatColumns="3" Width="600px" Font-Bold="false" Font-Italic="false" Font-Overline="false" Font-Strikeout="false" Font-Underline="false">
                                                <ItemTemplate>
                                                    <div align="left">
                                                        <table cellspacing="1" class="style4" style="border: 1px ridge Purple">
                                                            <tr>
                                                                <td style="border-bottom-style: ridge; border-width: 1px; border-color: black" class="auto-style1">
                                                                    <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("Name") %>' Style="font-weight: 700"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="border-bottom-style: ridge; border-width: 1px; border-color: black" class="auto-style1">
                                                                    <asp:Image ID="Image4" runat="server" Text='<%# Bind("ImageUrl") %>' Style="font-weight: 700" Width="173px" Height="160px"></asp:Image>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="border-bottom-style: ridge; border-width: 1px; border-color: black" class="auto-style1">
                                                                    Price: <asp:Label ID="lblPrice" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="border-bottom-style: ridge; border-width: 1px; border-color: black" class="auto-style1">
                                                                    <asp:Button ID="btnAddCart" runat="server" Text="Add To Cart" CommandArgument="<%# Bind('ProductID') %>" BorderColor="Black" BorderStyle="Inset" OnClick="btnAddToCart_Click" Width="171px" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </asp:Panel>
                                    </td>
                                    <td class="style3" valign="top" align="center">
                                        <asp:Panel ID="pnlCategories" runat="server" ScrollBars="Auto" Height="500px" BorderColor="Black" BorderStyle="Inset" BorderWidth="1px">
                                            <asp:DataList ID="dlCategories" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="252px"> 
                                                <FooterStyle BackColor="#CCCC99" ForeColor="Black"/>
                                                <HeaderStyle BackColor="#333333" Font-Bold="true" ForeColor="White" />
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lbtnCategory" runat="server" Text="<%# Bind('CategoryName') %>" OnClick="lbtnCategory_Click" CommandArgument="<%# Bind('CategoryID') %>"></asp:LinkButton>
                                                </ItemTemplate>
                                                <SelectedItemStyle BackColor="#CC3333" Font-Bold="true" ForeColor="White" />
                                            </asp:DataList>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlCUstomer" runat="server" ScrollBars="Auto" Height="500px" BorderColor="Black" BorderStyle="Inset" BorderWidth="1px" Width="251px">
                                            <div align="center">
                                                <h4>Add New Products:</h4>
                                                <hr />
                                            </div>
                                            <table align="center" cellspacing="1" style="width: 100%; background-color: white;">
                                                <tr>
                                                    <td align="left">
                                                        Name:
                                                    </td>
                                                    <td align="left">
                                                        <asp:TextBox ID="txtProductName" runat="server" Width="120px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        Email:
                                                    </td>
                                                    <td style="width: 50%;" align="left">
                                                        <asp:TextBox ID="txtEmail" runat="server" Width="120px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding-left: 100px;" align="left">
                                                        Phone:
                                                    </td>
                                                    <td align="left">
                                                        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding-left: 100px;" align="left">
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        Address:
                                                    </td>
                                                    <td style="width: 50%;" align="left">
                                                        <asp:TextBox ID="txtAddress" runat="server" Width="120px" Height="113px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding-left: 100px;" align="left">
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding-left: 100px;" align="left">
                                                        Total #:
                                                    </td>
                                                    <td style="width: 50%;" align="left">
                                                        <asp:TextBox ID="txtTotalQuantity" runat="server" Width="120px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding-left: 100px;" align="left">
                                                        &nbsp;
                                                    </td>
                                                    <td style="width: 50%;" align="left">
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding-left: 100px;" align="left">
                                                        Total:
                                                    </td>
                                                    <td style="width: 50%;" align="left">
                                                        <asp:TextBox ID="txtTotalPrice" runat="server" Width="120px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding-left: 100px;" align="left">
                                                        &nbsp;
                                                    </td>
                                                    <td style="width: 50%;" align="left">
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding-left: 100px;" align="left">
                                                    </td>
                                                    <td style="width: 50%;" align="left">
                                                        <asp:Button ID="btnAddNewProduct" runat="server" OnClick="btnSubmit_Click" Text="Order" Width="125px"/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding-left: 100px;" align="left">
                                                        &nbsp;
                                                    </td>
                                                    <td style="width: 50%;" align="left">
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                       <asp:Panel ID="pnlEmptyCart" runat="server" Visible="false">
                                           <div style="text-align: center;">
                                               <br />
                                               <br />
                                               <br />
                                               <br />
                                               <br />
                                               <asp:Label ID="lblEmptyCart" runat="server" Text="Empty Shopping Cart" Width="500px" Font-Size="Large"></asp:Label>
                                               <br />
                                               <br />
                                               <br />
                                               <br />
                                               <br />
                                               <br />
                                           </div>
                                       </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Panel ID="pnlOrderPlaceSuccessfully" runat="server" Visible="false">
                                            <div style="text-align: center;">
                                                <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/" Width="500px" />
                                                <br /><br />
                                                <label>Place Order Successfully!</label><br />
                                                <br />
                                                Order Details Sent to Your Email Already.<br />
                                                <br />
                                                <br />
                                                <asp:Label ID="lblTransactionNo" runat="server" Style="font-weight: 700"></asp:Label>
                                                <br />
                                                <br />  
                                                <br />
                                                <a href="TrackOrder.aspx" target="_blank">View Order Details</a>
                                                <br />
                                                <br />
                                                <br />
                                            </div>
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center" style="border: thin ridge Purple">
                                        &nbsp;&copy; <a href="">Daniel@ASU</a>
                                        || <a href="Admin/Login.aspx">AdminPanel</a>
                                        || <a href="TrackOrder.aspx" target="_blank">Track Order Status</a>
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
