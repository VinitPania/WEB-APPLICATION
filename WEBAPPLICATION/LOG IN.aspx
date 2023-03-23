<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LOG IN.aspx.cs" Inherits="WEBAPPLICATION.LOG_IN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LOG IN </title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <style>
        Input[ID="txtuname"], Input[ID="txtpass"] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            box-sizing: Border-Box;
            Border: none;
            border-radius: 4px;
            border-bottom: 2px Solid red;
        }

            input[ID="txtuname"]:focus, input[ID="txtpass"]:focus {
                background-color: bisque;
            }

        Input[ID="btnsi"], Input[ID="btnsl"] {
            background-color: forestgreen;
            color: white;
            padding: 16px 32px;
            border-radius: 4px;
            margin: 4px 2px;
            cursor: pointer;
            width: 25%;
            align-self: center;
        }
    </style>
</head>
<body style="background-color: yellow">
    <form id="form1" runat="server">
        <center>
            <div>
                <h2 style="font-family: Algerian">LOG IN</h2>
            </div>
        </center>
        <center>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lbluname" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtuname" runat="server" placeholder="Enter Unique Username"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblpass" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtpass" runat="server" placeholder="Enter Your Password" TextMode="Password"></asp:TextBox>
                        <asp:Label ID="lblval" runat="server" ></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <center>
                <div>
                    <asp:Button ID="btnsi" runat="server" Text="Log In" OnClick="btnsi_Click" /><br />
                    <asp:CheckBox ID="check" runat="server"/>
                    <asp:Label ID="lblcheck" runat="server" Text="Remember me"></asp:Label>
                </div>
            </center>
             <br />
            <br />
            <center>
                <div>
                    <asp:Label ID="lblacc" runat="server" Text="Don't have an Account"></asp:Label><br />
                    <asp:LinkButton ID="btnsl" runat="server" OnClick="btnsl_Click">Sign up Now</asp:LinkButton>
                </div>
            </center>
    </form>

</body>
</html>
