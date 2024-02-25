using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationDBMS
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {
            string user = "vishwajitha";
            string password = "123";
            if (txt_Username.Text == user && txt_password.Text == password)
            {
                Response.Redirect("DisplayBookings.aspx");
            }
            else
            {
                lbl.Text = "Invalid Credentials";
            }
        }
    }
}