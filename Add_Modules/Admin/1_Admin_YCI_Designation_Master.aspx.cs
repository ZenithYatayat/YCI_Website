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
            Fetch_Designation_For_Edit();
            if (txt_Designation_id.Text != "")
            {
                btn_send.Text = "Edit";
            }
            Display_Designation();
        }
    }
    protected void btn_send_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        cn.Open();
        if (txt_Designation_id.Text != "")
        {
            SqlCommand cmd = new SqlCommand("UPDATE TBL_YCI_DESIGNATION SET YCI_DESIGNATION_NAME='" + txt_Designation_name.Text + "' WHERE YCI_DESIGNATION_ID='" + txt_Designation_id.Text + "'", cn);
            cmd.ExecuteNonQuery();
            txt_Designation_name.Text = "";
            txt_Designation_id.Text = "";
            Session["Edit"] = "";
            btn_send.Text = "Send";
            //lbl_msg.Text = "Record Successfully Edited";
            Response.Redirect("1_Admin_YCI_Designation_Master.aspx");
            cn.Close();
            cn.Dispose();
        }
        else
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO TBL_YCI_DESIGNATION (YCI_DESIGNATION_NAME)VALUES('" + txt_Designation_name.Text + "')", cn);
            cmd.ExecuteNonQuery();
            txt_Designation_name.Text = "";
            //lbl_msg.Text = "Record Successfully Inserted..!!";
            Response.Redirect("1_Admin_YCI_Designation_Master.aspx");
        }
        cn.Close();
        cn.Dispose();
    }
    public void Display_Designation()
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        cmd.CommandText = "SELECT * FROM TBL_YCI_DESIGNATION ORDER BY(YCI_DESIGNATION_ID)DESC";
        cmd.Connection = cn;
        da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        cn.Open();
        cmd.ExecuteNonQuery();
        grd_display_Designation.DataSource = ds;
        grd_display_Designation.DataBind();
        cn.Close();
        cn.Dispose();
    }
    protected void Fetch_Designation_For_Edit()
    {

        txt_Designation_id.Text = Session["Edit"].ToString();
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        cn.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM TBL_YCI_DESIGNATION WHERE YCI_DESIGNATION_ID='" + txt_Designation_id.Text + "'", cn);

        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            txt_Designation_name.Text = sdr["YCI_DESIGNATION_NAME"].ToString();
            sdr.Close();

        }
        cn.Close();
        cn.Dispose();
    }
    protected void grd_display_Designation_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            lbl_msg.Text = "";
            string id = grd_display_Designation.DataKeys[e.RowIndex].Values[0].ToString();

            // int i = Convert.ToInt32(grd_display_category.DataKeys[e.RowIndex].Values[0]);
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
            cn.Open();
            SqlCommand cmd = new SqlCommand("ALTER TABLE TBL_YCI_DESIGNATION NOCHECK CONSTRAINT ALL DELETE FROM TBL_YCI_DESIGNATION WHERE YCI_DESIGNATION_ID='" + id + "' ALTER TABLE TBL_YCI_DESIGNATION CHECK CONSTRAINT ALL", cn);
            cmd.ExecuteNonQuery();
            Display_Designation();
            cn.Close();
            cn.Dispose();
        }
        catch
        {
            lbl_msg.Text = "DATA YOU ARE TRYING TO DELETE IS IN USE";
        }
    }
    protected void grd_display_Designation_RowEditing(object sender, GridViewEditEventArgs e)
    {
        string id = grd_display_Designation.DataKeys[e.NewEditIndex].Values[0].ToString();
        Session["Edit"] = id;
        Response.Redirect("1_Admin_YCI_Designation_Master.aspx");
    }
    protected void grd_display_Designation_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grd_display_Designation.PageIndex = e.NewPageIndex;
        Display_Designation();
    }
}
