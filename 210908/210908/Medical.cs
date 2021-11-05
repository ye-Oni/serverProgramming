using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Banking;  // banking에 대한 부분에 잡혀져있는 클래스를 메디컬에서 사용할 수 있게 만들어주는 지시자

namespace Medical
{
    public class MedicalCustomer
    {
        Banking.Customer m_Customer;

        public void RegisterCustomer(string name)
        {
            m_Customer = new Banking.Customer();
            m_Customer.SetName("임꺽정");
        }
    }
}