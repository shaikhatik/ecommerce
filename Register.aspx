<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <style type="text/css">
        .auto-style11 {
            width: 849px;
        }
        .regattributes {
            width: 849px;
            text-align: right;
        }
        .auto-style14 {
            width: 849px;
            text-align: right;
            height: 32px;
        }
        .auto-style15 {
            width: 978px;
            height: 32px;
        }
        .cpass{
            height:auto;
        }
    .regbuttonempty {
        width: 849px;
        height: 111px;
    }
    .regbuttonbox {
        width: 978px;
        height: 111px;
    }
        .auto-style16 {
            color: #FF0000;
        }
        .auto-style17 {
            height: 32px;
        }
        .auto-style18 {
            height: 19px;
        }
        .auto-style19 {
            width: 849px;
            text-align: right;
            height: 45px;
        }
        .auto-style20 {
            height: 45px;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead" colspan="2">
            Registration Form</td>
    </tr>
    <tr>
        <td class="auto-style18">
            </td>
        <td class="auto-style18">
            </td>
    </tr>
    <tr>
        <td class="auto-style14">
            Name :
        </td>
        <td class="auto-style17">
            <asp:TextBox ID="txtname" runat="server" CssClass="txt" Width="160px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtname" ErrorMessage="Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtname" ErrorMessage="RegularExpressionValidator" ForeColor="#FF3300" ValidationExpression="[a-zA-Z]+">Enter Name in Character</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style14">
            Lastname :
        </td>
        <td class="auto-style17">
            <asp:TextBox ID="txtsname" runat="server" CssClass="txt" Width="160px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtsname" ErrorMessage="Enter Lastname" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="RegularExpressionValidator" ForeColor="#FF3300" ControlToValidate="txtsname" ValidationExpression="[a-zA-Z]+">Enter Only Character</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style19">
            Address :
        </td>
        <td class="auto-style20">
            <asp:TextBox ID="txtadd" runat="server" CssClass="auto-style4" Width="160px" 
                TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtadd" ErrorMessage="Enter Address" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="regattributes">
            City :
        </td>
        <td class="auto-style9">
            <asp:TextBox ID="txtcity" runat="server" CssClass="txt" Width="160px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtcity" ErrorMessage="Enter City" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtcity" ErrorMessage="RegularExpressionValidator" ForeColor="#FF3300" ValidationExpression="[a-zA-Z]+">Enter Proper City Name</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style14">
            Pincode :
        </td>
        <td class="auto-style15">
            <asp:TextBox ID="txtppin" runat="server" CssClass="txt" Width="160px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtppin" ErrorMessage="Enter Pincode" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" 
                ControlToValidate="txtppin" ErrorMessage="Enter Valid Pincode" ForeColor="Red" 
                MaximumValue="999999" MinimumValue="100000" Type="Double"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td class="regattributes">
            Mobile:&nbsp;
        <td class="auto-style9">
            <asp:TextBox ID="txtmo" runat="server" CssClass="txt" Width="160px" 
                MaxLength="10"></asp:TextBox>
                
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtmo" CssClass="auto-style16" ErrorMessage="Enter Mobile"></asp:RequiredFieldValidator>
                
            &nbsp;&nbsp;&nbsp; <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtmo" ErrorMessage="Enter 10 digit mobile no." ForeColor="Red" 
                ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="regattributes">
            Mail-id :
        </td>
        <td class="auto-style9">
            <asp:TextBox ID="txtemail" runat="server" CssClass="txt" Width="160px"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtemail" CssClass="auto-style16" ErrorMessage="Enter Mail-id"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="txtemail" ErrorMessage="Enter  Valid Mail-id" ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style14">
            Password :
        </td>
        <td class="auto-style15">
            <asp:TextBox ID="txtpass" runat="server" CssClass="txt" Width="160px" 
                TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtpass" ErrorMessage="Enter a password" CssClass="auto-style16"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style14">
            Confirm - Password :
        </td>
        <td class="auto-style17">
            <asp:TextBox ID="txtcpass" runat="server" CssClass="txt" Width="160px" 
                TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass" ControlToValidate="txtcpass" ErrorMessage="Password do not match" CssClass="auto-style16"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="regbuttonempty">
            </td>
        <td align="left" class="regbuttonbox">
            <asp:Button ID="Button3" runat="server" CssClass="btn" Text="Register Now" 
                onclick="Button3_Click" />
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center" style="color: #006600" class="auto-style8">
            </td>
    </tr>
</table>
</asp:Content>

