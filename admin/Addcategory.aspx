<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="Addcategory.aspx.cs" Inherits="admin_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <style type="text/css">
        .style12
        {
            width: 145px;
        }
        .style14
        {
            width: 232px;
        }
        .style17
        {
            height: 21px;
        }
            .auto1 {
                width: 145px;
                height: 240px;
            }
            .auto2 {
                width: 232px;
                height: 240px;
            }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td colspan="2" class="tblhead">
            Add Category</td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style14">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            Category Id:</td>
        <td class="style14">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            Category Name:</td>
        <td style="text-align: left">
            <asp:TextBox ID="txtname" runat="server" placeholder="Enter Category Name!!!" 
                CssClass="txt" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" 
                ErrorMessage="Enter Category" ForeColor="#CC3300"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style17">
            </td>
        <td style="text-align: left" class="style17">
            <asp:Button ID="btnadd" runat="server" BorderColor="#FFFF99" CssClass="btn" 
                style="margin-left: 0px" Text="ADD" Width="70px" onclick="btnadd_Click" 
                Height="30px" />
        </td>
    </tr>
    <tr>
        <td class="style17">
            &nbsp;</td>
        <td style="text-align: left" class="style17">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto1">
            </td>
        <td class="auto2">
            <asp:GridView ID="GridView1" runat="server"
                onrowcancelingedit="GridView1_RowCancelingEdit1" 
                onrowdeleting="GridView1_RowDeleting1" onrowediting="GridView1_RowEditing1" 
                onrowupdating="GridView1_RowUpdating1" AutoGenerateColumns="False" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" 
                BackColor="White" BorderColor="#DEDFDE" 
                BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                Width="343px" style="text-align: center" ForeColor="Black" 
                GridLines="Vertical">
                
                <AlternatingRowStyle BackColor="White" />
                
                <Columns>
                    <asp:BoundField DataField="CName" HeaderText="Category Name" SortExpression="CName" />
                   
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#004993" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            
            
            
        </td>
    </tr>
</table>
</asp:Content>

