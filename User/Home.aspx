<%@ Page Title="" Language="C#" MasterPageFile="~/User/Member.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="UserHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 828px;
        }
        .auto-style3cake {
            width: 1275px;
            height: 48px;
            font-size: large;
            color: #FF0066;
        }
        .auto-style4 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            <table>
                <tr>
                    <td class="auto-style3cake" style="background-color: #800000">
                        <span class="auto-style4">Cakes</span>
                    </td>
           
                </tr>
            </table>
           </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" 
                RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand1">

                <ItemTemplate>
                    <table style="border: thin solid #339966" width="220">
                        <tr>
                            <td class="tblhead">    
                                <asp:Label ID="lblname" runat="server" Text='<%#Eval("IName") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <asp:Image ID="Image4" runat="server" Height="135px" ImageUrl='<%#Eval("Image") %>'  style="text-align: center" 
                                    Width="112px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="border-top-style: solid; border-top-width: thin; border-top-color: #339966">
                                <table width="100%">
                                    <tr>
                                        <td class="style6">
                                            Price :
                                            <asp:Label ID="lblprice" runat="server" Text='<%#Eval("Price") %>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Button ID="Button9" runat="server" CssClass="btn" CommandArgument='<%#Eval("Id") %>' Height="25px" 
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
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
