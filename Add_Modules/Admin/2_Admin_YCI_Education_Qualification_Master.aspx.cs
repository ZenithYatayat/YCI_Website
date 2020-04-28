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
            Fetch_Education_Qualification_For_Edit();
            if (txt_Education_Qualification_id.Text != "")
            {
                btn_send.Text = "Edit";
            }
            Display_Education_Qualification();
        }
    }
    protected void btn_send_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        cn.Open();
        if (txt_Education_Qualification_id.Text != "")
        {
            SqlCommand cmd = new SqlCommand("UPDATE TBL_YCI_EDUCATION_QUALIFICATION SET YCI_EDU_QUALIFICATION_NAME='" + txt_Education_Qualification_name.Text + "' WHERE YCI_EDU_QUALIFICATION_ID='" + txt_Education_Qualification_id.Text + "'", cn);
            cmd.ExecuteNonQuery();
            txt_Education_Qualification_name.Text = "";
            txt_Education_Qualification_id.Text = "";
            Session["Edit"] = "";
            btn_send.Text = "Send";
            //lbl_msg.Text = "Record Successfully Edited";
            Response.Redirect("2_Admin_YCI_Education_Qualification_Master.aspx");
            cn.Close();
            cn.Dispose();
        }
        else
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO TBL_YCI_EDUCATION_QUALIFICATION (YCI_EDU_QUALIFICATION_NAME)VALUES('" + txt_Education_Qualification_name.Text + "')", cn);
            cmd.ExecuteNonQuery();
            txt_Education_Qualification_name.Text = "";
            //lbl_msg.Text = "Record Successfully Inserted..!!";
            Response.Redirect("2_Admin_YCI_Education_Qualification_Master.aspx");
        }
        cn.Close();
        cn.Dispose();
    }
    public void Display_Education_Qualification()
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        cmd.CommandText = "SELECT * FROM TBL_YCI_EDUCATION_QUALIFICATION ORDER BY(YCI_EDU_QUALIFICATION_ID)DESC";
        cmd.Connection = cn;
        da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        cn.Open();
        cmd.ExecuteNonQuery();
        grd_display_Education_Qualification.DataSource = ds;
        grd_display_Education_Qualification.DataBind();
        cn.Close();
        cn.Dispose();
    }
    protected void Fetch_Education_Qualification_For_Edit()
    {

        txt_Education_Qualification_id.Text = Session["Edit"].ToString();
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        cn.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM TBL_YCI_EDUCATION_QUALIFICATION WHERE YCI_EDU_QUALIFICATION_ID='" + txt_Education_Qualification_id.Text + "'", cn);

        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            txt_Education_Qualification_name.Text = sdr["YCI_EDU_QUALIFICATION_NAME"].ToString();
            sdr.Close();

        }
        cn.Close();
        cn.Dispose();
    }
    protected void grd_display_Education_Qualification_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            lbl_msg.Text = "";
            string id = grd_display_Education_Qualification.DataKeys[e.RowIndex].Values[0].ToString();

            // int i = Convert.ToInt32(grd_display_category.DataKeys[e.RowIndex].Values[0]);
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
            cn.Open();
            SqlCommand cmd = new SqlCommand("ALTER TABLE TBL_YCI_EDUCATION_QUALIFICATION NOCHECK CONSTRAINT ALL DELETE FROM TBL_YCI_EDUCATION_QUALIFICATION WHERE YCI_EDU_QUALIFICATION_ID='" + id + "' ALTER TABLE TBL_YCI_EDUCATION_QUALIFICATION CHECK CONSTRAINT ALL", cn);
            cmd.ExecuteNonQuery();
            Display_Education_Qualification();
            cn.Close();
            cn.Dispose();
        }
        catch
        {
            lbl_msg.Text = "DATA YOU ARE TRYING TO DELETE IS IN USE";
        }
    }
    protected void grd_display_Education_Qualification_RowEditing(object sender, GridViewEditEventArgs e)
    {
        string id = grd_display_Education_Qualification.DataKeys[e.NewEditIndex].Values[0].ToString();
        Session["Edit"] = id;
        Response.Redirect("2_Admin_YCI_Education_Qualification_Master.aspx");
    }
    protected void grd_display_Education_Qualification_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grd_display_Education_Qualification.PageIndex = e.NewPageIndex;
        Display_Education_Qualification();
    }
}
