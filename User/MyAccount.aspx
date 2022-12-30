<%@ Page Title="" Language="C#" MasterPageFile="~/User/Member.master" AutoEventWireup="true" CodeFile="MyAccount.aspx.cs" Inherits="User_MyAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 278px;
        }
    .style12
    {
        width: 477px;
    }
    .style13
    {
        width: 100%;
    }
        .auto-style4 {
            color: #369;
            text-align: right;
            height: 31px;
        }
        .auto-style5 {
            height: 31px;
        }
        .auto-style6 {
            width: 422px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            Change Account</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table align="center" class="style12">
                <tr>
                   
                    <td style="text-align: center">
                        <asp:Button ID="Button3" runat="server" CssClass="btn" onclick="Button3_Click" 
                            Text="View Profile" />
                        <asp:Button ID="Button4" runat="server" CssClass="btn" onclick="Button4_Click" 
                            Text="Edit Profile" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:MultiView ID="MultiView1" runat="server">
                            <asp:View ID="View1" runat="server">
                                <table class="style13">
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            Name :</td>
                                        <td>
                                            <asp:Label ID="lblname" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            Lastname :</td>
                                        <td>
                                            <asp:Label ID="lbllastname" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            Address :</td>
                                        <td>
                                            <asp:Label ID="lbladdrss" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            City :
                                        </td>
                                        <td>
                                            <asp:Label ID="lblcity" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            Pincode :</td>
                                        <td>
                                            <asp:Label ID="lblpin" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            Contact :</td>
                                        <td>
                                            <asp:Label ID="lblcont" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                <table align="center" class="auto-style6">
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            Name :</td>
                                        <td>
                                            <asp:TextBox ID="txtname" runat="server" CssClass="txt"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtname" ErrorMessage="Enter Name" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            Lastname :
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtlastname" runat="server" CssClass="txt"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtlastname" ErrorMessage="Enter Lastname" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtlastname" ErrorMessage="RegularExpressionValidator" ForeColor="#FF3300" ValidationExpression="[a-zA-Z]+">Enter Character</asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            Address :</td>
                                        <td>
                                            <asp:TextBox ID="txtaddd" runat="server" CssClass="txt" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtaddd" ErrorMessage="Enter Address" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">
                                            City :
                                        </td>
                                        <td class="auto-style5">
                                            <asp:TextBox ID="txtcity" runat="server" CssClass="txt"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtcity" ErrorMessage="Enter City" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtcity" ErrorMessage="RegularExpressionValidator" ForeColor="#FF3300" ValidationExpression="[a-zA-Z]+">Enter Character</asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            Pincode :
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtpincode" runat="server" CssClass="txt"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpincode" ErrorMessage="Enter Pincode" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtpincode" ErrorMessage="RegularExpressionValidator" ForeColor="#FF3300" ValidationExpression="^[\d]{6,6}$">Enter Number</asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            Contact :</td>
                                        <td>
                                            <asp:TextBox ID="txtmobile" runat="server" CssClass="txt"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtmobile" ErrorMessage="Enter Contact" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtmobile" ErrorMessage="RegularExpressionValidator" ForeColor="#FF3300" ValidationExpression="[0-9]{10}">Enter Number</asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            <asp:Button ID="Button2" runat="server" CssClass="btn" onclick="Button2_Click" 
                                                Text="Update Detail" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </asp:View>
                        </asp:MultiView>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
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
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>