using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _210907
{  
    public partial class Default : System.Web.UI.Page
    {   
        
        protected void Page_Load(object sender, EventArgs e)
        {
            // 변수 선언 및 합 (사용)
            /*   int myVar = 0;
               int varFirst = 10, varSecond = 100;

               myVar = varFirst + varSecond;

               ShowResult("Sum = " + myVar.ToString());
            */

            // 변수의 데이터 형
            /*
               int memberAge = 20;
               string memberName = "OK";
               memberAge = memberAge + 4;

               ShowResult("나이 = " + memberAge + " 이름: " + memberName);
            */

            // enum 열거형
            /* UserType ut = UserType.Guest;
            ShowResult("User Type = " + ut + " User Type Value = " + (int)ut);
            */

            // struct 구조체
            /*
            Dog aop = new Dog();
            aop.Name = "해피";
            aop.Breed = "Meat";
            ShowResult(aop.Introduce());
            Dog bop = new Dog("강아지", "물고기");    // 생성자 선언 시 사용가능한 코드
            ShowResult(bop.Introduce());
            */

            // 배열의 사용
            /*
            //string[] stringArray;       // 1차원 배열의 선언 - 1
            //stringArray = new string[3];

            string[] stringArray = new string[3];   // 1차원 배열의 선언 - 2

            for (int i = 0; i < 3; i++)
                stringArray[i] = "a" + i * 10;

            for (int i = 0; i < 3; i++)
                ShowResult(stringArray[i]);
            */
            /*
            // 2차원 배열 선언
            int[,] intArray = new int[2, 3];    // {{1,2,3},{4,5,6}}과 같은 배열
            string abc = "500"; // 방법 3에 필요

            for (int i = 0; i < 3; i++)
                intArray[1, i] = i * 5;

            // 정수로 선언되었기 때문에 문자열로 바꿔주는 과정이 필요

            // 방법 1
            for (int i = 0; i < 3; i++) 
                ShowResult(Convert.ToString(intArray[1, i])); 
            // 방법 2
            for (int i = 0; i < 3; i++)
                ShowResult((intArray[1, i]).ToString());
            // 방법 3
            ShowResult(int.Parse(abc).ToString()); // string을 int.Parse로 바꿔준 후 다시 string으로 변형
            */

            /*
            // foreach 문
            int[] intArrays = { 1, 2, 3 };
            int total = 0;

            foreach (int item in intArrays) // 집합 내의 모든 원소들을 통해 반복
            {
                total = total + item;   // total += item;과 같음.
            }
            ShowResult("Total = " + total);
            */


            // try,catch문 - 예외처리

            string stringValue;

            try
            {
                stringValue = "7.8"; 
                // int myInt = int.Parse(stringValue);  // 변수형이 int라서 들어가지 못함(예외)
                float myInt = float.Parse(stringValue);

                ShowResult(myInt.ToString());   // 위에서 오류가 나면 이 줄은 실행이 안됨.
            }
            catch
            {
                ShowResult("예외 현상 발생");
            }
        }

        void ShowResult(string result)
        {
            Label lblResult = new Label();
            Page.Controls.Add(lblResult);
            lblResult.Text = result + "<br />";
        }
    }
}