using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _210914
{
    public partial class inherits
    {
        public class Customer
        {
            string m_Name;
            string m_SocialNumber;
            public Customer() : this(null) { }  // 실질적으로 값에 대한 부분을 하나도 집어넣지 않겠다는 뜻
            public Customer(string m_name) : this(m_name, null) { }
            public Customer(string m_name, string m_socialnumber)
            {
                this.m_Name = m_name;
                this.m_SocialNumber = m_socialnumber;
            }
            void MakeAccount() { }
            void BearInterest() { }
            public string printInfo()
            {
                return m_Name + " : " + m_SocialNumber;
            }
        }
        public class BestCustomer : Customer
        {
            void DrawCheck()
            {
               
            }
            public string BestInfo()
            {
                return "BestCustomer 입니다!";
            }
        }
    }
}