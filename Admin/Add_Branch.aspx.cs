using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_Add_Branch : System.Web.UI.Page
{
    string strcon = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
  
    protected void Button3_Click1(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strcon);
        con.Open();
        SqlCommand cmd = new SqlCommand("branch_detail", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Action", "insert");
        cmd.Parameters.AddWithValue("@branch_code", TextBox3.Text);
        cmd.Parameters.AddWithValue("@branch_name", TextBox4.Text);

        int k = cmd.ExecuteNonQuery();
        if (k != 0)
        {

            Label2.Text = "Branch Inserted Succesfully ";
            Label2.ForeColor = System.Drawing.Color.CornflowerBlue;
        }
        GridView1.DataBind();
        con.Close();
    }
}