using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEBAPPLICATION
{
    public partial class LOG_IN : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection("Data Source = SWAPNIL_BHOITE\\SQLEXPRESS; Initial Catalog = \"SIGN UP\"; Integrated Security = True");
        protected void btnsi_Click(object sender, EventArgs e)
        {

            string str = "select * from Emp1 where Username='"+txtuname.Text+"',Password='"+ txtpass.Text+"' ";
            SqlCommand com = new SqlCommand("CheckUser", con);
            com.CommandType = CommandType.StoredProcedure;
            SqlParameter p1 = new SqlParameter("Username", txtuname.Text);
            SqlParameter p2 = new SqlParameter("Password", txtpass.Text);
            com.Parameters.Add(p1);
            com.Parameters.Add(p2);
            con.Open();
            SqlDataReader rd = com.ExecuteReader();
            if (rd.HasRows)
            {
                rd.Read();
                lblval.Text = "Login successful.";
               Response.Redirect("FIRST PAGE.aspx");
            }
            else
            {
                lblval.Text = "Invalid username or password.";
             
            }
            
        }

        protected void btnsl_Click(object sender, EventArgs e)
        {
            Response.Redirect("SIGN UP.aspx");
        }
    }
}