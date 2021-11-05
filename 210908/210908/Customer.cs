using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _210908
{
    public partial class Default
    {
        class Customer
        {
            string m_Name;
            string m_SocialNumber;

            public Customer(string m_name, string m_socialnumber)
            {
                m_Name = m_name;
                m_SocialNumber = m_socialnumber;
            }

            void MakeAccount() { }
            void BeraInterest() { }
            public string printInfo()
            {
                return m_Name + " : " + m_SocialNumber;
            }
        }
     
        class BestCustomer
        {
            public string m_Name;
            public string m_SocialNumber;

            //void MakeAccount() { }

            //void BeraInterest() { }
            void DrawCheck() { }
        
        }
        

        /*
        class BestCustomer : Customer
        {
            string m_Name;
            string m_SocialNumber;

            public BestCustomer(string m_name, string m_socialnumber)
            {
                m_Name = m_name;
                m_SocialNumber = m_socialnumber;
            }

            void DrawCheck() { }
        }
        */
    }
}