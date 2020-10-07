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

using System.Drawing;
using System.Drawing.Printing;

using System.Text;
using System.Threading.Tasks;

using System.IO;

public partial class Customer : System.Web.UI.Page
{
    
    SqlCommand insert;
    SqlDataReader sdr;
    SqlDataAdapter adapt = null;
    DataTable dt;
   


    protected void Page_Load(object sender, EventArgs e)
    {
        NumberOfRows();

    }


        public void Clear()
    {
        CustID.Text = "";
        First_Name.Value=" ";
        Last_Name.Value="";
        Address.Value="";
        Age.Value="";
        Occupation.Value="";
        Trn.Value="";
        Gender1.Text="";
        Email.Value="";
        txDOB.Text="";
        Salary.Value="";
        Telephone.Value = "";
        appSearch.Value = "";
       



    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["MajDatabase"].ConnectionString);
        SqlDataReader reader = null;
        con.Close();

        insert = new SqlCommand("APPS", con);
        insert.CommandType = System.Data.CommandType.StoredProcedure;
        insert.Parameters.AddWithValue("AppSearch", appSearch.Value);

        con.Open();
        reader = insert.ExecuteReader();
        if (reader.Read())
        {
            CustID.Text = reader.GetValue(0).ToString();
            First_Name.Value = reader.GetValue(1).ToString();
            Last_Name.Value = reader.GetValue(2).ToString();
            Address.Value = reader.GetValue(3).ToString();
            Age.Value = reader.GetValue(4).ToString();
            Occupation.Value = reader.GetValue(5).ToString();
            Trn.Value = reader.GetValue(6).ToString();
            Gender1.Text = reader.GetValue(7).ToString();
            Email.Value = reader.GetValue(8).ToString();
            txDOB.Text = reader.GetValue(9).ToString();
            Salary.Value = reader.GetValue(10).ToString();
            Telephone.Value = reader.GetValue(11).ToString();

        }
        else
        {


            Result.Text = "Record was not Found...!";
            Result.Visible = true;
            Clear();

        }
        con.Close();
    }


   
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["MajDatabase"].ConnectionString);
        con.Open();
        insert = new SqlCommand("SELECT COUNT(*) FROM Loan WHERE Cus_Id = '" + CustID.Text + "'", con);
        sdr = insert.ExecuteReader();

        sdr.Read();
        int RegNo = (int)sdr[0];
        if (RegNo > 0)
        {

            Clear();
            Result.Text = "Cant delete, a Loan exists";
            Result.Visible = true;
            return;
        }
        else
        {

            sdr.Close();
            insert = new SqlCommand("App_Delete", con);
            insert.CommandType = System.Data.CommandType.StoredProcedure;
            insert.Parameters.AddWithValue("@deleteApp", CustID.Text);
            insert.ExecuteNonQuery();
            con.Close();
            Clear();
            Result.Text = "Customer Information Deleted";
            Result.Visible = true;
            NumberOfRows();



        }
        con.Close();
    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Clear();
        Result.Text = "";
    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Label LogPerson = (Label)Master.FindControl("LogPerson");
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["MajDatabase"].ConnectionString);
        con.Open();

        insert = new SqlCommand("App_Update", con);
        insert.CommandType = System.Data.CommandType.StoredProcedure;
        insert.Parameters.AddWithValue("@cus_id", CustID.Text);
        insert.Parameters.AddWithValue("@FName", First_Name.Value);
        insert.Parameters.AddWithValue("@LName", Last_Name.Value);
        insert.Parameters.AddWithValue("@Address", Address.Value);
        insert.Parameters.AddWithValue("@Age", Convert.ToInt32(Age.Value));
        insert.Parameters.AddWithValue("@Occupation", Occupation.Value);
        insert.Parameters.AddWithValue("@Trn", Convert.ToInt64(Trn.Value));
        insert.Parameters.AddWithValue("@Gender", Gender1.Text);
        insert.Parameters.AddWithValue("@Email", Email.Value);
        insert.Parameters.AddWithValue("@Dob", txDOB.Text);
        insert.Parameters.AddWithValue("@Salary", Convert.ToInt64(Salary.Value));
        insert.Parameters.AddWithValue("@Telephone", Convert.ToInt64(Telephone.Value));
        insert.Parameters.AddWithValue("@username", LogPerson.Text);
        sdr = insert.ExecuteReader();

        Clear();


        Response.Write( "<script>alert('Updated');</script>");

        //Result.Text = "Update";
        Result.Visible = true;
        con.Close();
    }

    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Label LogPerson  = (Label)Master.FindControl("LogPerson");
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["MajDatabase"].ConnectionString);
        con.Open();

        insert = new SqlCommand("SELECT COUNT(*) FROM Applicants WHERE FName = '" + First_Name.Value + "' And LName ='" + Last_Name.Value + "' And Address = '" + Address.Value + "'", con);
        sdr = insert.ExecuteReader();

        sdr.Read();
        int RegNo = (int)sdr[0];
        if (RegNo > 0)
        {

            Clear();
            Result.Text = "Member Name already exists.";
            Result.Visible = true;
            return;
        }

        else
        {

           

            sdr.Close();
            insert = new SqlCommand("APP", con);
            insert.CommandType = System.Data.CommandType.StoredProcedure;
            insert.Parameters.AddWithValue("@FName", First_Name.Value);
            insert.Parameters.AddWithValue("@LName", Last_Name.Value);
            insert.Parameters.AddWithValue("@Address", Address.Value);
            insert.Parameters.AddWithValue("@Age", Convert.ToInt32(Age.Value));
            insert.Parameters.AddWithValue("@Occupation", Occupation.Value);
            insert.Parameters.AddWithValue("@Trn", Convert.ToInt32(Trn.Value));
            insert.Parameters.AddWithValue("@Gender", Gender1.Text);
            insert.Parameters.AddWithValue("@Email", Email.Value);
            insert.Parameters.AddWithValue("@Dob", txDOB.Text);
            insert.Parameters.AddWithValue("@Salary", Convert.ToInt32(Salary.Value));
            insert.Parameters.AddWithValue("@Telephone", Convert.ToInt32(Telephone.Value));
            insert.Parameters.AddWithValue("@username", LogPerson.Text);


            sdr = insert.ExecuteReader();
            NumberOfRows();
            Clear();
            Result.Text = "ADDED";
            Result.Visible = true;

        }
        
    }
    public void NumberOfRows()
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["MajDatabase"].ConnectionString);
        con.Open();


        int count = 0;

        insert = new SqlCommand("records", con);
        count = (int)insert.ExecuteScalar();

        NumRecords.Text =Convert.ToString(count) ;

        con.Close();
    }
}