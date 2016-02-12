using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShoppingCart.Logic
{
    public class Member
    {
        public int MemberId { set; get; }
   
        public string UserName { set; get; }
        public string Password { set; get; }
        public string Email { set; get; }

        // Generate categoryId for primary key
        public int GetMemberId()
        {
            var random = new Random();
            string result = string.Empty;
            for (int i = 1; i < 6; i++)
                result += random.Next(0, 9).ToString();

            return Convert.ToInt32(result);
        }

        public void AddNewMember(Member m)
        {
            MemberId = GetMemberId();
            DbAccess.DataAccess.InsertValueToCustomer(MemberId, m);
        }
    }
}