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
using System.IO;
using System.IO.MemoryMappedFiles;
using System.Data.OleDb;



public partial class MainMasterPage : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["MajDatabase"].ConnectionString);
    SqlCommand insert;
    SqlDataReader sdr;

    protected void Page_Load(object sender, EventArgs e)
    {
        

        if (Session["Username"] != null)
        {
            LogPerson.Text =Convert.ToString(Session["Username"]);
            
        }
        else if (Session["Username"] == null)
        {
            Response.Redirect("/lo.aspx");
        }
        
    }


    protected void Lo_Click(object sender, EventArgs e)
    {
        Session["Username"] = null;

        if (Session["Username"] == null)
        {
            Response.Redirect("/lo.aspx");
        }
        
    }
   

    protected void btnPath_Click(object sender, EventArgs e)
    {
        con.Open();
        
            insert = new SqlCommand("BackupDatabase", con);
            insert.CommandType = System.Data.CommandType.StoredProcedure;
            sdr = insert.ExecuteReader();
        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Backup Successful');</script>");
        con.Close();
        
     

    }
   
    protected void btnImport_Click(object sender, EventArgs e)
    {
        string path = @"C:\Users\courts\Documents\";

        string fileName = Path.GetFullPath(path);

        string filepath = fileName + FileUpload1.FileName;

        
       



        string[] validFileTypes = { "csv", "txt", "xls" };
        string ext = Path.GetExtension(FileUpload1.FileName);
        bool isValidType = false;

        for (int i = 0; i < validFileTypes.Length; i++)
        {
            if (ext == "." + validFileTypes[i])
            {
                isValidType = true;



                con.Open();

                insert = new SqlCommand("Bulk_Insert", con);
                insert.CommandType = System.Data.CommandType.StoredProcedure;
                insert.Parameters.AddWithValue("@filePath", filepath);
                insert.Parameters.AddWithValue("@Bulk ", DBNull.Value);
                sdr = insert.ExecuteReader();

               
                

            }
        }

        if (!isValidType)
        {
            Response.Write("<script>alert('Invalid File Type');</script>");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('File Uploaded Successfully');</script>");
        }
        con.Close();
    }
}


