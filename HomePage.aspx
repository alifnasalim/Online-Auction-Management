<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style61
        {
            height: 443px;
        }
    .style15
    {
        width: 587px;
    }
        .style57
        {
            width: 132px;
            height: 146px;
        }
        .style56
        {
            width: 132px;
        }
        .style60
    {
        height: 333px;
    }
        .style59
        {
            font-size: 12px;
            font-size: 12px;
            color: #847676;
            font-weight: bold;
            padding: 0px;
            height: 32px;
        }
        .auto-style3 {
            width: 144px;
        }
        .auto-style4 {
            height: 106px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:103%; height: 267px;">
    <tr>
        <td class="style61">
            <table style="width: 100%;">
                <tr>
                    <td class="style15" rowspan="3" valign="top">
                        <table style="width: 100%;">
                            <tr>
                                <td class="center_title_bar" colspan="3">Categories</td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:DataList ID="DataList1" runat="server" RepeatColumns="2" DataKeyField="catid" DataSourceID="SqlDataSource1" Width="515px">
                                        <ItemTemplate>
                                            &nbsp;<table class="auto-style1">
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                                                    </td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style4">
                                                        <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("catid") %>' Height="103px" ImageUrl='<%# Eval("img") %>' OnCommand="ImageButton1_Command" Width="209px" />
                                                    </td>
                                                    <td class="auto-style4"></td>
                                                </tr>
                                            </table>
                                            <br />
                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlineauctionConnectionString %>" SelectCommand="SELECT [category], [img], [catid] FROM [tbl_category]"></asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td class="auto-style3">&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td valign="top" class="style60">
                        <table style="width: 98%; height: 202px;">
                            <tr>
                                <td class="style59" colspan="2" 
                        style="background-image: url('images/menu_title_bg.gif'); background-repeat: no-repeat" 
                        valign="top">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="title_box">Login&nbsp;</span></td>
                            </tr>
                            <tr>
                                <td valign="top">Username</td>
                                <td valign="top">
                                    <asp:TextBox ID="txtUsername" runat="server" CssClass="contact_input" 
                            Height="21px" Width="111px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Password</td>
                                <td>
                                    <asp:TextBox ID="txtpwd" runat="server" CssClass="contact_input" Height="21px" 
                            Width="111px" TextMode="Password"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style12">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    
                                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Registration.aspx">SignUp</asp:LinkButton>
                                    
                                </td>
                                <td>
                                    <asp:Button ID="btnsubmit" runat="server" onclick="btnsubmit_Click" 
                            Text="Submit" CssClass="en-send" Height="30px" Width="77px" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2">&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

