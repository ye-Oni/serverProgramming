using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _210908
{
    public partial class Default3
    {
        public class Customer3
        {
            public string Name { get; set; }

            public string SocialNumber { get; set; }    // 읽기 전용일때는 private set
        }

        public class Customer4
        {
            public string Name;
            public void SetName(string name)
            {
                this.Name = name;
            }
            
            }

    }
}
