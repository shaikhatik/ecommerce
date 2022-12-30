<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
   
   
    <style type="text/css">
        .auto-style12 {
            height: 30px;
            color: #fff;
            text-align: center;
            font-weight: bold;
            background: #fc1592;
            padding: 2px;
            font-size: 14px;
            width: 991px;
        }
        .auto-style13 {
            width: 455px;
        }
        .auto-style14 {
            height: 496px;
        }
        .feedbacktbl {
            height: 357px;
        }
        .fbnamebox {
            height: 69px;
        }
        .auto-style19 {
            height: 256px;
        }
        .fbfbbox {
            height: 83px;
        }
        .fbbutton {
            height: 18px;
        }
    </style>
   
   
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style14">
        <tr>
            <td class="auto-style12">
                Feedback From</td>
        </tr>
        <tr>
            <td class="style2">
                <table class="feedbacktbl" align="center">
                    <tr>
                        <td class="fbnamebox">
                            Name :</td>
                        <td class="fbnamebox">
                            <asp:TextBox ID="txtname" runat="server" CssClass="auto-style8" Width="250px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtname" ErrorMessage="Enter Your Name" ForeColor="#FF3300" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="fbfbbox">
                            <span class="auto-style13">FeedBack </span><span class="auto-style19">:</span></td>
                        <td class="fbfbbox">
                            <asp:TextBox ID="txtfeedback" runat="server" CssClass="auto-style7" 
                                TextMode="MultiLine" Width="250px" Height="79px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtfeedback" ErrorMessage="Enter Your Feedback" ForeColor="#FF3300" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="fbbutton">
                            </td>
                        <td class="fbbutton">
                            <asp:Button ID="Button3" runat="server" CssClass="btn" onclick="Button3_Click" 
                                Text="Send Feedback" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

