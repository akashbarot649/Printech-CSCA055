<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="ap_project.main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/printech.css"/>
</head>
<body >
    <div class="main">
    <form id="form1" runat="server">
        
        <div class="left">
            
            <asp:Menu ID="Menu1" runat="server"  ForeColor="White" CssClass="menu" >
                
                <Items>
                    <asp:MenuItem Text="Home" Value="main"></asp:MenuItem>
                    <asp:MenuItem Text="Category" Value="Category"></asp:MenuItem>
                    <asp:MenuItem Text="Product" Value="Product"></asp:MenuItem>
                </Items>
            </asp:Menu>
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
            <div class="buttons">
                <div class="btn_txt">
                <h2>Inventory Details</h2>
                    </div>
                <div class="btn_btn">
                    <div class="btn_left">
                         <asp:Button ID="Button1" runat="server" Text="Add Category" CssClass="btn_design" />
                    </div>
                    <div class="btn_right">
                <asp:Button ID="Button2" runat="server" Text="Add Product" BackColor="#F6A845" CssClass="btn_design" />
                        </div>
                    </div>
            </div>
            <div class="data">
                <div class="cat_tbl">
                <h3 >Category Details</h3>
                <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center">
                    <HeaderStyle CssClass="gridviewheader" />
                    <RowStyle CssClass="gridviewrow" />
                </asp:GridView>
                    </div>
                <div class="pro_tbl">
                <h3 >Product Details</h3>
                <asp:GridView ID="GridView3" runat="server" HorizontalAlign="Center" >
                    <HeaderStyle CssClass="gridviewheader" />
                    <RowStyle CssClass="gridviewrow" />
                </asp:GridView>
                    </div>
            </div>
        </div>
    </form>
        </div>
</body>
</html>
