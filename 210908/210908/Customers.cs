using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _210908
{
    public partial class Default
    {
        public class Customers
        {
            public string m_Name;
            public int account;

            public int MakeAccount(int accountType)
            {
                account = accountType;
                return account;
            }
            public string printInfos()
            {
                return m_Name + " : " + account;
            }
        }
    }
}