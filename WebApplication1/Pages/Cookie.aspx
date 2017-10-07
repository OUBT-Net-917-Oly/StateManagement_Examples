<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cookie.aspx.cs" Inherits="WebApplication1.Pages.Cookie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Message: <asp:Label ID="lblCookieMessage" runat="server"></asp:Label><br />
            <asp:Button ID="btnGetCookie" Text="Get cookie" OnClick="btnGetCookie_Click" runat="server" />
            <asp:Button ID="btnClearCookie" Text="Clear cookie" OnClick="btnClearCookie_Click" runat="server" />
        </div>
    </form>
</body>
</html>
