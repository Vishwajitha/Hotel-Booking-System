using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace WebApplicationDBMS
{
    public partial class Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                hdn.Value = Request.QueryString["id"];
                getdatabyid();
            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_UpdateData", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@name", txtname.Text);
                cmd.Parameters.AddWithValue("@emailid", txtemail.Text);
                cmd.Parameters.AddWithValue("@mobile", txtmobile.Text);
                cmd.Parameters.AddWithValue("@doa", Convert.ToDateTime(txtdoa.Text));
                cmd.Parameters.AddWithValue("@dod", Convert.ToDateTime(txtdod.Text));
                cmd.Parameters.AddWithValue("@RoomsRequired", ddlroom.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@id", Request.QueryString["id"]);
                int x = cmd.ExecuteNonQuery();
                if (x > 0)
                {
                    Response.Redirect("DisplayBookings.aspx");
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

        public void getdatabyid()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_getBookingById", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@id", Request.QueryString["id"]);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    txtname.Text = dr[1].ToString();
                    txtemail.Text = dr[2].ToString();
                    txtmobile.Text = dr[3].ToString();
                    txtdoa.Text = dr[4].ToString();
                    txtdod.Text = dr[5].ToString();
                    ddlroom.Items.FindByValue(dr[6].ToString()).Selected = true;
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