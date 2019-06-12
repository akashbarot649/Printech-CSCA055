﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="category.aspx.cs" Inherits="ap_project.category" %>

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
                            <td>
                    <div class="cat_mid_left"><h2>Category List</h2></div>
                                </td>
                            <td>
                    <div class="cat_mid_right"><asp:Button ID="addcat" runat="server" CssClass="btn_design" Text="Add Category"  /></div>
                                </td>
                    </tr>
                            </table>
                    
                </div>
               
                <div class="bottom_bottom">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                        <Columns>
                            
                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:CommandField  ShowEditButton="True"      HeaderText="Edit"      ButtonType="Image" EditImageUrl="image/editicon.jpg" />
                            <asp:CommandField ShowDeleteButton="True"  HeaderText="Delete" ButtonType="Image" DeleteImageUrl="image/deleteicon.png" />
                        </Columns>
                        <HeaderStyle CssClass="gridviewheader" />
                        <RowStyle CssClass="gridviewrow" />
                    </asp:GridView>
                </div>
            </div>
        </div>
        
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [abc] WHERE [Id] = @Id" InsertCommand="INSERT INTO [abc] ([Id], [name]) VALUES (@Id, @name)" SelectCommand="SELECT * FROM [abc]" UpdateCommand="UPDATE [abc] SET [name] = @name WHERE [Id] = @Id">
             <DeleteParameters>
                 <asp:Parameter Name="Id" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="Id" Type="Int32" />
                 <asp:Parameter Name="name" Type="String" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="name" Type="String" />
                 <asp:Parameter Name="Id" Type="Int32" />
             </UpdateParameters>
         </asp:SqlDataSource>
        
    </form>
</body>
</html>