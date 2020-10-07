using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;
using System.Data;


public partial class lo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  

   

    protected void LogBtn_ServerClick(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["MajDatabase"].ConnectionString);


        con.Open();
        SqlCommand cmd = new SqlCommand("logs", con);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@username", username.Value);
        cmd.Parameters.AddWithValue("@passwords", password.Value);
        SqlDataReader sdr = cmd.ExecuteReader();

        if (sdr.HasRows)
        {
            Session["Username"] = username.Value;
            Response.Redirect("Users/Home.aspx?username");



        }
        else
        {
            username.Value = "";
            password.Value = "";
            Res.Text = "Invalid username or password";


        }
    }
}   
