using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class html_Join : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        if (PasswordTextBox.Text == "shark0715")
        {
            LoginDiv.Visible = false;
            mainDiv.Visible = true;

        }
        else
        {
            Label1.Text = "נסה שנית";
        }
    }
}