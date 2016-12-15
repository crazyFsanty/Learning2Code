using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OfcAssignment
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LoginBtn_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=IITC-SRV-SQL14; Database=OfcAssignment; Integrated Security=true");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from signups where UserNAme ='" + txtusername.Text + "' and Password ='" + txtpassword.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("HomePage.aspx?Name="+ txtusername.Text);
            }
            else
            {
                Response.Write("<script>alert('Invalid Username and/or Password')</script>");           
                txtusername.Text = "";
                txtpassword.Text = "";
            }
        }
    }
}