<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shark Club</title>
    <link rel="shortcut icon" href="/favicon.ico">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <script src="Content/modernizr.custom.41376.js"></script>

    <script src="Scripts/jquery-1.9.1.min.js"></script>


    <script src="Scripts/bootstrap.min.js"></script>
    <link href="http://maxcdn.bootstrapcdn.com/bootswatch/3.2.0/lumen/bootstrap.min.css" rel="stylesheet"/>

    <link href="Content/shark.css" rel="stylesheet" />

    <script type="text/javascript">
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-4819882-1']);
        _gaq.push(['_trackPageview']);

        (function () {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();
    </script>




</head>
<body>
    <form id="form1" runat="server">
           <div id="LoginDiv" runat="server" visible="true">


            <div class="container" style="direction: rtl; margin-top: 300px">
                <div class="jumbotron">
                    <h1>ברוכים הבאים
למועדון הכרישים</h1>
                    <p>על מנת להנות מהמבצעים וההטבות יש להזין סיסמה של כרישים</p>
                    <p>
                        <asp:TextBox ID="PasswordTextBox" runat="server"></asp:TextBox>
                        <asp:Button ID="LoginButton" class="btn btn-sky text-uppercase btn-lg" runat="server"
                            Text="שלח" OnClick="LoginButton_Click" />
                    </p>
                    <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red" Font-Size="Medium"></asp:Label>
                </div>

            </div>




        </div>
    </form>
</body>
</html>
