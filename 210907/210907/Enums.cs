using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _210907
{
    public partial class Default    // Default.aspx.cs와 같게 바꿔줘야 함.
    {
        enum UserType   // 열거형 데이터 표현
        {
            Admin,
            Master,
            Guest = 5,
            Invalid
        }
    }
}