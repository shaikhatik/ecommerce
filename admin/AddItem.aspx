<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="AddItem.aspx.cs" Inherits="admin_AddminItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style12
    {
            text-align: center;
        }
    .style14
    {
        width: 156px;
    }
        .style18
    {
        width: 216px;
    }
        .style19
        {
            width: 393px;
        }
        .auto-style6 {
            border: solid 1px #369;
            color: black;
            padding: 3px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl" style="height: 424px; width: 100%">
    <tr>    
        <td colspan="2" class="tblhead" align="center">
            Add Item</td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style19">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            ID:</td>
        <td  class="style19" >
            <asp:TextBox ID="TextBox3" runat="server" Height="26px" Width="190px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="**" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
       
    </tr>
    <tr>
        <td class="lbl">
            Item Name:</td>
        <td  class="style19" >
            <asp:TextBox ID="txtiname" runat="server" 
                CssClass="auto-style6" Font-Bold="False" Font-Italic="False" Width="190px" 
                ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtiname" ErrorMessage="**" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
       
    </tr>
    <tr>
        <td class="lbl">
            Description:</td>
        <td style="text-align: left" class="style19" >
            <asp:TextBox ID="txtdescrip" runat="server"
                 CssClass="txt" ontextchanged="txtdescrip_TextChanged" Height="35px" 
                TextMode="MultiLine" Width="190px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtdescrip" ErrorMessage="**" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            Price:</td>
        <td style="text-align: left" class="style19">
            <asp:TextBox ID="txtprice" runat="server" 
              CssClass="auto-style6" Width="190px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtprice" ErrorMessage="**" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            Quantity(In kg):</td>
        <td style="text-align: left" class="style19">
            <asp:TextBox ID="txtquan" runat="server" 
         CssClass="auto-style6" Width="190px" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtquan" ErrorMessage="**" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            Image:</td>
        <td style="text-align: left" class="style19">
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="FileUpload1" ErrorMessage="**" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>

    </tr>
    <tr>
       
        <td class="lbl">
            Flavour&nbsp;:</td>
        <td style="text-align: left">
            <asp:DropDownList ID="drpflav" runat="server" CssClass="txt" OnSelectedIndexChanged="drpmemory_SelectedIndexChanged">
                <asp:ListItem>SELECT</asp:ListItem>
                <asp:ListItem>Chocolate</asp:ListItem>
                <asp:ListItem>Vanilla</asp:ListItem>
                <asp:ListItem>Butterscotch</asp:ListItem>
                <asp:ListItem>Strawberry</asp:ListItem>
                <asp:ListItem>Orange</asp:ListItem>
                <asp:ListItem>Pineapple</asp:ListItem>
                <asp:ListItem>Mango</asp:ListItem>
                <asp:ListItem>Mix Fruits</asp:ListItem>
            </asp:DropDownList>
        </td>
       
    </tr>
    
    <tr>
        <td class="lbl">
            Category Name:</td>
        <td style="text-align: left" class="style19">
            <asp:DropDownList ID="product_cat" runat="server" CssClass="txt">
            </asp:DropDownList>
            
        </td>
      
    </tr>
    <tr>
        <td class="lbl">
            Egg :</td>
        <td style="text-align: left" class="style19">
            <asp:TextBox ID="txtegg" runat="server" 
         CssClass="auto-style6" Width="190px"></asp:TextBox>
        </td>
      
    </tr>
    <tr>
        <td class="style14">
            &nbsp;</td>
        <td class="style19" align="left">
            <asp:Button ID="Button9" runat="server" CssClass="btn" onclick="Button9_Click" 
                Text="ADD ITEM" Height="30px" Width="100px" />
            <asp:Label ID="lblmsg" runat="server" ForeColor="Black"></asp:Label>
        </td>
    </tr>

    <tr>
        <td class="style14">
            &nbsp;</td>
        <td class="style19" align="left">
            &nbsp;</td>
       
    </tr>
    <tr>
        <td class="style12" colspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                AutoGenerateDeleteButton="false" 
                DataKeyNames="Id" onrowdeleting="GridView1_RowDeleting" 
                onrowcancelingedit="GridView1_RowCancelingEdit1" 
                onrowediting="GridView1_RowEditing1" 
                onrowupdating="GridView1_RowUpdating1" BackColor="White" BorderColor="#DEDFDE" 
                BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                GridLines="Vertical" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" Width="843px" 
                ForeColor="Black">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText ="Item Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" Text='<%#Eval("IName") %>' runat="server" Font-Bold="true"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("IName") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText ="Price">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" Text='<%#Eval("Price") %>' runat="server" Font-Bold="true"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("Price") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="center" />
                    </asp:TemplateField>
                     <asp:CommandField CausesValidation="false" HeaderText="Operation" ShowDeleteButton="true" ShowEditButton="false" >
                    <ItemStyle HorizontalAlign="center" />
                    </asp:CommandField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#004993" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
        </td>
    </tr>
</table>
</asp:Content>

