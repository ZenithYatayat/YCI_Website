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
            SELECT_GALLERY_PHOTOS();
        }
    }
    protected void SELECT_GALLERY_PHOTOS()
    {

        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        cn.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM TBL_YCI_GALLERY", cn);
        ListView_Product.DataSource = cmd.ExecuteReader();
        ListView_Product.DataBind();
        cn.Close();
        cn.Dispose();
    }
}
