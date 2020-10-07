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
public partial class ViewCus : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["MajDatabase"].ConnectionString);
    SqlCommand insert;
    SqlDataReader sdr;
    SqlDataAdapter adapt = null;
    DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)

        if (TbxSearch.Text == "")
        {
            Display();
        }
        else
        {
            ButtonSearch();
        }
       

    }
    public void Display()
    {
        con.Open();
        adapt = new SqlDataAdapter("select * from Applicants", con);
        DataTable dt = new DataTable();
        adapt.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();


    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }

    protected void TbxSearch_TextChanged(object sender, EventArgs e)
    {
        ButtonSearch();
    }

    protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
    {
        dt = new DataTable();
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void BtnSearch_Click(object sender, EventArgs e)
    {
        ButtonSearch();
    }
    public void ButtonSearch()
    {
        con.Open();
       
        adapt = new SqlDataAdapter("select * from Applicants where Cus_Id like '" + TbxSearch.Text + "%' or LName like '" + TbxSearch.Text + "%' or FName like '" + TbxSearch.Text + "%'", con);

        DataTable dt = new DataTable();
        adapt.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        else
        {
            GridView1.DataBind();
            Gresult.Text = "No Records Found";
        }

       
        
        con.Close();
    }

   
}