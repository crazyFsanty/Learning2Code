using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OfcAssignment
{
    public partial class newusersignup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsignup_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=IITC-SRV-SQL14; Database=OfcAssignment; Integrated Security=true");
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO signups(FirstName,LastName,Gender,UserNAme,Password,EmailId) VALUES('" + Fname.Value + "','" +
            Lname.Value + "','" + DropDownList1.SelectedValue + "','" + username.Value + "','" + password.Value + "','" + email.Value + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

       
    }
}