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
using System.Globalization;

public partial class Users_LoanBalance : System.Web.UI.Page
{
    SqlCommand insert;
    SqlDataReader sdr;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button_SEARCH_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["MajDatabase"].ConnectionString);
        SqlDataReader reader = null;
        con.Close();

        insert = new SqlCommand("LoanBalanceSearch", con);
        insert.CommandType = System.Data.CommandType.StoredProcedure;
        insert.Parameters.AddWithValue("@LoanBSearch", BalanceSearch.Value);

        con.Open();
        reader = insert.ExecuteReader();
        if (reader.Read())
        {
            CustID.Text = reader.GetValue(0).ToString();
            First_Name.Value = reader.GetValue(1).ToString();
            Last_Name.Value = reader.GetValue(2).ToString();
            Amount.Value = reader.GetValue(3).ToString();
            Interest.Value = reader.GetValue(4).ToString();
            Duration.Value = reader.GetValue(5).ToString();
            T_Amount.Value = reader.GetValue(6).ToString();
           
        }
        else
        {


            BalResult.Text = "Record was not Found...!";
            BalResult.Visible = true;
           

        }
        con.Close();
    }

}
