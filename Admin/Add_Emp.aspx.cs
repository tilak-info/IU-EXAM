using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_Add_Emp : System.Web.UI.Page
{
    string strcon = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strcon);
        con.Open();
        SqlCommand cmd = new SqlCommand("faculty", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Action", "insert");
        cmd.Parameters.AddWithValue("@f_id", TextBox1.Text);
        cmd.Parameters.AddWithValue("@name", TextBox2.Text);
        cmd.Parameters.AddWithValue("@dept", DropDownList1.Text);
        cmd.Parameters.AddWithValue("@branch", DropDownList4.Text);
        cmd.Parameters.AddWithValue("@password", TextBox3.Text);
        cmd.Parameters.AddWithValue("@mobile", TextBox4.Text);
        cmd.Parameters.AddWithValue("@email", TextBox5.Text);

        int k = cmd.ExecuteNonQuery();
        if (k != 0)
        {

            Label1.Text = "Faculty Inserted Succesfully ";
            Label1.ForeColor = System.Drawing.Color.CornflowerBlue;
        }
        //GridView1.DataBind();
        con.Close();
   
    }
}