using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data;

namespace ShoppingCart.DbAccess
{
    public class DataAccess
    {
        public static string ConnectionString
        {
            get
            {
                return System.Configuration.ConfigurationManager.ConnectionStrings["DbConn"].ConnectionString.ToString();
            }
        }

        public static void InsertValueToCategory(int categoryId, Logic.ShoppingCart s)
        {
            var cmd = "Insert Into Category Values(@CategoryID, @CategoryName)";
            using (SqlConnection conn = new SqlConnection(ConnectionString))
            {
                using (SqlCommand c = new SqlCommand(cmd, conn))
                {
                    c.Parameters.AddWithValue("@CategoryID", categoryId);
                    c.Parameters.AddWithValue("@CategoryName", s.CategoryName);

                    conn.Open();
                    c.ExecuteNonQuery();
                }
            }           
        }

        public static void InsertValueToCustomer(int memberId, Logic.Member m)
        {
            var cmd = "Insert Into Customer Values(@CustomerID, @Name, @Password, @Email)";
            using (SqlConnection conn = new SqlConnection(ConnectionString))
            {
                using (SqlCommand c = new SqlCommand(cmd, conn))
                {
                    c.Parameters.AddWithValue("@ProductID", memberId);
                    c.Parameters.AddWithValue("@Name", m.UserName);
                    c.Parameters.AddWithValue("@Description", m.Password);
                    c.Parameters.AddWithValue("@Price", m.Email);

                    conn.Open();
                    c.ExecuteNonQuery();
                }
            }
        }

        public static void InsertValueToProduct(int productId, Logic.ShoppingCart s)
        {
            var cmd = "Insert Into Product Values(@ProductID, @Name, @Description, @Price, @ImageUrl, Ingredient, @CategoryName)";
            using (SqlConnection conn = new SqlConnection(ConnectionString))
            {
                using (SqlCommand c = new SqlCommand(cmd, conn))
                {
                    c.Parameters.AddWithValue("@ProductID", productId);
                    c.Parameters.AddWithValue("@Name", s.ProductName);
                    c.Parameters.AddWithValue("@Description", s.ProductDescritpion);
                    c.Parameters.AddWithValue("@Price", s.ProductPrice);
                    c.Parameters.AddWithValue("@ImageUrl", s.ProductImage);
                    c.Parameters.AddWithValue("@Ingredient", s.ProductIngredient);
                    c.Parameters.AddWithValue("@CategoryName", s.CategoryName);

                    conn.Open();
                    c.ExecuteNonQuery();
                }
            }
        }

        public static SqlParameter AddParameter(string parameterName, object value, SqlDbType dbType, int size)
        {
            SqlParameter param = new SqlParameter();
            param.ParameterName = parameterName;
            param.Value = value.ToString();
            param.SqlDbType = dbType;
            param.Size = size;
            param.Direction = ParameterDirection.Input;
            return param;
        }

        public static DataTable ExecuteDbByProcedure(string procedureName, SqlParameter[] param)
        {
            SqlConnection conn = new SqlConnection(ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = procedureName;
            cmd.Parameters.Add(param);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            try
            {
                adapter.Fill(dt);
            }
            catch (Exception x)
            {

            }
            finally
            {
                adapter.Dispose();
                cmd.Parameters.Clear();
                cmd.Dispose();
                conn.Dispose();
            }
            return dt;
        }
    }
}