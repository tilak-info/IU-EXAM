using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class login_Default : System.Web.UI.Page
{
    string strcon = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Login"] != null)
        {
            Label1.Text = "Please Enter Your Valied Email Id And Password";

        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(strcon);
        con.Open();
        SqlCommand cmd = new SqlCommand("login_detail", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Action", "Stu_login");
        cmd.Parameters.AddWithValue("@email", TextBox1.Text);
        cmd.Parameters.AddWithValue("@password", TextBox2.Text);
        SqlDataReader rdr = cmd.ExecuteReader(); 
        //int k = cmd.ExecuteNonQuery();
        
        if (rdr.Read())
        {
            Session["user"] = TextBox1.Text;
            Response.Redirect("~/Admin/Add_Student.aspx");

            //Label4.Text = "Semester Inserted Succesfully ";
            //Label4.ForeColor = System.Drawing.Color.CornflowerBlue;
        }

        rdr.Close();
        
            //GridView1.DataBind();
            SqlCommand cme = new SqlCommand("login_detail", con);
            cme.CommandType = CommandType.StoredProcedure;
            cme.Parameters.AddWithValue("@Action", "faculty_login");
            cme.Parameters.AddWithValue("@email", TextBox1.Text);
            cme.Parameters.AddWithValue("@password", TextBox2.Text);
            SqlDataReader rds;
            rds = cme.ExecuteReader(); 
        
            //int f = cme.ExecuteNonQuery();

            if (rds.Read())
            {
                Session["user"] = rds["name"].ToString();
                Session["id"] = rds["f_id"].ToString();
                rds.Close();
                Response.Redirect("~/Staff/add_test.aspx");
                //Label4.Text = "Semester Inserted Succesfully ";
                //Label4.ForeColor = System.Drawing.Color.CornflowerBlue;
            }
            else
            {
                Session["Login"] = 1;
                Response.Redirect("~/login/Default.aspx");
                
            }
        
        con.Close();
    }
}