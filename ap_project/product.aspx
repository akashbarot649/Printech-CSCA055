<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="ap_project.product" %>

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
                <div class="cat_middle">
                    <table style="width: 100%;">
                        <tr>
                            <td><div class="cat_mid_left"><h2>Product List</h2></div></td>
                            
                        
                            <td><div class="cat_mid_right"><asp:Button ID="addproduct" runat="server" CssClass="btn_design" Text="Add Product"  /></div></td>
                            
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
