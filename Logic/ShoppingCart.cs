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
        public string CategoryName;
        public int CategoryId;

        public string ProductName;
        public string ProductPrice;
        public string ProdcutImage;
        public string ProductDescritpion;
        public string ProductIngredient;

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

        public void AddNewCategory()
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = DbAccess.DataAccess.AddParameter("@CategoryName", CategoryName, System.Data.SqlDbType.VarChar, 500);
            DataTable dt = DbAccess.DataAccess.ExecuteDbByProcedure("SP_AddNewCategory", parameters);
        }

        public void AddNewProduct()
        {
            SqlParameter[] parameters = new SqlParameter[5];
            parameters[0] = DbAccess.DataAccess.AddParameter("@ProductName", ProductName, System.Data.SqlDbType.VarChar, 500);
            parameters[1] = DbAccess.DataAccess.AddParameter("@ProductPrice", ProductPrice, System.Data.SqlDbType.Int, 100);
            parameters[2] = DbAccess.DataAccess.AddParameter("@ProductImage", ProdcutImage, System.Data.SqlDbType.VarChar, 500);
            parameters[3] = DbAccess.DataAccess.AddParameter("@ProductDescritpion", ProductDescritpion, System.Data.SqlDbType.VarChar, 500);
            parameters[4] = DbAccess.DataAccess.AddParameter("@CategoryId", CategoryId, System.Data.SqlDbType.Int, 100);

            DataTable dt = DbAccess.DataAccess.ExecuteDbByProcedure("SP_AddNewProduct", parameters);
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