<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QueryString.aspx.cs" Inherits="WebApplication1.Pages.QueryString" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
                Thank you <asp:Label ID="lblName" runat="server"></asp:Label>.<br />
                Your email address (<asp:Label ID="lblEmail" runat="server"></asp:Label>) has been registered.
            </p>
        </div>
    </form>
</body>
</html>
