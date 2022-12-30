<%@ Page Title="" Language="C#" MasterPageFile="~/User/Member.master" AutoEventWireup="true" CodeFile="ChangePass.aspx.cs" Inherits="User_ChangePass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 516px;
        }
    .auto-style3 {
        margin-left: 6120px;
    }
        .auto-style4 {
            font-size: small;
        }
        .auto-style5 {
            width: 143px;
        }
        .auto-style6 {
            color: #369;
            text-align: right;
            width: 143px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            Change Password</td>
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
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        Enter New Password :</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtpass" runat="server" TextMode="Password" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtpass" ErrorMessage="Enter Password" ForeColor="Red" 
                            SetFocusOnError="True" CssClass="auto-style4"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        Confirm-Pass:</td>
                    <td>
                        <asp:TextBox ID="txtcpass" runat="server" TextMode="Password" CssClass="txt"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" 
                            ControlToCompare="txtpass" ControlToValidate="txtcpass" 
                            ErrorMessage=" Password do not match" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button2" runat="server" CssClass="btn" onclick="Button2_Click" 
                            Text="Change Password" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                    </td>
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
