using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Student_S_Marks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String E = Session["s_e_marks"].ToString();
        string strcon = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        
        if (!Page.IsPostBack)
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlDataReader myReader = null;
            SqlCommand cmd1 = new SqlCommand("select name,sub_name,marks from MARKS_MASTER WHERE student_id='" + E + "'", con);
            myReader = cmd1.ExecuteReader();
            while (myReader.Read())
            {


                Label1.Text = (myReader["name"].ToString());
                //DataTable dt = new DataTable();



                //dt.Columns.Add("Subject Name", typeof(string));
                //dt.Columns.Add("Your`s Marks", typeof(string));

                //DataRow NewRow = dt.NewRow();
                //NewRow[0] = (myReader["sub_name"].ToString());
                //NewRow[1] = (myReader["marks"].ToString());
                //dt.Rows.Add(NewRow);
                //GridView1.DataSource = dt;

                //GridView1.DataBind();


                ////GridView1.Rows[0] = (myReader["sub_name"].ToString());
            }
            myReader.Close();

            SqlCommand cmd = new SqlCommand("select sub_name,marks from MARKS_MASTER WHERE student_id='" + E + "'", con);
            DataSet ds = new DataSet();

            //DataTable dt = new DataTable();

            SqlDataAdapter adapt = new SqlDataAdapter(cmd);

            adapt.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                //GridView1.HeaderRow.Cells[0].Text = "STUDENT NAME";
                

                GridView1.DataSource = ds;
                // GridView1.Rows[0] = "stu_enrollment";
                //GridView1.Rows["ColumnName"].DisplayIndex = 1;
                //GridView1.Columns[1].HeaderText = "Enrollment No.";
                GridView1.DataBind();


            } con.Close();
        }
    }
}