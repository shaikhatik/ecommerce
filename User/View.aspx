<%@ Page Title="" Language="C#" MasterPageFile="~/User/Member.master" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="User_vii" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style4
        {
        }
        .viewstyle6
        {
    }
        .style8
    {
        color: #FF6600;
    }
    .style10
    {
        width: 256px;
    }
        .style11
        {
            height: 34px;
        }
                
            
  .vimg
  {
      border:solid 1px #ccc;
      }
      
        .style12
        {
            width: 111px;
        }
        .viewstyle19
        {
            color: Green;
            text-align: right;
            height: 25px;
            width: 103px;
        }
        .style14
        {
            color: Green;
            text-align: left;
            height: 25px;
        }
        .style18
        {
            width: 198px;
        }
        .style20
        {
            color: Green;
            text-align: right;
            height: 25px;
            width: 95px;
        }
        .style21
        {
            width: 95px;
        }
    .auto-style3view {
            text-align: right;
            color: #006600;
            width: 153px;
        }
        .auto-style4 {
            color: Green;
            text-align: right;
            height: 25px;
            width: 153px;
        }
        .auto-style5 {
            width: 153px;
            color: #009933;
        text-align: right;
    }
    </style>
    <script type="text/javascript">
        function img(i) {

            var imgg = document.getElementById('<%=Image3.ClientID%>');
            imgg.src = i.src;
        
        }
    
    </script>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead" colspan="3">
                PRODUCT DETAIL</td>
    </tr>
    <tr>
        <td colspan="3">
                &nbsp;</td>
    </tr>
    <tr>
       
        <td class="viewstyle6">
            <asp:Image ID="Image3" runat="server" Height="330px" Width="400px" 
                    CssClass="vimg" />
        </td>
        <td valign="top" 
                
                
                style="border-left-style: solid; border-left-width: thin; border-left-color: #C0C0C0">
            <table style="width: 514px">
                <tr>
                    <td class="auto-style4">
                            Name :</td>
                    <td>
                        <asp:Label ID="lblname" runat="server" ForeColor="#000369" ></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                &nbsp;Price :
               
                        </td>
                    <td>
                        <asp:Label ID="lblprice" runat="server" ForeColor="#000369" ></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                            Quantity(In Kg):
                
                        </td>
                    <td>
                        <asp:Label ID="lblqnt" runat="server" ForeColor="#000369" ></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3view">
                            Flavour :</td>
                    <td class="style18">
                        <asp:Label ID="lblflav" runat="server" ForeColor="#000369" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3view">
                            Eggless :</td>
                    <td class="style18">
                        <asp:Label ID="lblegg" runat="server" ForeColor="#000369" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        Add message on cake</td>
                    <td>
                        <asp:TextBox ID="Txtmessage" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                    </td>
                </tr>
            </table>
                &nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" CssClass="btn" onclick="Button3_Click" CommandArgument='<%#Eval("Id") %>'
                    Text="Add to cart"  Width="130px" Height="40px" CommandName="BUY NOW" />
            <asp:Label ID="lbleror" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style4" colspan="3" 
                style="border-top-style: solid; border-top-width: thin; border-top-color: #369">
                &nbsp;</td>
    </tr>
    <tr>
        <td class="style4" colspan="3" style="font-size: medium">
                Description ::</td>
    </tr>
    <tr>
        <td class="style5" colspan="3">
            <asp:Label ID="lbldetil" runat="server" Font-Size="Small" ForeColor="#000369"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>