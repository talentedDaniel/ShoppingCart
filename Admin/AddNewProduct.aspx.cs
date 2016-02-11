using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShoppingCart.Logic;
using System.IO;

namespace ShoppingCart.Admin
{
    public partial class AddNewProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                GetCategory();
        }

        private void GetCategory()
        {
            ShoppingCart shoppingCart = new ShoppingCart();
            System.Data.DataTable dataTable = shoppingCart.GetCategory();
            if (dataTable.Rows.Count > 0)
            {
                categoryDropDownList.DataValueField = "CategoryId";
                categoryDropDownList.DataTextField = "CategoryName";
                categoryDropDownList.DataSource = dataTable;
                categoryDropDownList.DataBind();
            }
        }

        private void SaveProductPhoto()
        {
            string source = Convert.ToString(uploadProductImage.PostedFile.FileName);
            string dest = "~/ProductImage/" + uploadProductImage.FileName;
            File.Copy(source, dest);
        }

        private void ClearText()
        {
            txtProductName.Text = string.Empty;
            txtProductPrice.Text = string.Empty;
            txtProductDescription.Text = string.Empty;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (uploadProductImage.PostedFile != null)
            {
                SaveProductPhoto();

                ShoppingCart shoppingCart = new ShoppingCart()
                {
                    ProductName = txtProductName.Text;
                    ProductImage = "~/ProductImages/" + uploadProductImage.FileName;
                    ProductPrice = txtProductPrice.Text;
                    ProductDescription = txtProductDescription.Text;
                    CategoryId = Convert.ToInt32(categoryDropDownList.SelectedValue);
                };

                ShoppingCart.AddNewProduct();
                
                ClearText();
            }
            else
            {
                 Response.Write("<script>alert('Need upload image for creating new product.')</script>");
            }
        }
    }
}