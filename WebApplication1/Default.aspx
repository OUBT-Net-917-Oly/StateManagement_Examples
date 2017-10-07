<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .indent{
            margin-left:20px;
        } 
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Client side</h1>
        <div class="indent">
            <div>
                <h2>Query string example</h2>
                Name: <asp:Textbox ID="txtName" runat="server" ></asp:Textbox><br />
                Email: <asp:Textbox ID="txtEmail" runat="server"></asp:Textbox><br />
                <asp:Button ID="btnQueryString" OnClick="btnQueryString_Click" Text="Submit" runat="server" />
            </div>
            <div>
                <h2>Hidden fields example</h2>
                <asp:HiddenField ID="hdnValue" runat="server" />
                <asp:Button ID="btnHidden" Text="Submit" runat="server" />
            </div>
            <div>
                <h2>ViewState example</h2>
                <asp:Label ID="lblViewState" runat="server" />
                <asp:Button ID="btnViewState" Text="Submit" runat="server" />
            </div>
            <div>
                <h2>Cookie example</h2>
                Message: <asp:TextBox ID="txtCookieMessage" runat="server" /><br />
                <asp:Button ID="btnCookie" Text="Submit" OnClick="btnCookie_Click" runat="server" />
            </div>
        </div>
        <h1>Server side</h1>
        <div class="indent">
            <div>
                <h2>Session state</h2>
                Session state message: <asp:Textbox ID="txtSessionStateMessage" runat="server" ></asp:Textbox><br />
                <asp:Button ID="btnSessionState" OnClick="btnSessionState_Click" Text="Submit" runat="server" />
            </div>
            <div>
                <h2>Application state</h2>
                Application state message: <asp:Textbox ID="txtApplicationStateMessage" runat="server" ></asp:Textbox><br />
                <asp:Button ID="btnApplicationState" OnClick="btnApplicationState_Click" Text="Submit" runat="server" />
            </div>
        </div>
    </form>
</body>
</html>
