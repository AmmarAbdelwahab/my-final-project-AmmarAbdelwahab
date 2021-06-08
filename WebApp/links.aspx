<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="links.aspx.cs" Inherits="WebApp.links" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 26px;
        }
        .style3
        {
            height: 26px;
            width: 196px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                    <table class="style1">
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Names="Arial" 
                        Font-Size="Medium" ForeColor="#000066" NavigateUrl="signin.aspx" 
                        Target="F4">Sign In</asp:HyperLink>
                </td>
                <td class="style2">
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="Arial" 
                        Font-Size="Medium" ForeColor="#000066" NavigateUrl="signup.aspx" 
                        Target="F4">Sign Up</asp:HyperLink>
                </td>
                <td class="style2">
                </td>
                <td class="style2">
                </td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
