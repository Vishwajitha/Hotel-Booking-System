using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplicationDBMS
{
    public partial class Book : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                getPlaces();
            }
        }

        public void getPlaces()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            try
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from places", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                ddlplaces.Items.Clear();
                ddlplaces.Items.Add("--Select--");
                ddlplaces.DataTextField = "pname";
                ddlplaces.DataValueField = "pid";
                ddlplaces.DataSource = dt;
                ddlplaces.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void ddlplaces_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            try
            {
                con.Open();  
                SqlCommand cmd = new SqlCommand("Select * from Hotels where pid=@pid", con);
                cmd.Parameters.AddWithValue("@pid", ddlplaces.SelectedItem.Value);
                SqlDataAdapter da = new SqlDataAdapter();
                DataTable dt = new DataTable();
                da.SelectCommand = cmd;
                da.Fill(dt);
                ddlhotel.Items.Clear();
                ddlhotel.Items.Add("--Select--");
                ddlhotel.DataValueField = "hid";
                ddlhotel.DataTextField = "hname";
                ddlhotel.DataSource = dt;
                ddlhotel.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void btnbook_Click(object sender, EventArgs e)
        {
            Response.Redirect("RoomBook.aspx");
        }
    }
}