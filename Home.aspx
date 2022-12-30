<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

        <style type="text/css">        
        .cat{
            text-align:right;

            background-color:antiquewhite;

        }
        .timer{
            padding-top:10px;
            padding-bottom:10px;

        }
        
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


       
      

 
         <div id="second">
       
        <div class="timer">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick">
                    </asp:Timer>
                    <asp:Image ID="Image1" runat="server" BackColor="White" BorderColor="Gray" BorderStyle="Double" Height=300 Width="991px" ImageAlign="Middle" ImageUrl="~/Photo/welcome.png" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <div class="cat">
            <table class="style3">
                 <tr>

                     <td>
                         <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="180px"></asp:TextBox>
                     </td>
                     <td>
                         <asp:Button ID="Button1" runat="server" Text="Search" onclick="Button1_Click" 
                                       Width="78px" CssClass="btn" CausesValidation="False" />

                     </td>
                   </tr>
               </table>
        </div>

    <table class="tbl">
    <tr>
        <td>
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" 
                RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand1" Height="509px" Width="993px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged1">

                <ItemTemplate>
                    <table style="border: thin solid #339966" width="220">
                        <tr>
                            <td height="30" 
                                style="color: #369; font-weight: bold; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #369;">
                                <asp:Label ID="lblname" runat="server" Text='<%#Eval("IName") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <asp:Image ID="Image4" runat="server" Height="135px" 
                                    ImageUrl='<%#Eval("Image") %>'  style="text-align: center" 
                                    Width="90px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="border-top-style: solid; border-top-width: thin; border-top-color: #339966">
                                <asp:Button ID="Button9" runat="server" CommandArgument='<%#Eval("Id") %>' 
                                    CssClass="btnmenu" Height="30px" Text="Buy Now !" Width="193px" />
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

