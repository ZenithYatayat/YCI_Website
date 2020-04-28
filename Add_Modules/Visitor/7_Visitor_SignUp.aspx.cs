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
        if (IsPostBack == false)
        {
 
        }
    }

    protected void btn_clear_Click(object sender, EventArgs e)
    {
        lbl_uname_chack.Text = "";
        txt_full_name.Text = "";
        txt_whatsapp_no.Text = "";
        txt_email_id.Text = "";
        txt_pwd.Text = "";
        btn_send.Enabled = true;
    }

    protected void txt_full_name_TextChanged(object sender, EventArgs e)
    {

        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        cn.Open();

        SqlCommand cmd = new SqlCommand("SELECT signup_full_name FROM tbl_signup WHERE signup_full_name='" + txt_full_name.Text + "' ", cn);
        SqlDataReader sdr = cmd.ExecuteReader();

        if (sdr.Read())
        {

            txt_full_name.Text = sdr["signup_full_name"].ToString();
            lbl_uname_chack.Text = "UserName Already Registered";
            btn_send.Enabled = false;
            SetFocus(txt_whatsapp_no);
            sdr.Close();
        }
        else
        {
            lbl_uname_chack.Text = "";
            SetFocus(txt_whatsapp_no);
            btn_send.Enabled = true;
        }

        cn.Close();
        cn.Dispose();

    }
    
    
        
    protected void btn_send_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        cn.Open();

        SqlCommand cmd = new SqlCommand("INSERT INTO tbl_signup (signup_full_name,signup_contact_no,signup_email_id,signup_password)VALUES('" + txt_full_name.Text + "','" + txt_whatsapp_no.Text + "','" + txt_email_id.Text + "','" + txt_pwd.Text + "')", cn);
        cmd.ExecuteNonQuery();

        //cmd = new SqlCommand("SELECT * FROM tbl_signup WHERE ES_SIGNUP_USER_NAME='" + txt_uname.Text + "' AND ES_SIGNUP_PWD='" + txt_pwd.Text + "'", cn);

        //SqlDataReader sdr = cmd.ExecuteReader();

        //if (sdr.Read())
        //{

        //    txt_uname.Text = sdr["ES_SIGNUP_USER_NAME"].ToString();
        //    txt_pwd.Text = sdr["ES_SIGNUP_PWD"].ToString();
        //    txt_uname_or_sr_no.Text = sdr["ES_SIGNUP_ID"].ToString();
        //    Session["login"] = txt_uname_or_sr_no.Text;
        //    Session["User_Name"] = txt_uname.Text;
        //    Session["First_Name"] = txt_fname.Text;
        //    Session["Middle_Name"] = txt_mname.Text;
        //    Session["Last_Name"] = txt_lname.Text;
        //    Session["Gender"] = ddl_gender.SelectedValue;

        //    Response.Redirect("~/App_Modules/User/User_2_Upload_Passport_Size_Photo_And_Sign.aspx");
        //    sdr.Close();
        //}

        txt_full_name.Text = "";
        txt_whatsapp_no.Text = "";
        txt_email_id.Text = "";
        txt_pwd.Text = "";

        cn.Close();
        cn.Dispose();

    }
}
