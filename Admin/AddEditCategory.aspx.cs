using System;

namespace ShoppingCart.Admin
{
    public partial class AddEditCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Logic.ShoppingCart s = new Logic.ShoppingCart
            {
                CategoryName = txtCategoryName.Text
            };
            s.AddNewCategory(s);
            txtCategoryName.Text = string.Empty;
            Response.Redirect("~/Admin/AddNewProduct.aspx");
        }
    }
}