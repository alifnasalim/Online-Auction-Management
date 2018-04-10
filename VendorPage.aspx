<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VendorPage.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
        width: 236px;
    }
    .auto-style3 {
        width: 236px;
        height: 261px;
    }
    .auto-style4 {
        height: 261px;
    }
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Panel ID="Panel1" runat="server" Height="130px" Visible="False">
                <table class="auto-style1">
                    <tr>
                        <td>Product is added by admin.</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>For more details contact to administrator</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Mobile :9675648346</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td><a href="mailto:Email:Admin@gmail.com">Email:Admin@gmail.com</a><br /> WWW.Action.com</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
        <td class="auto-style4">
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="4" Visible="False" Width="332px">
                <ItemTemplate>
                    address:
                    <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                    <br />
                    name:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    <br />
                    mobile_no:
                    <asp:Label ID="mobile_noLabel" runat="server" Text='<%# Eval("mobile_no") %>' />
                    <br />
                    Email_id:
                    <asp:Label ID="Email_idLabel" runat="server" Text='<%# Eval("Email_id") %>' />
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlineauctionConnectionString %>" SelectCommand="SELECT [address], [name], [mobile_no], [Email_id] FROM [tbl_userdetails] WHERE ([userid] = @userid)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="userid" QueryStringField="userid" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

