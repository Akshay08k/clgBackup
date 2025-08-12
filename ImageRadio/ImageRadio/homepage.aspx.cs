using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ImageRadio
{
    public partial class homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void changeImg(object sender, EventArgs e)
        {
            if(imgRadio.SelectedIndex == 0)
            {
               
                imagePath.ImageUrl = "/uploads/1.jpg";
            }else if(imgRadio.SelectedIndex == 1)
            {
                imagePath.ImageUrl = "/uploads/2.jpg";

            }else if(imgRadio.SelectedIndex== 2)
            {
                imagePath.ImageUrl = "/uploads/3.jpg";
            }else if(imgRadio.SelectedIndex == 3)
            {
                imagePath.ImageUrl = "/uploads/4.jpg";
            }
        }
    }
}