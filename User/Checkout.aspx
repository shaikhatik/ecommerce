<%@ Page Title="" Language="C#" MasterPageFile="~/User/Member.master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="User_Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {}
        .auto-style3pay {
            color: #369;
            text-align: right;
            height: 30px;
        }
        .auto-style4 {
            height: 30px;
        }
        .auto-style5 {
            color: #369;
            text-align: right;
            height: 24px;
        }
        .auto-style6 {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Check Out Your Order...</td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table align="center" class="style9">
                    <tr>
                        <td class="auto-style5">
                            Total Payment :
                        </td>
                        <td class="auto-style6">
                            <asp:Label ID="lblpayment" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style6">
                            </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3pay">
                            Select Paymnt Type :</td>
                        <td class="auto-style4">
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="DropDownList1_SelectedIndexChanged" CssClass="txt">
                                <asp:ListItem>SELECT</asp:ListItem>
                                <asp:ListItem>CREDIT CARD</asp:ListItem>
                                <asp:ListItem>DEBIT CARD</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style4">
                            </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lbl" runat="server"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl" colspan="2">
                            <asp:Panel ID="Panel1" runat="server" Visible="False">
                                <table class="style8">
                                    <tr>
                                        <td>
                                            Bank Name :
                                        </td>
                                        <td style="text-align: left">
                                            <asp:DropDownList ID="drpbankname" runat="server" CssClass="txt">
                                                <asp:ListItem>SBI</asp:ListItem>
                                                <asp:ListItem>ICICI</asp:ListItem>
                                                <asp:ListItem>BOB</asp:ListItem>
                                                <asp:ListItem>HDFC</asp:ListItem>
                                                <asp:ListItem>DENA BANK</asp:ListItem>
                                                <asp:ListItem>UNION BANK</asp:ListItem>
                                                <asp:ListItem>AXIS BANK</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Branch&nbsp; :</td>
                                        <td style="text-align: left">
                                            <asp:DropDownList ID="drpbranch" runat="server" CssClass="txt">
                                                <asp:ListItem>BARODA</asp:ListItem>
                                                <asp:ListItem>LUCKNOW</asp:ListItem>
                                                <asp:ListItem>AHEMDABAD</asp:ListItem>
                                                <asp:ListItem>MUMBAI</asp:ListItem>
                                                <asp:ListItem>SURAT</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            16 Digit Card&nbsp; No :</td>
                                        <td>
                                            <asp:TextBox ID="txtcardno" runat="server" MaxLength="16" Width="171px" 
                                                CssClass="txt" OnTextChanged="txtcardno_TextChanged"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcardno" ErrorMessage="Enter Card No"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcardno" ErrorMessage="RegularExpressionValidator" ForeColor="#FF3300" ValidationExpression="^[\d]{16,16}$">Please Enter 16 Digit No.</asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            CVV No(3 Digit) :</td>
                                        <td style="text-align: left">
                                            <asp:TextBox ID="txtccv" runat="server" MaxLength="3" Width="68px" 
                                                CssClass="txt"></asp:TextBox>
                                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtccv" ErrorMessage="Enter 3 Digit CVV"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtccv" ErrorMessage="RegularExpressionValidator" ForeColor="#FF3300" ValidationExpression="^[\d]{3,3}$">Please Enter CVV No.</asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            <asp:Button ID="Button2" runat="server" CssClass="btn" onclick="Button2_Click" 
                                                Text="PAY NOW" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Button ID="btncash" runat="server" CssClass="btn" onclick="btncash_Click" 
                                Text="PAY NOW" Visible="False" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    </table>
            </td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
        </tr>
    </table>
</asp:Content>

