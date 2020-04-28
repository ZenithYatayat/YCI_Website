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
using System.Data.SqlClient;

public partial class Add_Modules_Visitor_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        cn.Open();
        SqlCommand cmd = new SqlCommand("SELECT AD_ID,AD_EMAIL,AD_PWD,AD_ADD FROM TBL_YCI_ADMIN WHERE AD_EMAIL='" + txt_username.Text + "' AND AD_PWD='" + txt_pwd.Text + "'", cn);

        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            txt_username.Text = sdr["AD_EMAIL"].ToString();
            txt_pwd.Text = sdr["AD_PWD"].ToString();
            txt_admin_id.Text = sdr["AD_ID"].ToString();
            txt_address.Text = sdr["AD_ADD"].ToString();
            Session["login"] = txt_username.Text;
            Session["pwd"] = txt_pwd.Text;
            Session["Admin_ID"] = txt_admin_id.Text;
            Session["AD_ADDRESS"] = txt_address.Text;
            if (txt_username.Text == "admin@yatayatindia.com" && txt_pwd.Text == "333")
            {
                Response.Redirect("../Admin/Default.aspx");
            }

            sdr.Close();

        }
        else
        {
            txt_username.Text = "";
            txt_pwd.Text = "";
            lbl_message.Text = "Invalid Username or Password";
        }
        cn.Close();
        cn.Dispose();
    }
    protected void btn_clear_Click(object sender, EventArgs e)
    {
        txt_username.Text = "";
        txt_admin_id.Text = "";
        txt_pwd.Text = "";
        txt_address.Text = "";
    }
}
