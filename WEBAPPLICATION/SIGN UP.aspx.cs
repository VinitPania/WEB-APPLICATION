using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEBAPPLICATION
{
    public partial class SIGN_UP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }
        SqlConnection con = new SqlConnection("Data Source = SWAPNIL_BHOITE\\SQLEXPRESS; Initial Catalog = \"SIGN UP\"; Integrated Security = True");
        protected void btns_Click(object sender, EventArgs e)
        {
            try
            {
                string str = "  Insert into Emp1(FullName,Email,Number,Username,Password) values('" + txtname.Text + "','" + txtmail.Text + "','" + txtnum.Text + "','" + txtuname.Text + "','" + txtpass.Text + "')";
                SqlCommand cmd = new SqlCommand(str, con);
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Successfully Saved!')</script>");
                con.Close();
                fun();
            }
            catch (Exception)
            {
            }

            txtname.Text = "";
            txtmail.Text = "";
            txtnum.Text = "";
            txtuname.Text = "";
            txtpass.Text = "";


        }

        public void fun()
        {
            SqlConnection con = new SqlConnection("Data Source = SWAPNIL_BHOITE\\SQLEXPRESS; Initial Catalog = \"SIGN UP\"; Integrated Security = True");
            con.Open();
            string str = "select * from Emp1";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }



        protected void btnsi_Click(object sender, EventArgs e)
        {
            Response.Redirect("LOG IN.aspx");
        }

    }
}