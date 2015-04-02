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
        .auto-style17 {
            width: 100%;
        }
        .auto-style18 {
            height: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <br />
        <table class="auto-style17">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18"></td>
                <td class="auto-style18"></td>
                <td class="auto-style18"></td>
            </tr>
        </table>
        <br />
        <br />
&nbsp;<br />
        Name:
        <asp:TextBox ID="nameBox" runat="server" Width="220px"></asp:TextBox>
        <br />
        <br />
        Balance:
        <asp:TextBox ID="balanceBox" runat="server" Width="88px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Player" Width="186px" />
        <br />
        <br />
        Last Payment:<asp:Calendar ID="datePayment" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="121px" Width="196px">
            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
            <NextPrevStyle VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#808080" />
            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
            <SelectorStyle BackColor="#CCCCCC" />
            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
            <WeekendDayStyle BackColor="#FFFFCC" />
        </asp:Calendar>
        <br />
        <asp:Panel ID="playerPanel" runat="server" Font-Names="Calibri" Height="175px" Width="771px">
            &nbsp;&nbsp;&nbsp;
            <table style="width:100%;">
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
                        <asp:TextBox ID="TextBox1" runat="server" Width="61px"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="margin-left: 0px" Text="Add" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Query" />
        <br />
    
    </div>
    </form>
</body>
</html>
