<%@ Page Title="" Language="C#" MasterPageFile="~/User/Member.master" AutoEventWireup="true" CodeFile="MyOrder.aspx.cs" Inherits="User_MyOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            My Order</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" Width="872px" 
                BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
     
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField HeaderText="Cake Name" DataField="IName" SortExpression="IName" />
                        <asp:BoundField HeaderText="Quantity" DataField="Qnt" SortExpression="Qnt" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [OrderMst] WHERE [Id] = @Id" InsertCommand="INSERT INTO [OrderMst] ([Id], [Uname], [IName], [Qnt], [image], [Price], [TPrice]) VALUES (@Id, @Uname, @IName, @Qnt, @image, @Price, @TPrice)" SelectCommand="SELECT * FROM [OrderMst]" UpdateCommand="UPDATE [OrderMst] SET [Uname] = @Uname, [IName] = @IName, [Qnt] = @Qnt, [image] = @image, [Price] = @Price, [TPrice] = @TPrice WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                    <asp:Parameter Name="Uname" Type="String" />
                    <asp:Parameter Name="IName" Type="String" />
                    <asp:Parameter Name="Qnt" Type="Int32" />
                    <asp:Parameter Name="image" Type="String" />
                    <asp:Parameter Name="Price" Type="Double" />
                    <asp:Parameter Name="TPrice" Type="Double" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Uname" Type="String" />
                    <asp:Parameter Name="IName" Type="String" />
                    <asp:Parameter Name="Qnt" Type="Int32" />
                    <asp:Parameter Name="image" Type="String" />
                    <asp:Parameter Name="Price" Type="Double" />
                    <asp:Parameter Name="TPrice" Type="Double" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
