<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="OfcAssignment.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 302px">
            <div style="width: 100%; text-align: center; font-size: x-large" id=" ">
                Log In<br />
                <asp:Label ID="lblMsg" runat="server" Font-Size="Small" ForeColor="Red"></asp:Label>
            </div>
            <br />
            <br />

            <div style="width: 100%;">
                <div style="width: 50%; text-align: left; text-align: center;">
                    User Name:
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </div>
                <br />

                <div style="width: 50%; text-align: center">
                    Password:
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </div>
                <div style="width: 50%; text-align: left; text-align: center;" id="Label1">
                    <br />
                    <asp:Button ID="SignInBtn" runat="server" Text="Sign In" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="Sign Up" Style="margin-left: 10px;" OnClick="Button2_Click" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
