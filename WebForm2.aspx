﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Demo.WebForm2" %>
<%@ OutputCache Duration="60" VaryByParam="DropDownList1"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Select Product:
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Text="All" Value="All"></asp:ListItem>
                <asp:ListItem Text="Laptops" Value="Laptops"></asp:ListItem>
                <asp:ListItem Text="iPhone" Value="iPhone"></asp:ListItem>
                <asp:ListItem Text="LCD TV" Value="LCD TV"></asp:ListItem>
                <asp:ListItem Text="Desktop" Value="Desktop"></asp:ListItem>   
            </asp:DropDownList>
            <br />
            <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <br />
            Server Time:<asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            Client Time:
               <script type="text/javascript">
                   document.write(Date());
               </script>
        </div>    
    </form>
</body>
</html>
