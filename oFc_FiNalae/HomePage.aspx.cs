using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OfcAssignment
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["Name"] != null)
                LBLName.Text = "Welcome"+" " + Request.QueryString["Name"];
        }

        protected void BtnLogOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("LogIn.aspx");
        }
       
    }
}