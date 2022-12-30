<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="Viewuserdetails.aspx.cs" Inherits="admin_Viewuserdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            width: 1000px;
            margin-left: 11px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <table class="tbl">
    <tr>
        <td class="auto-style15">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">
            User Details</td>
    </tr>
    <tr>
        <td class="auto-style5">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style15">
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                 Width="872px" 
                AllowPaging="True"  BackColor="White" 
                BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                GridLines="Vertical" ForeColor="Black" DataKeyNames="Id" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />

            <Columns>
            <asp:BoundField HeaderText="Id" DataField="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField HeaderText="Name" DataField="Name" SortExpression="Name" />
                <asp:BoundField HeaderText="Lastname" DataField="lastname" SortExpression="lastname" />
                <asp:BoundField HeaderText="Address" DataField="address" SortExpression="Address" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="mobile" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
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
        </td>
    </tr>
   
   
</table>
</asp:Content>

