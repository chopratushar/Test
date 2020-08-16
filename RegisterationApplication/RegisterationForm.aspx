<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterationForm.aspx.cs" Inherits="RegisterationApplication.RegisterationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="pnlPersonalInfo" runat="server">
                Name:<asp:TextBox ID="tbName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqName" runat="server" ControlToValidate="tbName" Display="None" ErrorMessage="The Name is required" Font-Bold="True" Font-Italic="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <br />
                Address:<asp:TextBox ID="tbAddress" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqAddress" runat="server" ControlToValidate="tbAddress" Display="None" ErrorMessage="The address  is required" Font-Bold="True" Font-Italic="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <br />
                Email:<asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqEmail" runat="server" ControlToValidate="tbEmail" Display="None" ErrorMessage="The Email is required" Font-Bold="True" Font-Italic="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regEmail" runat="server" ControlToValidate="tbEmail" Display="None" ErrorMessage="Please enter a valid email" Font-Bold="True" Font-Italic="True" ForeColor="#CC0099" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                PhoneNo:<asp:TextBox ID="tbPhoneNo" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqPhoneNo" runat="server" ControlToValidate="tbPhoneNo" Display="None" ErrorMessage="The phone number is required" Font-Bold="True" Font-Italic="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regPhoneNo" runat="server" ControlToValidate="tbPhoneNo" Display="None" ErrorMessage="Please enter a valid phone no" Font-Bold="True" Font-Italic="True" ForeColor="#CC0099" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                <br />
                Date of Birth:<asp:TextBox ID="tbDoB" runat="server" Enabled="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqDoB" runat="server" ControlToValidate="tbDoB" Display="None" ErrorMessage="The date of birth  is required" Font-Bold="True" Font-Italic="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <br />
                <asp:Button ID="btnSubmit" runat="server" Text="Next" OnClick="btnSubmit_Click" CausesValidation="False" />
            </asp:Panel>
        
        <asp:Panel ID="pnlCalendar" runat="server" Visible="False">
            <asp:DropDownList ID="ddlYear" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlYear_SelectedIndexChanged">
                <asp:ListItem>2000</asp:ListItem>
                <asp:ListItem>2001</asp:ListItem>
                <asp:ListItem>2003</asp:ListItem>
            </asp:DropDownList>
            <asp:Calendar ID="cldrDoB" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" OnSelectionChanged="cldrDoB_SelectionChanged" SelectionMode="DayWeekMonth" Width="220px">
                <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                <WeekendDayStyle BackColor="#CCCCFF" />
            </asp:Calendar>
            <asp:Button ID="btnSubmit2" runat="server" Text="Next" />
            <br />

        </asp:Panel>
            </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#CC0000" />
    </form>
</body>
</html>
