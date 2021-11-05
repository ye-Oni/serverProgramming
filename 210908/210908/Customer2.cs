using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _210908
{
    public partial class Default2
    {
        public class Customer2
        {
            
            private string m_SocialNumber;
            /*
            public string GetSocialNumber()     // 메소드
            {
                return m_SocialNumber;
            }
            public void SetSocialNumber(string sn)
            {
                if (!IsValidSocialNumber(sn))
                    throw new ArgumentException(sn, "주민등록번호 오류");
                else
                    m_SocialNumber = sn;
            }
            */
            public string SocialNumber  // 프로퍼티
            {
                get { return m_SocialNumber; }
                set
                {
                    if (!IsValidSocialNumber(value))
                        throw new ArgumentException(value);
                    else
                        m_SocialNumber = value;

                }
            }
            private bool IsValidSocialNumber(string sn)
            {
                return true;
            }
        }
    }
}