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

public partial class Add_Modules_Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (IsPostBack == false)
        {
            Fetch_LAST_JOB_CTC_For_Edit();
            if (txt_LAST_JOB_CTC_id.Text != "")
            {
                btn_send.Text = "Edit";
            }
            Display_LAST_JOB_CTC();
        }
    }
    protected void btn_send_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        cn.Open();
        if (txt_LAST_JOB_CTC_id.Text != "")
        {
            SqlCommand cmd = new SqlCommand("UPDATE TBL_YCI_LAST_JOB_CTC SET YCI_LAST_JOB_CTC_AMOUNT='" + txt_LAST_JOB_CTC_AMOUNT.Text + "' WHERE YCI_LAST_JOB_CTC_ID='" + txt_LAST_JOB_CTC_id.Text + "'", cn);
            cmd.ExecuteNonQuery();
            txt_LAST_JOB_CTC_AMOUNT.Text = "";
            txt_LAST_JOB_CTC_id.Text = "";
            Session["Edit"] = "";
            btn_send.Text = "Send";
            //lbl_msg.Text = "Record Successfully Edited";
            Response.Redirect("4_Admin_YCI_LAST_JOB_CTC_Master.aspx");
            cn.Close();
            cn.Dispose();
        }
        else
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO TBL_YCI_LAST_JOB_CTC (YCI_LAST_JOB_CTC_AMOUNT)VALUES('" + txt_LAST_JOB_CTC_AMOUNT.Text + "')", cn);
            cmd.ExecuteNonQuery();
            txt_LAST_JOB_CTC_AMOUNT.Text = "";
            //lbl_msg.Text = "Record Successfully Inserted..!!";
            Response.Redirect("4_Admin_YCI_LAST_JOB_CTC_Master.aspx");
        }
        cn.Close();
        cn.Dispose();
    }
    public void Display_LAST_JOB_CTC()
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        cmd.CommandText = "SELECT * FROM TBL_YCI_LAST_JOB_CTC ORDER BY(YCI_LAST_JOB_CTC_ID)DESC";
        cmd.Connection = cn;
        da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        cn.Open();
        cmd.ExecuteNonQuery();
        grd_display_LAST_JOB_CTC.DataSource = ds;
        grd_display_LAST_JOB_CTC.DataBind();
        cn.Close();
        cn.Dispose();
    }
    protected void Fetch_LAST_JOB_CTC_For_Edit()
    {

        txt_LAST_JOB_CTC_id.Text = Session["Edit"].ToString();
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        cn.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM TBL_YCI_LAST_JOB_CTC WHERE YCI_LAST_JOB_CTC_ID='" + txt_LAST_JOB_CTC_id.Text + "'", cn);

        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            txt_LAST_JOB_CTC_AMOUNT.Text = sdr["YCI_LAST_JOB_CTC_AMOUNT"].ToString();
            sdr.Close();

        }
        cn.Close();
        cn.Dispose();
    }
    protected void grd_display_LAST_JOB_CTC_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            lbl_msg.Text = "";
            string id = grd_display_LAST_JOB_CTC.DataKeys[e.RowIndex].Values[0].ToString();

            // int i = Convert.ToInt32(grd_display_category.DataKeys[e.RowIndex].Values[0]);
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
            cn.Open();
            SqlCommand cmd = new SqlCommand("ALTER TABLE TBL_YCI_LAST_JOB_CTC NOCHECK CONSTRAINT ALL DELETE FROM TBL_YCI_LAST_JOB_CTC WHERE YCI_LAST_JOB_CTC_ID='" + id + "' ALTER TABLE TBL_YCI_LAST_JOB_CTC CHECK CONSTRAINT ALL", cn);
            cmd.ExecuteNonQuery();
            Display_LAST_JOB_CTC();
            cn.Close();
            cn.Dispose();
        }
        catch
        {
            lbl_msg.Text = "DATA YOU ARE TRYING TO DELETE IS IN USE";
        }
    }
    protected void grd_display_LAST_JOB_CTC_RowEditing(object sender, GridViewEditEventArgs e)
    {
        string id = grd_display_LAST_JOB_CTC.DataKeys[e.NewEditIndex].Values[0].ToString();
        Session["Edit"] = id;
        Response.Redirect("4_Admin_YCI_LAST_JOB_CTC_Master.aspx");
    }
    protected void grd_display_LAST_JOB_CTC_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grd_display_LAST_JOB_CTC.PageIndex = e.NewPageIndex;
        Display_LAST_JOB_CTC();
    }

}
