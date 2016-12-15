<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="OfcAssignment.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        @import url(http://fonts.googleapis.com/css?family=Lato:300,400,700);

        body {
            background: #485b6e;
            color: #fff;
            font-weight: 400;
            font-family: 'Lato', Calibri, Arial, sans-serif;
            text-align: center;
            margin: 0;
        }

        .name {
            margin: 120px 0 50px;
            font-size: 100px;
            text-shadow: 0 0 10px #333;
            line-height: 0;
        }

        .container {
            margin: 20px auto;
            width: 1000px;
            height: 300px;
        }

        .box1, .box2, .box3, .box4 {
            padding: 22px;
            width: 150px;
            height: 150px;
            margin: 25px;
            float: left;
            background: #FC6E51;
            border-radius: 10px;
            border: solid 3px #E9573F;
            text-shadow: 0 0 20px #333;
            box-shadow: 0 0 25px #333;
            transition: margin-top 1000ms, box-shadow 300ms;
            cursor: pointer;
        }

        .box2 {
            background: #CCD1D9;
            border: solid 3px #AAB2BD;
        }

        .box3 {
            background: #FFCE54;
            border: solid 3px #F6BB42;
        }

        .box4 {
            background: #A0D468;
            border: solid 3px #8CC152;
        }

        .box1:hover {
            box-shadow: 0 0 10px #999;
            margin-top: 10px;
        }

        .box2:hover {
            box-shadow: 0 0 10px #999;
            margin-top: 10px;
        }

        .box3:hover {
            box-shadow: 0 0 10px #999;
            margin-top: 10px;
        }

        .box4:hover {
            box-shadow: 0 0 10px #ccc;
            margin-top: 10px;
        }

        i {
            font-size: 96px;
        }

        .line {
            width: 600px;
            height: 1px;
            background: #fff;
            margin: 0 auto;
            box-shadow: 0 0 10px #333;
        }

        p {
            margin: 14px 0 40px;
        }

        .footer-container {
            width: 100%;
            height: 24px;
            position: fixed;
            bottom: 0;
            left: 0;
        }

        .footer {
            margin: 0 auto;
            width: 360px;
            height: 22px;
            padding: 2px 30px 0 0;
            background: rgba(255,255,255,0.2);
            border-top-left-radius: 3px;
            border-top-right-radius: 3px;
            font-size: 16px;
            color: #333;
            cursor: pointer;
            transition: background 300ms;
        }

            .footer i {
                font-size: 16px;
                margin: 0 5px 0 20px;
            }

            .footer:hover {
                background: rgba(255,255,255,0.7);
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="LBLName" Style="margin-left: -189px;" runat="server" Text="Label"></asp:Label>
            <asp:Button ID="BtnLogOut" Style="margin-right: -1274px;" runat="server" Text="Log Out" OnClick="BtnLogOut_Click" />
        </div>
        <h1 class="name">Home Page</h1>
        <div class="line"></div>

        <p>Brought to you by Santosh singh.</p>
        <div class="container" runat="server">
            <a href="gridView.aspx" style="color: white; text-decoration: none" runat="server">
                <div class="box1">
                    <i class="icon-file-text"></i>
                    <h2>All Employees</h2>
                </div>
            </a>
            <div class="box2">
                <i class="icon-pencil"></i>
                <h2>Biography</h2>
            </div>
            <div class="box3">
                <i class="icon-briefcase"></i>
                <h2>Portfolio</h2>
            </div>
            <div class="box4">
                <i class="icon-envelope"></i>
                <h2>Contact</h2>
            </div>
            <div class="footer-container">
                <div class="footer">
                    <i class="icon-facebook"></i><a href="https://www.facebook.com/santosh.singh.14418?ref=bookmarks">Facebook</a>
                    <i class="icon-github"></i>Dribble
    <i class="icon-rss"></i>RSS Feed
                </div>
            </div>
        </div>
    </form>
</body>
</html>
