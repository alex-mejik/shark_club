using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web.Services;

public partial class Index : System.Web.UI.Page
{

   

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["logged"] == null)
        {
            Response.Redirect("LogIn.aspx");
        }
        
        

    }




    [WebMethod]
    public static void PostToKRMWallstreet(string contact_name, string phone, string newsletter)
    {
        try
        {
            string strtopost = "appname=WSI&prgname=DU4&arguments=-A" + contact_name + ",-A,-A" + phone + ",-ASharkClub,-N,-A,-Aemail,-Acity,-A,-Aמטה,-A" + newsletter;
            // Create a request using a URL that can receive a post. 
            WebRequest request = WebRequest.Create("http://lead.kidum.com/magic93scripts/mgrqispi93.dll");
            // Set the Method property of the request to POST.
            request.Method = "POST";
            // Create POST data and convert it to a byte array.
            string postData = strtopost;
            byte[] byteArray = Encoding.UTF8.GetBytes(postData);
            // Set the ContentType property of the WebRequest.
            request.ContentType = "application/x-www-form-urlencoded";
            // Set the ContentLength property of the WebRequest.
            request.ContentLength = byteArray.Length;
            // Get the request stream.
            Stream dataStream = request.GetRequestStream();
            // Write the data to the request stream.
            dataStream.Write(byteArray, 0, byteArray.Length);
            // Close the Stream object.
            dataStream.Close();
            // Get the response.
            WebResponse response = request.GetResponse();
            // Display the status.
            Console.WriteLine(((HttpWebResponse)response).StatusDescription);
            // Get the stream containing content returned by the server.
            dataStream = response.GetResponseStream();
            // Open the stream using a StreamReader for easy access.
            StreamReader reader = new StreamReader(dataStream);
            // Read the content.
            string responseFromServer = reader.ReadToEnd();
            // Display the content.
            Console.WriteLine(responseFromServer);
            // Clean up the streams.
            reader.Close();
            dataStream.Close();
            response.Close();

        }
        catch (Exception ex)
        {

            SendMailToSystem(ex.Message);
        }
    }




    [WebMethod]
    public static string Send(string contact_name, string phone, string mumlazname, string mumlazphone,string snif)
    {
        string date = DateTime.Now.ToShortTimeString() + " " + DateTime.Now.ToShortDateString();
        string mailto = "";

        switch (snif.Trim())
        {
            case "ראשון-לציון":
                mailto = "Sharon.eliaz@wsenglish.co.il";
                break;
            case "נצרת":
                mailto = "Dia.khouri@kidum.com";
                break;
            case "ירושלים":
                mailto = "Sarah.david@kidum.com,adir.pinhasi@wsenglish.co.il";
                break;
            case "תל-אביב":
                mailto = "gili.pahima@wsi.co.il";
                break;
            case "באר שבע":
                mailto = "michals2@wsenglish.co.il,idan.abramovich@wsenglish.co.il";
                break;
            case "חיפה":
                mailto = "Anat.levin@wsi.co.il";
                break;
            case "רעננה":
                mailto = "assaf.eyal@wsi.co.il";
                break;
            case "קריון":
                mailto = "tamarpeltzer@kidum.co.il";
                break;
            case "אשדוד":
                mailto = "nava.volov@kidum.com,shirli.mazor@kidum.com,dorit.ben-ashkenazi@kidum.com";
                break;
            case "נתניה":
                mailto = "Eli.Hotoveli@WSEnglish.co.il";
                break;
            case "פתח-תקווה":
                mailto = "assaf.eyal@wsi.co.il";
                break;
            case "לקוח עסקי":
                mailto = "meital.azulay@wsenglish.co.il";
                break;
            
        }

        try
        {


            System.Text.StringBuilder sb = new System.Text.StringBuilder();

            sb.Append("<table style='direction: rtl;float: right;'>");
            sb.AppendFormat("<tr><td>שם ממליץ:</td><td>{0}</td></tr>", contact_name);
            sb.AppendFormat("<tr><td>טלפון ממליץ:</td><td>{0}</td></tr>", phone);
            sb.AppendFormat("<tr><td>סניף:</td><td>{0}</td></tr>", snif);
            sb.AppendFormat("<tr><td>שם מומלץ:</td><td>{0}</td></tr>", mumlazname);
            sb.AppendFormat("<tr><td>טלפון מומלץ:</td><td>{0}</td></tr>", mumlazphone);
             sb.AppendFormat("<tr><td>נשלח ב::</td><td>{0}</td></tr>", date);
            sb.Append("<table>");



            MailMessage msg = new MailMessage();
            msg.IsBodyHtml = true;
            msg.From = new MailAddress("tagmediagroup@gmail.com");
            msg.To.Add(ConfigurationManager.AppSettings["mailTo"]);
            msg.To.Add(mailto);
            msg.CC.Add("shlomit.shalev@kidum.com");
            msg.Subject = "ליד מעמוד מועדון הכרישים";
            //msg.Body = "ליד מעמוד מועדון הכרישים :" +
            //    "<br/>שם ממליץ: "+ contact_name +
            //    ",<br/>טלפון ממליץ: " + phone +
            //     ",<br/> סניף: " + snif +
            //     ",<br/> שם מומלץ: " + mumlazname +
            //       ",<br/> טלפון מומלץ: " + mumlazphone +
            //    ",<br/> Sent :"+ date;
            msg.Body = sb.ToString();




            msg.IsBodyHtml = true;
            SmtpClient sc = new SmtpClient("smtp.gmail.com");
            sc.Port = 25;
            sc.Credentials = new NetworkCredential("tagmediagroup@gmail.com", "1q2w3etag");
            sc.EnableSsl = true;
            sc.Send(msg);

            string str = string.Format("תודה " + contact_name + ", ניצור איתך קשר בהקדם!");
            return str;
        }
        catch (Exception ex)
        {
            SendMailToSystem(ex.Message);
            return "Not sent";
        }
    }


    public static void SendMailToSystem(string message)
    {
        string date = DateTime.Now.ToShortTimeString() + " " + DateTime.Now.ToShortDateString();


        try
        {

            MailMessage msg = new MailMessage();
            msg.IsBodyHtml = true;
            msg.From = new MailAddress("tagmediagroup@gmail.com");
            msg.To.Add(ConfigurationManager.AppSettings["mailToAdmin"]);
            msg.Subject = "Error send lid to KRM wallstreet";
            msg.Body = "Error thrown  : " + message; 
               



            SmtpClient sc = new SmtpClient("smtp.gmail.com");
            sc.Port = 25;
            sc.Credentials = new NetworkCredential("tagmediagroup@gmail.com", "1q2w3etag");
            sc.EnableSsl = true;
            sc.Send(msg);
        }
        catch (Exception ex)
        {
            throw ;
        }
    }
}



    //arr.push("http://192.117.167.156/magic93scripts/mgrqispi93.dll?appname=WSI&prgname=DU4&arguments=-Afullname,-A,-Aphone,-Atofes rashi,-N,-A,-Aemail,-Acity,-A,-Aמטה,-Anewsletter");

    //_gaq.push(['_trackPageview', '/leads/thanks.htm']);

    //$.post("/misc/getlead", {
    //    fullname: $("#home_contact_name").val(),
    //    phone: $("#home_contact_pre_phone").val() + $("#home_contact_phone").val(),
    //    newsletter: $("#home_contact_approve").is(":checked"),
    //    sendurl: arr[0]

    //}, function () {
    //    $("div.center").html("<div id='tnx'> תודה!<br/>נציגנו ייצור איתך קשר בהקדם.<br/></div>");

    //});