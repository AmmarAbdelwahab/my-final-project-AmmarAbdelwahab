<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>

<script runat="server">


    protected void btnRegister_Click(object sender, EventArgs e)
    {
        // 1- Create Connection Object

        SqlConnection conn= new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|fue.mdf;Integrated Security=True";
        // 2- Create Insert statement
        string strInsert = String.Format("INSERT INTO Student VALUES('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}')", txtStudentId.Text, txtFirstName.Text, txtLastName.Text, rbGender.SelectedValue , ddlMajor.SelectedValue, txtEmail.Text, txtPassword.Text);


        // 3- Create SQL command
        SqlCommand cmdInsert = new SqlCommand(strInsert, conn);

        // 4- Open the database
        conn.Open();

        // 5- Execute the SQL Command
        cmdInsert.ExecuteNonQuery();

        // 6- Close the database
        conn.Close();
        lblMsg.Text = "Sign Up Successful!";

    }


    protected void btnClear_Click(object sender, EventArgs e)
    {

    }

    protected void txtEmail_TextChanged(object sender, EventArgs e)
    {

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #8B0000;
        }
        .auto-style2 {
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            width: 191px;
            height: 26px;
        }
        .auto-style5 {
            height: 29px;
        }
        .auto-style6 {
            font-size: small;
        }
        .auto-style7 {
            height: 69px;
        }
        .auto-style8 {
            height: 53px;
        }
        .auto-style10 {
            width: 202px;
        }
        .auto-style11 {
            height: 29px;
            width: 202px;
        }
        .auto-style12 {
            height: 26px;
            width: 279px;
        }
        .auto-style13 {
            width: 279px;
        }
        .auto-style14 {
            height: 29px;
            width: 279px;
        }
        .auto-style15 {
            width: 202px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style7" colspan="4">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#FFFFFF" Text="Sign Up"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" colspan="4">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Arial" Font-Size="Medium" ForeColor="#FFFFFF" style="font-size: x-large" Text="Fields with '*' are required."></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblFirstName" runat="server" Text="First Name:" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="*This field is required" Font-Bold="True" Font-Names="Arial" Font-Size="Smaller" ForeColor="White"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style3">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtFirstName" ErrorMessage="*First Letter must be uppercase" Font-Bold="True" Font-Names="Arial" Font-Size="Smaller" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)" ForeColor="White"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblLastName" runat="server" Text="Last Name:" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="*This field is required" Font-Bold="True" Font-Names="Arial" Font-Size="Smaller" ForeColor="White"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtLastName" ErrorMessage="*First Letter must be uppercase" Font-Bold="True" Font-Names="Arial" Font-Size="Smaller" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)" ForeColor="White"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblGender" runat="server" Text="Gender:" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:RadioButtonList ID="rbGender" runat="server" RepeatDirection="Horizontal" Width="208px" ForeColor="White">
                        <asp:ListItem Selected="True" Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblMajor" runat="server" Text="Major:" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:DropDownList ID="ddlMajor" runat="server">
                        <asp:ListItem>--Choose a Major--</asp:ListItem>
                        <asp:ListItem Value="CS">Computer Science</asp:ListItem>
                        <asp:ListItem Value="IS">Information Systems</asp:ListItem>
                        <asp:ListItem Value="DMT">Digital Media Tech</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style12"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblEmail" runat="server" Text="Email:" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtEmail" runat="server" OnTextChanged="txtEmail_TextChanged"></asp:TextBox>
                    <br />
                    <span class="auto-style6">e.g. 20183309@fue.edu.eg</span></td>
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="*This field is required" Font-Bold="True" Font-Names="Arial" Font-Size="Smaller" ForeColor="White"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style5">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="*E-mail format is invalid" Font-Bold="True" Font-Names="Arial" Font-Size="Smaller" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="White"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblStudentId" runat="server" Text="Student Id:" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtStudentId" runat="server"></asp:TextBox>
                    <br />
                    <span class="auto-style6">e.g. 20183309</span></td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtStudentId" ErrorMessage="*This field is required" Font-Bold="True" Font-Names="Arial" Font-Size="Smaller" ForeColor="White"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtStudentId" ErrorMessage="*Must start with 20 &amp; be 8 characters" Font-Bold="True" Font-Names="Arial" Font-Size="Smaller" ValidationExpression="[2][0]\d{6}" ForeColor="White"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblLastName4" runat="server" Text="Password:" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPassword" ErrorMessage="*This field is required" Font-Bold="True" Font-Names="Arial" Font-Size="Smaller" ForeColor="White"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style3">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtPassword" ErrorMessage="*Password must be between 6 and 13 characters" Font-Bold="True" Font-Names="Arial" Font-Size="Smaller" ValidationExpression="\w{6,13}" ForeColor="White"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password:" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="*Passwords must match" Font-Bold="True" Font-Names="Arial" Font-Size="Smaller" ForeColor="White"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnRegister" runat="server" Text="Submit" OnClick="btnRegister_Click" />
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="4">
                    <asp:Label ID="lblMsg" runat="server" ForeColor="White"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
