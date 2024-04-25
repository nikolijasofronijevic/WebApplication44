using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication44
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            message.InnerText = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bool isFan = CheckBox1.Checked;
            

            if (isFan)
            {
                message.InnerText = "Sada se možete ulogovati jej";
            }
            else
            {
                message.InnerText = "Molimo vas kliknite crveni x, ovaj sajt nije za Vas!";
            }
            
        }
    }
    }
