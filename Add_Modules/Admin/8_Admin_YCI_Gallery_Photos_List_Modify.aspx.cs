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
using System.IO;

public partial class Add_Modules_Admin_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            Display_Product_Data();
        }
    }

    public void Display_Product_Data()
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        cn.Open();
        cmd.Connection = cn;
        cmd.CommandText = "SELECT * FROM TBL_YCI_GALLERY ORDER BY(YCI_GALLERY_ID)DESC";
        da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        cmd.ExecuteNonQuery();
        grd_Product_Display.DataSource = ds;
        grd_Product_Display.DataBind();
        cn.Close();
        cn.Dispose();
    }
    protected void grd_Product_Display_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grd_Product_Display.PageIndex = e.NewPageIndex;
        Display_Product_Data();
    }
    protected void grd_Product_Display_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string id = grd_Product_Display.DataKeys[e.RowIndex].Values[0].ToString();

        int i = Convert.ToInt32(grd_Product_Display.DataKeys[e.RowIndex].Values[0]);
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        cn.Open();
        SqlCommand cmd = new SqlCommand("DELETE FROM TBL_YCI_GALLERY WHERE YCI_GALLERY_ID='" + id + "'", cn);
        cmd.ExecuteNonQuery();
        Display_Product_Data();
        cn.Close();
        cn.Dispose();
    }
    protected void DownloadFile(object sender, EventArgs e)
    {
        string filePath = (sender as LinkButton).CommandArgument;
        Response.ContentType = ContentType;
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
        Response.WriteFile(filePath);
        Response.End();
    }
}
