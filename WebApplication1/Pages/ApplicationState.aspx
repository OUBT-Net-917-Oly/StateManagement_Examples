<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApplicationState.aspx.cs" Inherits="WebApplication1.Pages.ApplicationState" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Message: <asp:Label ID="lblApplicationStateMessage" runat="server" /><br />
            <asp:Button ID="btnRemoveApplicationState" Text="Remove session" OnClick="btnRemoveApplicationState_Click" runat="server" />
        </div>
    </form>
</body>
</html>
