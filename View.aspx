<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <script type="text/javascript">
        function img(i) {

            var imgg = document.getElementById('<%=Image3.ClientID%>');
            imgg.src = i.src;
        
        }
    
    </script>

    <style type="text/css">
        .auto-style12 {
            text-align: right;
            height:30px;
            width: 284px;
        }
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table class="style2">
     <tr>
            <td class="tblhead" colspan="3">
                PRODUCT DETAIL</td>
        </tr>
     <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            
            <td class="style6">
                <asp:Image ID="Image3" runat="server" Height="335px" Width="382px" 
                    CssClass="vimg" />
            </td>
            <td valign="top" 
                
                
                style="border-left-style: solid; border-left-width: thin; border-left-color: #C0C0C0">
                <table style="width: 603px">
                    <tr>
                        <td class="auto-style12">
                            Cake Name :</td>
                        <td>
                            
                <asp:Label ID="lblname" runat="server" ForeColor="#000369" ></asp:Label>
                
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                            Price :
               
                        </td>
                        <td>
              
                <asp:Label ID="lblprice" runat="server" ForeColor="#000369" ></asp:Label>
              
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                            Quantity :
                
                        </td>
                        <td>
                
                <asp:Label ID="lblqnt" runat="server" ForeColor="#000369" ></asp:Label>
               
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                            Flavour:</td>
                        <td class="style18">
                
                <asp:Label ID="lblflavour" runat="server" ForeColor="#000369" ></asp:Label>
               
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                            &nbsp;Egg:</td>
                        <td class="style18">
                
                <asp:Label ID="lblegg" runat="server" ForeColor="#000369" ></asp:Label>
               
                        </td>
                    </tr>
                    </table>
                <asp:Button ID="Button3" runat="server" CssClass="btn" onclick="Button3_Click" 
                    Text="Buy Now" Width="131px" PostBackUrl="~/Login.aspx" Height="40px" />
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
