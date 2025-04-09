using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCheckProject
{
    public partial class _4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "";
            foreach (Control ct in form1.Controls)
            {
                if (ct is CheckBox)
                {
                    CheckBox cb = (CheckBox)ct;
                    if (cb.Checked == true)
                    {
                        //Response.Write(cb.Text);
                        Label1.Text += cb.Text + ",";
                    }
                }
            }
        }
    }
}