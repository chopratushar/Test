<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QueryStringInfo.aspx.cs" Inherits="RegisterationApplication.QueryStringInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Please Review your registeration information:<br/>
            Name: <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label> <br/>
            Address: <asp:Label ID="lblAddress" runat="server" Text="Label"></asp:Label><br/>
            email: <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label><br/>
            phoneNo: <asp:Label ID="lblPhoneNo" runat="server" Text="Label"></asp:Label><br/>
            DoB: <asp:Label ID="lblDoB" runat="server" Text="Label"></asp:Label><br/>
        </div>
    </form>
</body>
</html>
