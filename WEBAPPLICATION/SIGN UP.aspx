<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SIGN UP.aspx.cs" Inherits="WEBAPPLICATION.SIGN_UP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SIGN UP</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <style>
        Input[ID="txtname"], Input[ID="txtmail"], Input[ID="txtuname"], Input[ID="txtpass"], Input[ID="txtnum"] {
            width: 50%;
            padding: 12px 20px;
            margin: 8px 0;
            box-sizing: Border-Box;
            Border: none;
            border-radius: 4px;
            border-bottom: 2px Solid red;
        }

            input[ID="txtname"]:focus, Input[ID="txtmail"]:focus, Input[ID="txtuname"]:focus, Input[ID="txtpass"]:focus, Input[ID="txtnum"]:focus {
                background-color: bisque;
            }

        input[ID="btnsu"], Input[ID="btnsi"] {
            background-color: forestgreen;
            color: white;
            padding: 16px 32px;
            border-radius: 4px;
            margin: 4px 2px;
            cursor: pointer;
            margin-right: 400px;
        }

        .head {
            font-family: Algerian;
        }
    </style>

</head>
<body style="background-color: yellow">
    <form id="form1" runat="server">


        <h2 class="head" style="margin-left: 300px">SIGN UP</h2>

        <br />

        <div style="margin-left: 50px">
            <asp:Label ID="lblName" runat="server" Text="Full Name"></asp:Label><br />
            <asp:TextBox ID="txtname" runat="server" placeholder="Enter Your Name..."></asp:TextBox>
            <asp:RequiredFieldValidator ID="ref" runat="server" ControlToValidate="txtname" ErrorMessage="Enter Your Name" ForeColor="Red" BorderColor="White" Display="Dynamic"></asp:RequiredFieldValidator><br />
            <asp:Label ID="lblmail" runat="server" Text="Email Id"></asp:Label><br />
            <asp:TextBox ID="txtmail" runat="server" placeholder="Enter Your Email Id" TextMode="Email"></asp:TextBox>
            <asp:RegularExpressionValidator ID="reval" runat="server" ControlToValidate="txtmail" ErrorMessage="Enter Your Email Id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />
            <asp:Label ID="lblnum" runat="server" Text="Phone Number"></asp:Label><br />
            <asp:TextBox ID="txtnum" runat="server" placeholder="Enter Your Phone Number ..." TextMode="Number"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ref1" runat="server" ControlToValidate="txtnum" ErrorMessage="Enter Your Phone Number" ForeColor="Red" BorderColor="White" Display="Dynamic"></asp:RequiredFieldValidator><br />
            <asp:Label ID="lbluname" runat="server" Text="Username"></asp:Label><br />
            <asp:TextBox ID="txtuname" runat="server" placeholder="Enter Unique Username"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ref2" runat="server" ControlToValidate="txtuname" ErrorMessage="Enter Your Username" ForeColor="Red"></asp:RequiredFieldValidator><br />
            <asp:Label ID="lblpass" runat="server" Text="Password"></asp:Label><br />
            <asp:TextBox ID="txtpass" runat="server" placeholder="Enter Your Password" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RegularFeildValidator1" runat="server" ControlToValidate="txtpass" Display="Dynamic" ErrorMessage="Enter Your Password" ForeColor="Red"></asp:RequiredFieldValidator><br />
        </div>

        <br />

        <div style="margin-left: 50px">
            <asp:Button ID="btnsu" runat="server" Text="Sign Up" OnClick="btns_Click" />
            <asp:Button ID="btnsi" runat="server" Text="Log In" OnClick="btnsi_Click" CausesValidation="false" />

        </div>

    </form>
</body>
</html>
