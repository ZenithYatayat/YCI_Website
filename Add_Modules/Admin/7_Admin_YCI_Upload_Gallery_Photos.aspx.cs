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

    }
    //protected void UploadFile(object sender, EventArgs e)
    //{

    //    string folderPath = Server.MapPath("~/Files/");

    //    //Check whether Directory (Folder) exists.
    //    if (!Directory.Exists(folderPath))
    //    {
    //        //If Directory (Folder) does not exists Create it.
    //        Directory.CreateDirectory(folderPath);
    //    }

    //    //Save the File to the Directory (Folder).
    //    FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));

    //    //Display the Picture in Image control.
    //    Image1.ImageUrl = "~/Files/" + Path.GetFileName(FileUpload1.FileName);

    //    if (FileUpload1.HasFile)
    //    {
    //        string file_name = FileUpload1.FileName.ToString();
    //    }
    //}
    protected void btn_clear_Click(object sender, EventArgs e)
    {
        txt_product_id.Text = "";
        txt_product_detail.Text = "";

    }
    protected void btn_product_detail_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        cn.Open();

        string upload_data_ext = "";
        string uploaded_data = FileUpload1.FileName;
        if (FileUpload1.HasFile == true)
        {
            if (FileUpload1.PostedFile.ContentLength < 1048576)
            {

                upload_data_ext = uploaded_data.Substring(uploaded_data.LastIndexOf('.'));

                if (upload_data_ext == ".jpg" | upload_data_ext == ".jpeg" | upload_data_ext == ".gif" | upload_data_ext == ".png" | upload_data_ext == ".JPG")
                {
                    FileUpload1.SaveAs(Server.MapPath(Application["upload_path"] + uploaded_data));
                    SqlCommand cmd = new SqlCommand("INSERT INTO TBL_YCI_GALLERY (YCI_GALLERY_UPLOAD,YCI_GALLERY_DETAILS)VALUES('" + FileUpload1.FileName + "','" + txt_product_detail.Text + "')", cn);
                    cmd.ExecuteNonQuery();
                    //Response.Write("<script>alert('Record Successfully Inserted')</script>");
                    //lbl_msg.Text = "Record Successfully Inserted";
                    Response.Redirect("7_Admin_YCI_Upload_Gallery_Photos.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid File Extension')</script>");

                }
            }
            else
            {
                Response.Write("<script>alert('File size exceeds maximum limit 1 MB.')</script>");
            }


        }

        txt_product_id.Text = "";
        txt_product_detail.Text = "";


        cn.Close();
        cn.Dispose();
    }
    protected void btn_list_Click(object sender, EventArgs e)
    {
        Response.Redirect("8_Admin_YCI_Gallery_Photos_List_Modify.aspx");
    }
}
