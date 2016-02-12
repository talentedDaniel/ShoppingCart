using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingCart
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (!txtPassword.Text.Equals(txtConfirm.Text))
            {
                Response.Write("<script>alert('Password Not Match.')</script>");
            }
            else
            {
                Logic.Member m = new Logic.Member
                {
                    UserName = txtUsername.Text,
                    Password = txtPassword.Text,
                    Email = txtEmail.Text
                };

                m.AddNewMember(m);
                Session["UserName"] = m.UserName;
                Session["Email"] = m.Email;

                Response.Redirect("Default.aspx");
            }
        }
    }
}