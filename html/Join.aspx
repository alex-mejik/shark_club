<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Join.aspx.cs" Inherits="html_Join" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <script src="../Scripts/jquery-1.9.1.min.js"></script>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
     <link href="../Content/pop.css" rel="stylesheet" />
       <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
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
    <form  runat="server">
        <div id="mainDiv" runat="server" visible="false">
            <div class="container">
           <%-- <button class="btn btn-info" onclick="history.go(-1);">חזרה לכל ההטבות<i class="fa fa-reply"></i></button>--%>
                <a href="../Index.aspx" class="btn btn-info">חזרה לכל ההטבות<i class="fa fa-reply"></i></a>
            <button class="btn btn-primary" onclick="window.print()">הדפס שובר<i class="fa fa-print "></i></button>

        </div>
        <div class="container imageDiv">
            <img src="../images/popup/קווין.jpg" />
            <br />
        </div>
        </div>




                   <div id="LoginDiv" runat="server" visible="true">


            <div class="container" style="direction: rtl; margin-top: 300px">
                <div class="jumbotron">
                    <h1>ברוכים הבאים
למועדון הכרישים</h1>
                    <p>על מנת ליהנות מהטבת הצטרפות</p>
                    <p>
                        <asp:TextBox ID="PasswordTextBox" runat="server"></asp:TextBox>
                        <asp:Button ID="LoginButton" class="btn btn-sky text-uppercase btn-lg" runat="server"
                            Text="כנס" OnClick="LoginButton_Click"  />
                    </p>
                    <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red" Font-Size="Medium"></asp:Label>
                </div>

            </div>




        </div>




    </form>
  
</body>

    <script>
        $(window).load(function () {

            function windowResize() {
                var contentWidth = document.getElementById(".imageDiv").offsetWidth+20;
                var contentHeight = document.getElementById(".imageDiv").offsetHeight+20;
                window.resizeTo(contentWidth, contentHeight);
            }

        });
    </script>
<style>
    .container, .imageDiv {
        text-align: center;
       
    }
    .btn {
        margin-top:30px;
    }
    @media print {
        body * {
            visibility: hidden;
        }

        .imageDiv, .imageDiv * {
            visibility: visible;
        }

        .imageDiv {
            position: absolute;
            left: 0;
            top: 0;
        }
    }
@media (max-width: 480px) { 
        #PasswordTextBox
        {width:100%}

}
</style>
</html>
