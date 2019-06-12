<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editproduct.aspx.cs" Inherits="ap_project.editproduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/printech.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
       <div class="left">
            <div class="menu">
                <asp:Menu ID="Menu1" runat="server"  ForeColor="White" CssClass="menu" >
                
                <Items>
                    <asp:MenuItem Text="Home" Value="main"></asp:MenuItem>
                    <asp:MenuItem Text="Category" Value="Category"></asp:MenuItem>
                    <asp:MenuItem Text="Product" Value="Product"></asp:MenuItem>
                </Items>
            </asp:Menu>
            </div>
        </div>
        <div class="right">
            <div class="top">
                <div class="cmplogo">
                     <h1 style="text-align:center;">PRINTECH</h1>
                </div>
                <div class="logout">
                    <a href="#" style="color:#ffffff;" >Logout</a>
                </div>
            </div>
            <div class="addcategory_bottom">
                <div class="bottom_top">
                    <h2>Edit Product</h2>
                </div>
                <div class="bottom_middle">
                    <table style="width:100%; border-spacing:15px;">
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Category"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="catid" runat="server" Height="16px" Width="165px">
                                </asp:DropDownList>
                            </td>  
                            <td>

                                <asp:Label ID="Label3" runat="server" Text="Product Name"></asp:Label>

                            </td>
                            <td>

                                <asp:TextBox ID="txtproname" runat="server" Width="165px"></asp:TextBox>

                            </td>
                        </tr>
                        <tr>
                            <td >
                                <asp:Label ID="Label2" runat="server" Text="Product ID"></asp:Label>
                            </td>
                            <td >
                                <asp:TextBox ID="txtcatid" runat="server" Width="165px"></asp:TextBox>
                            </td>   
                            <td>
                                 <asp:Label ID="Label6" runat="server" Text="Available Quantity"></asp:Label>
                            </td>
                            <td>
                                 <asp:DropDownList ID="avaquantity" runat="server" Height="20px" Width="165px">
                                </asp:DropDownList>
                            </td>
                        </tr>  
                        <tr>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text="Sales Price"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" Width="165px"></asp:TextBox>
                            </td>
                            <td>
                               
                            </td>
                            <td>
                               
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <asp:Button ID="pro_update" runat="server" CssClass="btn_design" Text="Update" />
                            </td>
                            <td></td>
                            <td ><asp:Button ID="pro_cancel" runat="server" CssClass="btn_design" Text="Cancel"  /></td>
                            
                        </tr>
                    </table>
                    
                </div>
                <div class="bottom_bottom">
                    <asp:GridView ID="GridView1" runat="server">
                        <HeaderStyle CssClass="gridviewheader" />
                        <RowStyle CssClass="gridviewrow" />
                    </asp:GridView>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
