using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationDBMS
{
    public partial class RoomBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnbook_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_book", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@name", txtname.Text);
                cmd.Parameters.AddWithValue("@emailid", txtemail.Text);
                cmd.Parameters.AddWithValue("@mobile", txtmobile.Text);
                cmd.Parameters.AddWithValue("@doa", Convert.ToDateTime(txtdoa.Text));
                cmd.Parameters.AddWithValue("@dod", Convert.ToDateTime(txtdod.Text));
                cmd.Parameters.AddWithValue("@roomsrequired", ddlroom.SelectedItem.Value);
                int x = cmd.ExecuteNonQuery();
                if (x > 0)
                {
                    Response.Redirect("Book.aspx");
                }
                else
                {
                    Response.Write("Something went wrong");
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
            }

        }
    }
}