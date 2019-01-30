using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_subject_assign : System.Web.UI.Page
{
    string strcon = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strcon);
        con.Open();
        SqlCommand cmd = new SqlCommand("subject_assign", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Action", "insert");
        cmd.Parameters.AddWithValue("@f_id", DropDownList1.Text);
        cmd.Parameters.AddWithValue("@f_name", DropDownList2.Text);
        cmd.Parameters.AddWithValue("@subject_name", DropDownList3.Text);
        cmd.Parameters.AddWithValue("@subject_code", DropDownList4.Text);
        cmd.Parameters.AddWithValue("@sem", DropDownList5.Text);
        
        int k = cmd.ExecuteNonQuery();
        if (k != 0)
        {

            Label4.Text = "Subject Assigned Succesfully ";
            Label4.ForeColor = System.Drawing.Color.CornflowerBlue;
        }
        GridView1.DataBind();
        con.Close();
    }
}