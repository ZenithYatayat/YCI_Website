using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Add_Modules_Visitor_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_send_Click(object sender, EventArgs e)
    {

    }
    protected void btn_clear_Click(object sender, EventArgs e)
    {
        txt_branch_code.Text = "";
        txt_lr_no.Text = "";
    }
}
