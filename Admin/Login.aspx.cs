using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

namespace ShoppingCart.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string username = WebConfigurationManager.AppSettings["AdminUsername"];
            string password = WebConfigurationManager.AppSettings["AdminPassword"];
            
            if (txtUsername.Text.Equals(username) && txtPassword.Text.Equals(password))
            {
                Session["ShoppingCartAdmin"] = "ShoppingCartAdmin";
                Response.Redirect("~/Admin/AddNewProduct.aspx");
            }
            else
            {
                labelAlert.Text = "Invalid Username or Password";
            }
        }
    }
}