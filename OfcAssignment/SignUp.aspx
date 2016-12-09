<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="OfcAssignment.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 302px">
            <div style="width: 100%; text-align: center; font-size: x-large">Fill the Information below<br />
                <asp:Label ID="LblMsg2" runat="server" Font-Size="Small" ForeColor="Red"></asp:Label>
            </div>
            <br />
            <br />

            <div style="width: 100%;">
                <div style="width: 50%; text-align: left; text-align: center;">
                    First Name:
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </div>
                <br />

                <div style="width: 50%; text-align: center">
                    Last Name:
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </div>
                <br />
                <div style="width: 50%; text-align: left; text-align: center;">
                    Email Id:
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </div>
                <br />
                <div style="width: 50%; text-align: left; text-align: center;">
                    Gender:
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Don&#39;t Know</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <br />
                <div style="width: 50%; text-align: left; text-align: center;">
                    User Name:
                    <asp:TextBox ID="TextBox4" runat="server" OnLoad="TextBox4_TextChanged" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                </div>
                <br />
                <div style="width: 50%; text-align: left; text-align: center;">
                    Password:
                    <asp:TextBox ID="TextBox5" runat="server" OnLoad="TextBox4_TextChanged" OnTextChanged="TextBox4_TextChanged" TextMode="Password"></asp:TextBox>
                </div>
                <br />
                <div style="width: 50%; text-align: left; text-align: center;">
                    Confirm Password:
                    <asp:TextBox ID="TextBox6" runat="server" OnLoad="TextBox4_TextChanged" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                </div>
                <br />
                <div style="width: 50%; text-align: left; text-align: center;">
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                </div>

            </div>
        </div>
    </form>
</body>
</html>
