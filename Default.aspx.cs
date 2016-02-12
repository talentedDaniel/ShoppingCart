using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingCart
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetCategory();
                GetProducts(0);
            }
            linkCart.Visible = (Session["UserName"] != null);
            linkRegister.Visible = (Session["UserName"] == null);
            pnlCUstomer.Visible = false;
        }

        private void GetCategory()
        {
            Logic.ShoppingCart s = new Logic.ShoppingCart();
            dlCategories.DataSource = null;
            dlCategories.DataSource = s.GetCategory();
            dlCategories.DataBind();
        }

        private void GetProducts(int categoryId)
        {
            Logic.ShoppingCart s = new Logic.ShoppingCart()
            {
                CategoryId = categoryId
            };
            dlProducts.DataSource = null;
            dlProducts.DataSource = s.GetAllProducts();
            dlProducts.DataBind();
        }

        protected void btnAddCart_Click(object sender, EventArgs e)
        {
            string productID = Convert.ToInt16((((Button)sender).CommandArgument)).ToString();
            if (Session["ShoppingCart"] != null)
            {
                DataTable dt = (DataTable)Session["ShoppingCart"];
                dt.Rows.Add(productID);
                Session["ShoppingCart"] = dt;
                btnShoppingCart.Text = dt.Rows.Count.ToString();
            }
            else
            {
                DataTable dt = new DataTable();
                dt.Columns.Add("ProductID", typeof(string));
            }
        }

        protected void lbtnCategory_Click(object sender, EventArgs e)
        {
            pnlProducts.Visible = true;
            int categoryID = Convert.ToInt16((((LinkButton)sender).CommandArgument));
            //GetProducts(categoryID);
        }

        protected void btnShoppingCart_Click(object sender, EventArgs e)
        {

        }

        public DataTable GetData(string query)
        {
            DataTable dt = new DataTable();
            string conn = WebConfigurationManager.ConnectionStrings["DbConn"].ConnectionString;
            SqlConnection con = new SqlConnection(conn);
            con.Open();

            SqlDataAdapter adapter = new SqlDataAdapter(query, conn);
            adapter.Fill(dt);

            con.Close();
            return dt;
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            string ProductID = Convert.ToInt16((((Button)sender).CommandArgument)).ToString();
            string ProductQuantity = "1";

            DataListItem currentItem = (sender as Button).NamingContainer as DataListItem;
            Label lblAvailableStock = currentItem.FindControl("lblAvailableStock") as Label;

            if (Session["ShoppingCart"] != null)
            {
                DataTable dt = (DataTable)Session["ShoppingCart"];
                var checkProduct = dt.AsEnumerable().Where(r => r.Field<string>("ProductID") == ProductID);
                if (checkProduct.Count() == 0)
                {
                    string query = "SELECT * FROM Products WHERE ProductID = " + ProductID + "";
                    DataTable dtProducts = GetData(query);

                    DataRow dr = dt.NewRow();
                    dr["ProductID"] = ProductID;
                    dr["Name"] = Convert.ToString(dtProducts.Rows[0]["Name"]);
                    dr["Description"] = Convert.ToString(dtProducts.Rows[0]["Description"]);
                    dr["Price"] = Convert.ToString(dtProducts.Rows[0]["Price"]);
                    dr["ImageUrl"] = Convert.ToString(dtProducts.Rows[0]["ImageUrl"]);
                    dr["ProductQuantity"] = ProductQuantity;
                    dr["AvailableStock"] = lblAvailableStock.Text;
                    dt.Rows.Add(dr);

                    Session["ShoppingCart"] = dt;
                    btnShoppingCart.Text = dt.Rows.Count.ToString();
                }
                else
                {
                    string query = "SELECT * FROM Products WHERE ProductID = " + ProductID + "";
                    DataTable dtProducts = GetData(query);

                    DataTable dt1 = new DataTable();
                    dt1.Columns.Add("ProductID", typeof(string));
                    dt1.Columns.Add("Name", typeof(string));
                    dt1.Columns.Add("Description", typeof(string));
                    dt1.Columns.Add("Price", typeof(string));
                    dt1.Columns.Add("ImageUrl", typeof(string));
                    dt1.Columns.Add("ProductQuantity", typeof(string));
                    dt1.Columns.Add("AvailableStock", typeof(string));

                    DataRow dr1 = dt1.NewRow();
                    dr1["ProductID"] = ProductID;
                    dr1["Name"] = Convert.ToString(dtProducts.Rows[0]["Name"]);
                    dr1["Description"] = Convert.ToString(dtProducts.Rows[0]["Description"]);
                    dr1["Price"] = Convert.ToString(dtProducts.Rows[0]["Price"]);
                    dr1["ImageUrl"] = Convert.ToString(dtProducts.Rows[0]["ImageUrl"]);
                    dr1["ProductQuantity"] = ProductQuantity;
                    dr1["AvailableStock"] = lblAvailableStock.Text;

                    dt1.Rows.Add(dr1);

                    Session["ShoppingCart"] = dt1;
                    btnShoppingCart.Text = dt.Rows.Count.ToString();
                }
            }
        }

        private void UpdateTotalPay()
        {
            long totalPrice = 0;
            long totalProduct = 0;

            foreach (DataListItem item in dlProducts.Items)
            {
                Label priceLabel = item.FindControl("lblPrice") as Label;
                TextBox productQuantity = item.FindControl("txtProductQuantity") as TextBox;
                long productPrice = Convert.ToInt32(priceLabel.Text) * Convert.ToInt32(productQuantity.Text);

                totalPrice += productPrice;
                totalProduct += Convert.ToInt32(productQuantity.Text);
            }
        }
    }
}