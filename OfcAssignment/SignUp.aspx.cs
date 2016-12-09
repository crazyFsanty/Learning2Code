using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OfcAssignment
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {
            
            TextBox4.Text = TextBox1.Text + "." + TextBox2.Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (TextBox5.Text==TextBox6.Text)
            {
                SqlConnection con = new SqlConnection("Data Source=IITC-SRV-SQL14; Database=OfcAssignment; Integrated Security=true");
                con.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO signups(FirstName,LastName,Gender,UserNAme,Password,EmailId) VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox3.Text + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                LblMsg2.Text = "<script>alert('User created successfully')</script>";    
            }
            else
            {
                LblMsg2.Text = "<script>alert('Password did not match')</script>";
                TextBox5.Focus();
            }
            
        }     
    }
}