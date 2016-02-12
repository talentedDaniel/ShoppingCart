using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace ShoppingCart.Logic
{
    public class ShoppingCart
    {
        public string CategoryName { set; get; }
        public int CategoryId { set; get; }

        public string ProductName { set; get; }
        public string ProductPrice { set; get; }
        public string ProductImage { set; get; }
        public string ProductDescritpion { set; get; }
        public string ProductIngredient { set; get; }

        // Generate categoryId for primary key
        public int GetCategoryId()
        {
            var random = new Random();
            string result = string.Empty;
            for (int i = 1; i < 6; i++)
                result += random.Next(0, 9).ToString();

            return Convert.ToInt32(result);
        }

        public DataTable GetCategory()
        {
            SqlParameter[] parameters = new SqlParameter[0];
            DataTable dt = DbAccess.DataAccess.ExecuteDbByProcedure("SP_GetAllCategories", parameters);
            return dt;
        }

        public DataTable GetAllProducts()
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = DbAccess.DataAccess.AddParameter("@CategoryID", CategoryId, System.Data.SqlDbType.Int, 20);
            DataTable dt = DbAccess.DataAccess.ExecuteDbByProcedure("SP_GetAllProducts", parameters);

            return dt;
        }

        public void AddNewCategory(ShoppingCart s)
        {
            int categoryId = GetCategoryId();
            DbAccess.DataAccess.InsertValueToCategory(categoryId, s);
        }

        public void AddNewProduct(ShoppingCart s)
        {
            int productId = GetCategoryId();
            DbAccess.DataAccess.InsertValueToProduct(productId, s);
        }
/*
        public string[] GetAllCategory()
        {
        }

        public System.Collections.Generic.List GetAllProduct()
        {
        }
 */
    }
}