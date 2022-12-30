<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="VIEWORDER.aspx.cs" Inherits="admin_VIEWORDER" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
    <table class="auto-style6">
    <tr>
        <td colspan="2" class="tblhead">
            View Order</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" Width="872px" 
                AllowPaging="True" 
                 BackColor="White" 
                BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                GridLines="Vertical" ForeColor="Black" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <AlternatingRowStyle BackColor="White" />

            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField HeaderText="Id" DataField="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField HeaderText="Username" DataField="Uname" SortExpression="Uname" />
                <asp:BoundField HeaderText="Cake Name" DataField="IName" SortExpression="IName" />
                <asp:BoundField HeaderText="Quantity" DataField="Qnt" SortExpression="Qnt" />
                <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            </Columns>

                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#004993" ForeColor="White" Font-Bold="True" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
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
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
    
    
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
        }
    </style>
</asp:Content>


