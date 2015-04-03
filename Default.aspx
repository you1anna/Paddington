<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 227px;
        }
        .auto-style4 {
            width: 227px;
            height: 26px;
        }
        .auto-style5 {
            width: 46px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
            width: 125px;
        }
        .auto-style12 {
            width: 93px;
            height: 26px;
        }
        .auto-style13 {
            width: 93px;
        }
        .auto-style14 {
            width: 46px;
        }
        .auto-style15 {
            width: 88px;
            height: 26px;
        }
        .auto-style16 {
            width: 88px;
        }
        .auto-style18 {
            height: 40px;
        }
        .auto-style19 {
        }
        .auto-style20 {
            height: 40px;
            width: 349px;
        }
        .auto-style21 {
            width: 127px;
            height: 11px;
        }
        .auto-style22 {
            height: 40px;
            width: 127px;
        }
        .auto-style23 {
            width: 349px;
            height: 215px;
        }
        .auto-style24 {
            width: 127px;
            height: 215px;
        }
        .auto-style25 {
            height: 215px;
        }
        .newStyle1 {
            table-layout: fixed;
            font-family: "Calibri Light";
            background-color: #EAF0F7;
        }
        .newStyle2 {
            table-layout: fixed;
            width: 684px;
        }
        .auto-style26 {
            width: 125px;
        }
        .auto-style27 {
            width: 349px;
            height: 11px;
        }
        .auto-style28 {
            height: 11px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" BorderColor="#CCCCCC" BorderStyle="Dotted" BorderWidth="1px" Width="686px">
            <table class="newStyle2" border="0">
                <tr>
                    <td class="auto-style19" colspan="3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style27">Name:
                        <asp:TextBox ID="nameBox" runat="server" Width="220px"></asp:TextBox>
                    </td>
                    <td class="auto-style21">Balance:
                        <asp:TextBox ID="balanceBox" runat="server" Width="88px"></asp:TextBox>
                    </td>
                    <td class="auto-style28">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Player" Width="186px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23">
                        <br />
                        Last Payment:<asp:Calendar ID="datePayment" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="16px" Width="171px">
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#808080" />
                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                        </asp:Calendar>
                    </td>
                    <td class="auto-style24"></td>
                    <td class="auto-style25">- make columns unique</td>
                </tr>
                <tr>
                    <td class="auto-style20"></td>
                    <td class="auto-style22"></td>
                    <td class="auto-style18"></td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <br />
        <asp:Panel ID="playerPanel" runat="server" Font-Names="Calibri" Height="101px" Width="685px" BorderColor="#CCCCCC" BorderStyle="Dotted" BorderWidth="1px">
            &nbsp;&nbsp;&nbsp;
            <table style="width:99%;">
                <tr>
                    <td class="auto-style4">
                        <asp:DropDownList ID="playerDropdown" runat="server" Height="17px" Width="229px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style5"></td>
                    <td class="auto-style12">
                        <asp:Label ID="Label1" runat="server" style="text-align: right" Text="Add amount:"></asp:Label>
                    </td>
                    <td class="auto-style15">
                        <asp:TextBox ID="addBox" runat="server" Width="61px" CausesValidation="True"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="margin-left: 0px; height: 26px;" Text="Add" />
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style26">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="addBox" Display="Dynamic" ErrorMessage="RegularExpressionValidator" Font-Size="Small" ForeColor="#990000" OnDataBinding="Button3_Click" ValidationExpression="^-?\d+">invalid input</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"><a href="results.aspx">Player table</a></td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style26">&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
