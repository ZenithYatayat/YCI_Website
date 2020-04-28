using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Web.SessionState;

public partial class Add_Modules_Admin_AdminMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.AppendHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        Response.AppendHeader("Pragma", "no-cache");
        Response.AppendHeader("Expires", "0");

        CHECK_ADMIN_LOGIN();
    }
    public static void CHECK_ADMIN_LOGIN()
    {
        HttpSessionState sees = HttpContext.Current.Session;
        HttpResponse resp = HttpContext.Current.Response;
        if (sees["login"].ToString() == "")
        {
            resp.Redirect("~/Default.aspx");
        }
    }
    protected void lbtn_logout_Click(object sender, EventArgs e)
    {
        Session["login"] = "";
        Response.Redirect("~/Default.aspx");
    }
}
