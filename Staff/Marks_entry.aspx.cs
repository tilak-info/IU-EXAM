using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;


public partial class Staff_Marks_entry : System.Web.UI.Page
{
    string strcon = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
    string g;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        Label2.Text = Session["id"].ToString();
        Label1.Text=Session["user"].ToString();
        String a = Session["id"].ToString();
        String b = Session["user"].ToString();

        if (!Page.IsPostBack)
        {
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("select subject_name from SUB_ASSIGN WHERE f_id='"+a+"' and f_name='"+b+"'" , con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
           
            DataSet ds = new DataSet();

            //DataTable dt = new DataTable();
            
            sda.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                DropDownList2.DataSource = ds;

                DropDownList2.DataTextField = "subject_name";
                    
                DropDownList2.DataBind();
                DropDownList2.Items.Insert(0, new ListItem(" Choose Subject", "0"));
                DropDownList2.SelectedIndex = 0;
            }
            con.Close();
        }  
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow g1 in GridView1.Rows)
        {
            SqlConnection con = new SqlConnection(strcon);
            TextBox tb1 = (TextBox) g1.FindControl("TextBox2");
            Int32 marks = Convert.ToInt32(tb1.Text);
            SqlCommand com = new SqlCommand("insert into MARKS_MASTER(student_id,name,branch,sem,f_id,f_name,sub_name,marks) values ('" + g1.Cells[1].Text + "','" + g1.Cells[2].Text + "','" + ViewState["b"] + "','" + ViewState["g"] + "','" + Session["id"].ToString() + "','" + Session["user"].ToString() + "','" + DropDownList2.SelectedValue + "','" + marks + "')", con);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
        }
        Label5.Text = "Records inserted successfully";  
    }
    




    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(strcon);
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select semester,branch_name from SUBJECT WHERE sub_name='" + DropDownList2.SelectedValue + "'", con);
        SqlDataReader rdr = cmd1.ExecuteReader();
        if (rdr.Read())
        {
            ViewState["b"] = rdr["branch_name"].ToString();
              ViewState["g"] = rdr["semester"].ToString();
            Label3.Text = rdr["semester"].ToString();
            rdr.Close();


            SqlCommand cmd2 = new SqlCommand("select stu_enrollment,name from STU_DETAILS WHERE sem = '" + ViewState["g"] + "' AND branch = '" + ViewState["b"] + "' ", con);

            //   DataTable dt = new DataTable();
            DataSet ds2 = new DataSet();

            SqlDataAdapter adapt = new SqlDataAdapter(cmd2);

            adapt.Fill(ds2);

            if (ds2.Tables[0].Rows.Count > 0)
            {
                //GridView1.HeaderRow.Cells[0].Text = "STUDENT NAME";
                
                GridView1.DataSource = ds2;

               // GridView1.Rows[0] = "stu_enrollment";
                //GridView1.Rows["ColumnName"].DisplayIndex = 1;
                //GridView1.Columns[1].HeaderText = "Enrollment No.";
                GridView1.DataBind();


            }


            //SqlDataAdapter sd2 = new SqlDataAdapter(cmd2);

            //DataSet ds1 = new DataSet();

            ////DataTable dt = new DataTable();

            //sd2.Fill(ds1);
            //if (ds1.Tables[0].Rows.Count > 0)
            //{
            //    GridView1.DataSource = ds1;
            //    GridView1.DataBind();

            //}
            con.Close();
           
        }
    }

    
}
