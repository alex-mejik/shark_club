using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LogIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {


        if (PasswordTextBox.Text == "shark")
        {

            HttpCookie myCookie = new HttpCookie("UserPass");
            myCookie.Value = "true";
            myCookie.Expires = DateTime.Now.AddDays(1d);
            Response.Cookies.Add(myCookie);

            Session["logged"] = "logged";
            Session.Timeout = 1440;
            Response.Redirect("Index.aspx");

        }else
        {
            Label1.Text = "סיסמה שגוייה - נסה שנית";
        }
    }
}