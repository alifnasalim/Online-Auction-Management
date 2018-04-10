<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td colspan="2" style="text-align: center">
            <asp:Label ID="Label1" runat="server" style="font-size: x-large" Text="Products"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:DataList ID="DataList1" runat="server" DataKeyField="productid" DataSourceID="SqlDataSource1" RepeatColumns="4" Width="334px">
                <ItemTemplate>
                    &nbsp;<asp:Label ID="productnameLabel" runat="server" style="font-size: medium" Text='<%# Eval("productname") %>' />
                    <br />
                    $Price:
                    <asp:Label ID="start_amtLabel" runat="server" Text='<%# Eval("start_amt") %>' />
                    <br />
                    <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("productid") %>' Height="141px" ImageUrl='<%# Eval("img") %>' OnCommand="ImageButton1_Command" Width="138px" />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlineauctionConnectionString %>" SelectCommand="SELECT [productname], [productid], [start_amt], [img] FROM [tbl_products] WHERE (([status] = @status) AND ([catid] = @catid))">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Pending" Name="status" Type="String" />
                    <asp:QueryStringParameter Name="catid" QueryStringField="catid" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

