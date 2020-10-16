<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>

</script>
    <style type="text/css">
        #TextBox1 {
            width: 193px;
            height: 30px;
        }

        .box {
            text-align: center;
        }

        .login-box {
            width: 350px;
            height: 450px;
            background: rgb(211,211,211);
            top: 50%;
            left: 50%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 70px 30px;
        }

        .pStyle {
            display: inline-flex;
            width: 100%;
            margin-top: 0.5em;
        }

        #Image1 {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            position: absolute;
            top: -50px;
            left: calc(50% - 50px);
        }

        p {
            margin: 0;
            padding: 0 0 20px;
            text-align: center;
            font-size: 25px;
            color: black;
            font-weight: bold;
        }

        #Label2 {
            margin: 0;
            padding: 0;
            font-weight: bold;
            color: black;
            margin-top:20px;
            font-size:18px;
        }

        #Label4 {
            margin: 0;
            padding: 0;
            font-weight: bold;
            color: black;
            margin-top:20px;
            font-size:18px;
        }

        #TextBox3 {
            width: 100%;
            height:20px;
            margin-bottom:20px;
            margin-top:10px;
        }

        #TextBox4 {
            width: 100%;
            height:20px;
            margin-bottom: 20px;
            margin-top:10px;
        }

        #Button2 {
            border-radius: 15px;
            font-weight: bold;
            margin-top:15px;
        }

        .BB {
            background-color: rgb(129,220, 186);
        }
        .error{
            color: red;
            margin-left: 3px;
        }
    </style>
</head>
<body class="BB">
    <div class="login-box">
        <asp:Image ID="Image1" runat="server" ImageUrl="https://designgyan.com/srp457/assets3/icons/loginLogo.png" />
        <p>
            Login Here
        </p>
        <form id="form2" runat="server">

            <div class="box">
                <asp:Label ID="Label2" runat="server" Text="Email Id"></asp:Label>
                <p class="pStyle">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="error" runat="server" ErrorMessage="*" Display="Dynamic" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                </p>

                <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                <p class="pStyle">
                    <asp:TextBox ID="TextBox4" type="password" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="error" runat="server" ErrorMessage="*" Display="Dynamic" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                </p>

                <asp:Button ID="Button2" runat="server" Text="Login" OnClick="Button1_Click" Font-Italic="True" BackColor="#00CC66" Height="35px" Width="119px" />
            </div>
            <asp:GridView ID="GridView2" runat="server"></asp:GridView>

        </form>


    </div>


</body>
</html>
