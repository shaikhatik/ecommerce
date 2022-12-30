<%@ Page Title="" Language="C#" MasterPageFile="~/User/Member.master" AutoEventWireup="true" CodeFile="MyCart.aspx.cs" Inherits="User_MyCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style4 {
        height: 30px;
        color: maroon;
        text-align: center;
        font-weight: bold;
        padding: 2px;
        font-size: 14px;
        width: 892px;
    }
    .auto-style5 {
        width: 892px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="auto-style4">
            My Shopping Cart</td>
    </tr>
    <tr>
        <td class="auto-style5">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                style="text-align: center" Width="885px" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" DataKeyNames="Id" 
             BackColor="White" 
                BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <Columns>
            <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
            <asp:Image runat="server" ID="imgg" ImageUrl='<%#Eval("image") %>'  Height="40px" Width="35px"/>
            </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderText="ItemName" DataField="Iname" />
            <asp:BoundField HeaderText="Price" DataField="price" />
            <asp:BoundField HeaderText="Quantity" DataField="Qnt" />
            <asp:BoundField HeaderText="TotalPrice" DataField="TPrice" />
            </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#666633" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td align="center" class="auto-style5">
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="text-align: center" class="auto-style5">
            <asp:Button ID="Button2" runat="server" CssClass="btn" 
                Text="Continue Shopping" PostBackUrl="~/User/Home.aspx" 
                onclick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" CssClass="btn" Text="Check Out" 
                onclick="Button3_Click" PostBackUrl="~/User/Checkout.aspx" />
        </td>
    </tr>
</table>
</asp:Content>



