using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _210928
{
    public partial class Str_InOut : System.Web.UI.Page
    {
        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            CheckBoxList1.RepeatDirection = 
                (RepeatDirection)RadioButtonList1.SelectedIndex;
        }
        protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            CheckBoxList1.RepeatLayout =
                (RepeatLayout)RadioButtonList2.SelectedIndex;
        }
        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            BulletedList1.Items.Clear();//기존 선택을 지운다.

            foreach(ListItem item in CheckBoxList1.Items )
            {
                if (item.Selected)
                    BulletedList1.Items.Add(item);
            }
        }
    
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            BulletedList1.BulletStyle =
                (BulletStyle)DropDownList1.SelectedIndex;
        }
    }
}