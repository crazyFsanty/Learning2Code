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
    public partial class Home : System.Web.UI.Page
    {

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=IITC-SRV-SQL14; Database=OfcAssignment; Integrated Security=true");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from signups where UserNAme ='" + TextBox1.Text + "' and Password ='" + TextBox2.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("UsrAcc.aspx");
            }
            else
            {
                Response.Write("<script>alert('Please enter valid Username and Password')</script>");
            }
        }
    }
}