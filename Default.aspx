<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <link href="Main.css" rel="stylesheet" type="text/css"/>
    <meta name="description" content="The description of my page" />
    <style type="text/css">
        .auto-style35 {
            height: 83px;
        }
        .auto-style36 {
            width: 46px;
            height: 83px;
        }
        .auto-style37 {
            width: 88px;
            height: 83px;
        }
        .auto-style38 {
            width: 125px;
            height: 83px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-bottom: 220px">
    
        <br />
            <table class="auto-style22" border="0">
                <tr>
                    <td class="auto-style18" colspan="4"></td>
                </tr>
                <tr>
                    <td class="auto-style27">
                        <asp:Label ID="Label3" runat="server" EnableViewState="False" Font-Names="Calibri" Text="Name:"></asp:Label>
                        <asp:TextBox ID="nameBox" runat="server" Width="220px"></asp:TextBox>
                    </td>
                    <td class="auto-style33">&nbsp;<asp:Label ID="Label2" runat="server" Font-Names="Calibri" style="text-align: right" Text="Balance:"></asp:Label>
                    </td>
                    <td class="auto-style21">
                        <asp:TextBox ID="balanceBox" runat="server" Width="88px" style="margin-left: 0px"></asp:TextBox>
                    </td>
                    <td class="auto-style34">
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
                    <td class="auto-style31">&nbsp;</td>
                    <td class="auto-style24"></td>
                    <td class="auto-style25">
                        <asp:Label ID="errorLabel" runat="server" Font-Names="Calibri" Font-Size="Small" ForeColor="#990000" Text="exception" ViewStateMode="Enabled"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20"></td>
                    <td class="auto-style32"></td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style18"></td>
                </tr>
            </table>
        <br />
        <br />
            <table style="width:60%; float: left; overflow: auto; font-family: Calibri;">
                <tr>
                    <td class="auto-style35">
                        <asp:DropDownList ID="playerDropdown" runat="server" Height="17px" Width="229px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style36"></td>
                    <td class="auto-style35">
                        <asp:Label ID="Label1" runat="server" style="text-align: right" Text="Add amount:"></asp:Label>
                    </td>
                    <td class="auto-style37">
                        <asp:TextBox ID="addBox" runat="server" Width="61px" CausesValidation="True"></asp:TextBox>
                    </td>
                    <td class="auto-style38">
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="margin-left: 0px; " Text="Add" Height="40px" Width="134px" />
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
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
