<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shark Club</title>
    <link rel="shortcut icon" href="/favicon.ico" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content-width="device-width" initial-scale="1">

    <script src="Content/modernizr.custom.41376.js"></script>
    <meta name="robots" content="NOINDEX, NOFOLLOW" />

    <script src="Scripts/jquery-1.9.1.min.js"></script>


    <script src="Scripts/bootstrap.min.js"></script>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/shark.css" rel="stylesheet" />

    <!--[if lt IE 10]>
<script type="text/javascript">

               $(document).ready(function() { 
  document.getElementById("ie8name").innerHTML = "שם ממליץ";
  document.getElementById("ie8phone").innerHTML = "טלפון ממליץ";
        document.getElementById("ie8snif").innerHTML = "סניף";        
             document.getElementById("ie8namemamlitx").innerHTML = "שם מומלץ";       
                     document.getElementById("ie8telmamlitx").innerHTML = "טלפון מומלץ";               



                
                });

</script>
<![endif]-->
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

    <script type="text/javascript" src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <!–[if lt IE 9]>
    <script type="text/javascript" src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script type="text/javascript" src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]–>

</head>
<body>


    <form runat="server" class="form-inline">

        <div id="MainDiv" class="container" runat="server" style="margin-top: 50px;">


            <div class="row updiv" style="background-color: white; min-height: 150px;">



                <div class="col-md-2">
                    <div id="logo1">
                        <img src="images/logotxt.png" id="logo" />

                    </div>

                </div>
                <div class="col-md-4">

                    <img class="visible-lg" src="images/shark.png" id="sharkpic" />
                </div>


                <div class="col-md-4">

                    <div class="txtdiv">
                        ברוכים הבאים למועדון הכרישים<br />


                        מועדון החברים האקסקלוסיבי של וול סטריט<br />

                        אחרי שהפסקת לשתוק כמו דג
                        <br />
                        והתחלת לדבר אנגלית,
                        מגיע לך להתפנק במגוון הנחות והטבות בלעדיות של כרישים!<br />

                        <p class="link"></p>
                    </div>

                </div>
                <div class="col-md-2">
                    <img src="images/sclub.png" id="logoShark" />


                </div>



            </div>





            <div class="bluerow row">
                <div class="pull-right">
                    <a href="http://www.wallstreet-english.co.il/" target="_blank">לאתר הבית של וולסטריט</a> | <a href="Content/תקנון - חבר ממליץ במועדון הכרישים - ינואר 2015.pdf" target="_blank">תקנון</a>
                </div>
                <div class="pull-right sosialIcons">
                    <a href="https://www.facebook.com/wse.Israel" target="_blank">
                        <img src="images/facebook.png" /></a><img src="images/twit.png" /><a href="https://plus.google.com/u/0/+Wallstreet-englishCoIl/posts" target="_blank"><img src="images/plus.png" /></a>
                </div>
            </div>


            <%--            <div class="row" id="main">
                <div class="col-sm-12">
                    <div class="" style="padding: 0; margin: 3px 0;">
                        <a href="html/balkan.html">
                            <img style="width: 100%;" src="images/main.png" />
                        </a>
                    </div>
                </div>

            </div>--%>
            <div class="row">
                <div class="col-sm-6">

                    <div class="box nopadleft">
                        <a href="html/Join.aspx">
                            <img src="images/atava1.png" />
                        </a>
                    </div>


                </div>
                <div class="col-sm-6">

                    <div class="box nopadRight">
                        <a href="html/main.html">
                            <img src="images/atava2.png" />
                        </a>
                    </div>



                </div>






            </div>


            <div class="row" id="backrow">
                <div class="col-sm-3">
                </div>
                <div class="col-sm-6">
                    <div class="box formdiv nopadRight">


                        <div class="insideForm">

                            <div class="viptxt">
                                ממליצים על חברים ומקבלים כרטיס זוגי לסרט VIP <span>במתנה*</span>
                            </div>


                            <div style="float: right; width: 50%">
                                <div id="ie8name"></div>
                                <input type="text" id="name" placeholder="שם ממליץ" /><span class="error"></span>
                                <div id="ie8phone"></div>
                                <input type="text" id="phone" placeholder="טלפון ממליץ" class="allownumericwithoutdecimal" /><span class="error"></span>
                                <div id="ie8snif"></div>
                                <select id="snifName">
                                    <option value="0">סניף הממליץ</option>
                                    <option value="1">ראשון-לציון</option>
                                    <option value="1">נצרת </option>
                                    <option value="1">ירושלים </option>
                                    <option value="1">תל-אביב </option>
                                    <option value="1">באר שבע </option>
                                    <option value="1">חיפה </option>
                                    <option value="1">רעננה</option>
                                    <option value="1">קריון</option>
                                    <option value="1">אשדוד </option>
                                    <option value="1">נתניה </option>
                                    <option value="1">פתח-תקווה</option>
                                    <option value="1">לקוח עסקי</option>
                                </select><span class="error"></span>

                                <span class="pull-right" style="font-weight: bold; font-size: 9px;">*בכפוף <a target="_blank" style="color: blue" href="Content/תקנון - חבר ממליץ במועדון הכרישים - ינואר 2015.pdf">לתקנון </a>מתנה לבחירה: כרטיס זוגי / הטבת הצטרפות / זמן מתנה </span>
                            </div>
                            <div style="float: right; width: 50%;">
                                <div id="ie8telmamlitx"></div>
                                <input type="text" id="mumlazname" placeholder="שם מומלץ" /><span class="error"></span>
                                <div id="ie8namemamlitx"></div>
                                <input type="text" id="mumlazphone" placeholder="טלפון מומלץ" class="allownumericwithoutdecimal" /><span class="error"></span>

                                <input type="image" src="images/send.png" name="image" id="sendBtn" />
                            </div>

                            <div class="clearfix"></div>
                        </div>

                    </div>
                </div>
                <div class="col-sm-3">
                </div>

            </div>
            <div class="row">

                <div class="col-sm-3">

                    <div class="box nopadleft">
                        <a href="html/1.html">
                            <img src="images/vday.png" />
                        </a>
                    </div>

                </div>



                <div class="col-sm-3">

                    <div class="box ">
                        <a href="html/2.html">
                            <img src="images/snow.png" />
                        </a>
                    </div>

                </div>

                <div class="col-sm-6">

                    <div class="box nopadRight">
                        <a href="html/3.html">
                            <img src="images/burger.png" />
                        </a>
                    </div>

                </div>

            </div>

            <div class="row">


                <div class="col-sm-3">

                    <div class="box nopadleft">
                        <a href="html/4.html">
                            <img src="images/dance.png" />
                        </a>
                    </div>

                </div>

                <div class="col-sm-6">

                    <div class="box nopadRight">
                        <a href="html/5.html">
                            <img src="images/vaffc.png" />
                        </a>
                    </div>

                </div>

                <div class="col-sm-3">

                    <div class="box nopadRight">
                        <a href="html/6.html">
                            <img src="images/1.png" />
                        </a>
                    </div>

                </div>
            </div>





            <div class="row">

        
                <div class="col-sm-6">

                    <div class="box nopadRight">
                        <a href="html/7.html">
                            <img src="images/jews.png" />
                        </a>
                    </div>

                </div>
                <div class="col-sm-3">

                    <div class="box ">
                        <a href="html/8.html">
                            <img src="images/work.png" />
                        </a>
                    </div>

                </div>


                <div class="col-sm-3">

                    <div class="box nopadRight">
                        <a href="html/9.html">
                            <img src="images/din.png" />
                        </a>
                    </div>

                </div>





            </div>







            <div class="row">


       <div class="col-sm-3">

                    <div class="box ">
                        <a href="html/10.html">
                            <img src="images/11.png" />
                        </a>
                    </div>

                </div>
                       <div class="col-sm-3">

                    <div class="box ">
                        <a href="html/11.html">
                            <img src="images/22.png" />
                        </a>
                    </div>

                </div>

                       <div class="col-sm-3">

                    <div class="box ">
                        <a href="html/12.html">
                            <img src="images/33.png" />
                        </a>
                    </div>

                </div>
                         <div class="col-sm-3">

                    <div class="box ">
                        <a href="html/13.html">
                            <img src="images/44.png" />
                        </a>
                    </div>

                </div>


            </div>


                
             <div class="row">

                     <div class="col-sm-6">

                    <div class="box nopadRight">
                        <a href="html/14.html">
                            <img src="images/55.png" />
                        </a>
                    </div>

                </div>
     

           <div class="col-sm-3">

                    <div class="box ">
                        <a href="html/15.html">
                            <img src="images/66.png" />
                        </a>
                    </div>

                </div>
           <div class="col-sm-3">

                    <div class="box ">
                        <a href="html/16.html">
                            <img src="images/77.png" />
                        </a>
                    </div>

                </div>


            </div>




   
        </div>



    </form>









    <script>

        $(document).ready(function () {







            //$('select').on('change', function () {
            //    alert($(this).find(":selected").text());
            //})

            $(".allownumericwithoutdecimal").on("keypress keyup blur", function (event) {
                $(this).val($(this).val().replace(/[^\d].+/, ""));
                if ((event.which < 48 || event.which > 57)) {
                    event.preventDefault();
                }
            });




            $("form").submit(function () {
                // alert("sdsdsd");

                test();
                return false;


            });



            // alert($("#snifName").val());









        });
    </script>


    <script>

        function test() {
            var error = "";

            if ($("#name").val() == "") {
                error += "הנא הזינו שם מלא" + "\n";
                $("#name").next().css({ display: "inline", color: "red" }).html("הנא הזינו שם מלא").fadeOut(2000);
            }

            if ($("#phone").val() == "") {
                error += "הנא הזינו טלפון " + "\n";
                $("#phone").next().css({ display: "inline", color: "red" }).html("הנא הזינו טלפון").fadeOut(2000);
            }

            if ($("#mumlazname").val() == "") {
                error += "הנא הזינו את שם המומלץ " + "\n";
                $("#mumlazname").next().css({ display: "inline", color: "red" }).html("הנא הזינו את שם המומלץ").fadeOut(2000);
            }

            if ($("#mumlazphone").val() == "") {
                error += "הנא הזינו את שם המומלץ " + "\n";
                $("#mumlazphone").next().css({ display: "inline", color: "red" }).html("הנא הזינו את טלפון המומלץ").fadeOut(2000);
            }


            if ($("#snifName").val() == 0) {
                error += "הנא הזינו את שם המומלץ " + "\n";
                $("#snifName").next().css({ display: "inline", color: "red" }).html("הנא ביחרו את סניף הממליץ").fadeOut(2000);
            }




            if (error != "") {
                //alert(error);

            } else {
                //alert("sending");

                $('#sendBtn').attr('disabled', 'disabled');
                send();
            }

            function send() {
                // alert("herer");

                var data = {
                    contact_name: $('#name').val(),
                    phone: $('#phone').val(),
                    mumlazname: $('#mumlazname').val(),
                    mumlazphone: $('#mumlazphone').val(),
                    snif: $('select').find(":selected").text()

                }
                data = JSON.stringify(data);

                //alert(data);

                //send krm
                //$.ajax({
                //    type: "POST",
                //    contentType: "application/json; charset=utf-8",
                //    url: "Index.aspx/PostToKRMWallstreet",
                //    data: data,
                //    dataType: "json",
                //    success: function (msg) {
                //    }
                //});




                //send mail
                $.ajax({
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    url: "Index.aspx/Send",
                    data: data,
                    dataType: "json",
                    success: function (msg) {
                        // $('.formfolder').html("<br/> <span class='sentMgs'>הפרטים נשלחו </span>");
                        // window.location.replace("Tnx.aspx#tar");
                        // alert(msg.d);
                        $(".insideForm").html("").html("<p> " + msg.d + "</p>").css("padding", "10px").css("height", "195px");
                        //window.location.replace("Thank.aspx");
                    }
                });
            }


        }

    </script>

    <style>
        .popover {
            top: 450px !important;
            left: 200px !important;
        }

        .popover {
        }

        .popover-title, .popover-content {
            direction: rtl;
        }
    </style>
</body>
</html>
