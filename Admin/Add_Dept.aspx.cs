using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_Manage : System.Web.UI.Page
{
    string strcon = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

        
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strcon);
        con.Open();
        SqlCommand cmd = new SqlCommand("dept", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Action", "insert");
        cmd.Parameters.AddWithValue("@dept_id", TextBox1.Text);
        cmd.Parameters.AddWithValue("@dept_name", TextBox2.Text);

        int k = cmd.ExecuteNonQuery();
        if (k != 0)
        {

            Label3.Text = "Department Inserted Succesfully ";            
            Label3.ForeColor = System.Drawing.Color.CornflowerBlue;
        }
        GridView1.DataBind();
        con.Close();
   
    }

}