<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="PRODUCT.aspx.cs" Inherits="PRODUCT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style6
        {
            width: 122px;
        }
    .auto-style12 {
        height: 490px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                PRODUCT</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" 
                RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                <ItemTemplate>
                    <table style="border: thin solid #339966" width="180">
                        <tr>
                            <td class="tblhead">
                                <asp:Label ID="lblname" runat="server" Text='<%#Eval("iname") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <asp:Image ID="Image4" runat="server" Height="135px" ImageUrl='<%#Eval("image") %>'  style="text-align: center" 
                                    Width="112px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="border-top-style: solid; border-top-width: thin; border-top-color: #339966">
                                <table width="100%">
                                    <tr>
                                        <td class="style6">
                                            Price :
                                            <asp:Label ID="lblprice" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Button ID="Button9" runat="server" CssClass="btnmenu" CommandArgument='<%#Eval("id") %>' Height="25px" 
                                                Text="View" Width="70px" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>

