using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _210907
{
    public partial class Default    // Default.aspx.cs와 같게 바꿔줘야 함.
    {
        public struct Dog   // 구조체 선언 
        {
            public string Name;     // 멤버 변수
            public string Breed;

            public Dog(string name, string breed)   // 생성자
            {
                Name = name;
                Breed = breed;
            }
            public string Introduce()   // 구조체 안에 메소드 선언
            {
                return "이름: " + Name + "(" + Breed + ")";
            }
        }

    }
}