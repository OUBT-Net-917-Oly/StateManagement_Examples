<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SessionState.aspx.cs" Inherits="WebApplication1.Pages.SessionState" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Message: <asp:Label ID="lblSessionStateMessage" runat="server" /><br />
            <asp:Button ID="btnRemoveSessionState" Text="Remove session" OnClick="btnRemoveSessionState_Click" runat="server" />
        </div>
    </form>
</body>
</html>
