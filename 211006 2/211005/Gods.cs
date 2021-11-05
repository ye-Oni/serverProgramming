using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _211005
{
    public class Gods
    {
        public string Name;
        public string Manufac;
        public int Cost;

        public Gods(string name, string manufac, int cost)
        {
            Name = name;
            Manufac = manufac;
            Cost = cost;
        }
    }
}