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

public partial class LoanBook : System.Web.UI.Page
{

    SqlCommand insert;
    SqlDataReader sdr;







    protected void Page_Load(object sender, EventArgs e)
    {

        //LendingCalculations();
        LoanNumbers();




    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Label LogPerson = (Label)Master.FindControl("LogPerson");
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["MajDatabase"].ConnectionString);
        con.Open();

        insert = new SqlCommand("SELECT COUNT(*) FROM Loan WHERE Cus_Id  ='" + CusLoad.Text + "'", con);
        sdr = insert.ExecuteReader();

        sdr.Read();
        int RegNo = (int)sdr[0];
        if (RegNo > 0)
        {

            CusClear();
            res.Text = "Already Have a Loan";
            res.Visible = true;
            return;
        }

        else
        {
            sdr.Close();
            insert = new SqlCommand("addLoan", con);
            insert.CommandType = System.Data.CommandType.StoredProcedure;
            insert.Parameters.AddWithValue("@Cus_ID", Convert.ToInt32(L_BI.Value));
            insert.Parameters.AddWithValue("@TLoan", tLoan.Value);
            insert.Parameters.AddWithValue("@Amount", Convert.ToDecimal(Amount.Value));
            insert.Parameters.AddWithValue("@Interest", Convert.ToDecimal(Interest.Value));
            insert.Parameters.AddWithValue("@LDate", Convert.ToDateTime(lDat.Text));
            insert.Parameters.AddWithValue("@Duration", Convert.ToDecimal(Duration.Value));
            insert.Parameters.AddWithValue("@T_Amount", Convert.ToDecimal(T_Amount.Value));
            insert.Parameters.AddWithValue("@M_pay", Convert.ToDecimal(M_Pay.Value));
            insert.Parameters.AddWithValue("@Reason", Reason.Value);
            insert.Parameters.AddWithValue("@GFName", GFName.Value);
            insert.Parameters.AddWithValue("@GLName", GLName.Value);
            insert.Parameters.AddWithValue("@GAddress", GAddress.Value);
            insert.Parameters.AddWithValue("@GTrn", Convert.ToInt32(GTrn.Value));
            insert.Parameters.AddWithValue("@GOccupation", GOccupation.Value);
            insert.Parameters.AddWithValue("@GTelephone", GTelephone.Value);
            insert.Parameters.AddWithValue("@username", LogPerson.Text);




            sdr = insert.ExecuteReader();

            //clear();
            res.Text = "Application Successful";
            res.Visible = true;
            LoanNumbers();

        }
        con.Close();
        LoanBalances();
    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["MajDatabase"].ConnectionString);
        SqlDataReader reader = null;


        insert = new SqlCommand("LoadLoan", con);
        insert.CommandType = System.Data.CommandType.StoredProcedure;
        insert.Parameters.AddWithValue("@loadSearch", CusLoad.Text);

        con.Open();
        reader = insert.ExecuteReader();
        if (reader.Read())
        {
            L_BI.Value = reader.GetValue(0).ToString();
            sName.Value = reader.GetValue(1).ToString();
            AN.Text = reader.GetValue(2).ToString();


            /*tLoan.Value = reader.GetValue(3).ToString();
            Amount.Value = reader.GetValue(4).ToString();
            Interest.Value = reader.GetValue(5).ToString();
            lDat.Value = reader.GetValue(6).ToString();
            Duration.Value = reader.GetValue(7).ToString();
            T_Amount.Value = reader.GetValue(8).ToString();
            M_Pay.Value = reader.GetValue(9).ToString();

            Reason.Value = reader.GetValue(10).ToString();
            GFName.Value = reader.GetValue(11).ToString();
            GLName.Value = reader.GetValue(12).ToString();

            GAddress.Value = reader.GetValue(13).ToString();
            GTrn.Value = reader.GetValue(14).ToString();
            GOccupation.Value = reader.GetValue(15).ToString();
            GTelephone.Value = reader.GetValue(16).ToString();*/


        }
        else
        {


            res.Text = "Customer not Found...!";
            res.Visible = true;
            CusClear();

        }
        con.Close();

    }
    public void CusClear()
    {
        L_BI.Value = "";
        sName.Value = "";
        AN.Text = "";


    }


    protected void BUpdate_Click(object sender, EventArgs e)
    {
        Label LogPerson = (Label)Master.FindControl("LogPerson");
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["MajDatabase"].ConnectionString);
        con.Open();

        insert = new SqlCommand("UpdateLoan", con);
        insert.CommandType = System.Data.CommandType.StoredProcedure;
        insert.Parameters.AddWithValue("@loan_id", loanID.Text);
        insert.Parameters.AddWithValue("@Cus_ID", Convert.ToInt64(L_BI.Value));
        insert.Parameters.AddWithValue("@TLoan", tLoan.Value);
        insert.Parameters.AddWithValue("@Amount", Convert.ToDecimal(Amount.Value));
        insert.Parameters.AddWithValue("@Interest", Convert.ToDecimal(Interest.Value));
        insert.Parameters.AddWithValue("@LDate", Convert.ToDateTime(lDat.Text));
        insert.Parameters.AddWithValue("@Duration", Convert.ToDecimal(Duration.Value));
        insert.Parameters.AddWithValue("@T_Amount", Convert.ToDecimal(T_Amount.Value));
        insert.Parameters.AddWithValue("@M_pay", Convert.ToDecimal(M_Pay.Value));
        insert.Parameters.AddWithValue("@Reason", Reason.Value);
        insert.Parameters.AddWithValue("@GFName", GFName.Value);
        insert.Parameters.AddWithValue("@GLName", GLName.Value);
        insert.Parameters.AddWithValue("@GAddress", GAddress.Value);
        insert.Parameters.AddWithValue("@GTrn", Convert.ToInt64(GTrn.Value));
        insert.Parameters.AddWithValue("@GOccupation", GOccupation.Value);
        insert.Parameters.AddWithValue("@GTelephone", GTelephone.Value);
        insert.Parameters.AddWithValue("@username", LogPerson.Text);


        sdr = insert.ExecuteReader();


        res.Text = " Successful";
        res.Visible = true;
        con.Close();
        LoanBalances();
    }

    protected void BDelete_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["MajDatabase"].ConnectionString);
        con.Open();

        insert = new SqlCommand("Loan_Delete", con);
        insert.CommandType = System.Data.CommandType.StoredProcedure;
        insert.Parameters.AddWithValue("@deleteLoan", loanID.Text);
        insert.ExecuteNonQuery();
        con.Close();

        res.Text = "Loan Deleted";
        res.Visible = true;
        LoanClear();

        LoanNumbers();
        con.Close();


    }

    protected void BNew_Click(object sender, EventArgs e)
    {
        LoanClear();
        res.Visible = false;
    }
    public void LoanClear()
    {
        CusLoad.Text = "";
        loanID.Text = "";
        L_BI.Value = "";
        tLoan.Value = "";
        Amount.Value = "";
        Interest.Value = "";
        lDat.Text = "";
        Duration.Value = "";
        T_Amount.Value = "";
        M_Pay.Value = "";
        Reason.Value = "";
        GFName.Value = "";
        GLName.Value = "";
        GAddress.Value = "";
        GTrn.Value = "";
        GOccupation.Value = "";
        GTelephone.Value = "";
        LSearchID.Text = "";
    }

    protected void Lsearch_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["MajDatabase"].ConnectionString);
        SqlDataReader reader = null;

        insert = new SqlCommand("LoadSearch", con);
        insert.CommandType = System.Data.CommandType.StoredProcedure;
        insert.Parameters.AddWithValue("@loanSearch", LSearchID.Text);

        con.Open();
        reader = insert.ExecuteReader();
        if (reader.Read())
        {
            loanID.Text = reader.GetValue(0).ToString();
            L_BI.Value = reader.GetValue(1).ToString();
            tLoan.Value = reader.GetValue(2).ToString();
            Amount.Value = reader.GetValue(3).ToString();
            Interest.Value = reader.GetValue(4).ToString();
            lDat.Text = reader.GetValue(5).ToString();
            Duration.Value = reader.GetValue(6).ToString();
            T_Amount.Value = reader.GetValue(7).ToString();
            M_Pay.Value = reader.GetValue(8).ToString();
            Reason.Value = reader.GetValue(9).ToString();
            GFName.Value = reader.GetValue(10).ToString();
            GLName.Value = reader.GetValue(11).ToString();
            GAddress.Value = reader.GetValue(12).ToString();
            GTrn.Value = reader.GetValue(13).ToString();
            GOccupation.Value = reader.GetValue(14).ToString();
            GTelephone.Value = reader.GetValue(15).ToString();
            res.Text = ""
;
        }
        else
        {


            res.Text = "Loan not Found...!";
            res.Visible = true;
            CusClear();

        }
        con.Close();
    }

    public void LendingCalculations()
    {
        if (Amount.Value != "" & Interest.Value != "" & Duration.Value != "")
        {
            double InterestRate, monthlyInterestRate, loanAmount, MonthlyPayment, TotalPayment;
            double numberOfyear;
            String iMonthlyPayment, iTotalPayment;


            InterestRate = Convert.ToDouble(Interest.Value);
            monthlyInterestRate = InterestRate / 1200;
            numberOfyear = Convert.ToDouble(Duration.Value);
            loanAmount = Convert.ToDouble(Amount.Value);


            MonthlyPayment = loanAmount * monthlyInterestRate / (1 - 1 / Math.Pow(1 + monthlyInterestRate, numberOfyear ));
            //---------------------------------

            iMonthlyPayment = Convert.ToString(MonthlyPayment);
            iMonthlyPayment = String.Format("{0:0.00}", MonthlyPayment);
            M_Pay.Value = iMonthlyPayment;

            //------------------------------------
            TotalPayment = MonthlyPayment * numberOfyear;
            iTotalPayment = String.Format("{0:0.00}", TotalPayment);
            T_Amount.Value = (iTotalPayment);


            Amount.Value = String.Format("{0:0.00}", loanAmount);
            Interest.Value = String.Format("{0:0.0}", InterestRate);

        }
        
    }
    public void LoanBalances()
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["MajDatabase"].ConnectionString);
        con.Open();

        insert = new SqlCommand("Balances", con);
        insert.CommandType = System.Data.CommandType.StoredProcedure;
        insert.Parameters.AddWithValue("@LoanAmount", Convert.ToDecimal(Amount.Value));
        insert.Parameters.AddWithValue("@InterestRate",Convert.ToDecimal(Interest.Value));
        insert.Parameters.AddWithValue("@Term ", Convert.ToInt32(Duration.Value));
        insert.Parameters.AddWithValue("@Payment ", Convert.ToDecimal(M_Pay.Value));
        insert.Parameters.AddWithValue("@Cus_Id", Convert.ToInt32(L_BI.Value));
        sdr = insert.ExecuteReader();
        con.Close();
    }

    public void LoanNumbers()
    {

        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["MajDatabase"].ConnectionString);
        con.Open();


        int count = 0;

        insert = new SqlCommand("Loanrecords_sp", con);
        count = (int)insert.ExecuteScalar();

        LoanRecords.Text = Convert.ToString(count);

        con.Close();

        
    }

    protected void Calculate_Click(object sender, EventArgs e)
    {
        LendingCalculations();
    }
}