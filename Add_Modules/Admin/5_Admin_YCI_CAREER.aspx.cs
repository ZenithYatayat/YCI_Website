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
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html;
using iTextSharp.text.html.simpleparser;
using System.IO;
using System.Web.Mail;
using System.Net.Mail;


public partial class Add_Modules_Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            Display_CAREER();
        }
    }
    public void Display_CAREER()
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        cmd.CommandText = "SELECT * FROM YCI_CAREER ORDER BY(YCI_CAREER_ID)DESC";
        cmd.Connection = cn;
        da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        cn.Open();
        cmd.ExecuteNonQuery();
        grd_display_career.DataSource = ds;
        grd_display_career.DataBind();
        cn.Close();
        cn.Dispose();
    }
    protected void grd_display_career_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            lbl_msg.Text = "";
            string id = grd_display_career.DataKeys[e.RowIndex].Values[0].ToString();

            // int i = Convert.ToInt32(grd_display_category.DataKeys[e.RowIndex].Values[0]);
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
            cn.Open();
            SqlCommand cmd = new SqlCommand("ALTER TABLE YCI_CAREER NOCHECK CONSTRAINT ALL DELETE FROM YCI_CAREER WHERE YCI_CAREER_ID='" + id + "' ALTER TABLE YCI_CAREER CHECK CONSTRAINT ALL", cn);
            cmd.ExecuteNonQuery();
            Display_CAREER();
            cn.Close();
            cn.Dispose();
        }
        catch
        {
            lbl_msg.Text = "DATA YOU ARE TRYING TO DELETE IS IN USE";
        }
    }

    protected void grd_display_career_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grd_display_career.PageIndex = e.NewPageIndex;
        Display_CAREER();
    }

    protected void grd_display_career_RowEditing(object sender, GridViewEditEventArgs e)
    {
        string i = grd_display_career.DataKeys[e.NewEditIndex].Values[0].ToString();
        Session["Edit"] = i;
        Response.Redirect("6_Admin_YCI_CAREER_DetailView.aspx");
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
    }
    //protected void btn_export_to_pdf_Click(object sender, EventArgs e)
    //{
    //    PdfPTable pdfTable = new PdfPTable(grd_display_career.HeaderRow.Cells.Count);


    //    FontFactory.RegisterDirectories();
    //    Font fontNormal = new Font(FontFactory.GetFont("Arial Black", 8, Font.NORMAL));



    //    foreach (TableCell headerCell in grd_display_career.HeaderRow.Cells)
    //    {
    //        Font font = new Font();
    //        font.Color = new BaseColor(grd_display_career.HeaderStyle.ForeColor);

    //        PdfPCell pdfCell = new PdfPCell(new Phrase(headerCell.Text, font));


    //        pdfTable.AddCell(pdfCell);

    //    }

    //    foreach (GridViewRow gridViewRow in grd_display_career.Rows)
    //    {
    //        foreach (TableCell tableCell in gridViewRow.Cells)
    //        {
    //            Font font = new Font();
    //            font.Color = new BaseColor(grd_display_career.RowStyle.ForeColor);

    //            PdfPCell pdfCell = new PdfPCell(new Phrase(tableCell.Text));

    //            pdfTable.AddCell(pdfCell);


    //        }
    //    }
    //    Document pdfDocument = new Document(PageSize.A4, 10f, 10f, 10f, 10f);
    //    PdfWriter.GetInstance(pdfDocument, Response.OutputStream);
    //    pdfDocument.Open();
    //    pdfDocument.Add(pdfTable);
    //    pdfDocument.Close();

    //    Response.ContentType = "application/pdf";
    //    Response.AppendHeader("content-disposition", "attachment; filename=YCI_Job_Applicant_List.pdf");
    //    Response.Write(pdfDocument);
    //    Response.Flush();
    //    Response.End();


    //}
    //protected void btn_export_to_excel_Click(object sender, EventArgs e)
    //{

    //    Response.ClearContent();
    //    Response.Buffer = true;
    //    Response.AppendHeader("content-disposition", "attachment; filename=YCI_Job_Applicant_List.xlsx");
    //    Response.ContentType = "application//vnd.ms-excel";

    //    StringWriter stringwriter = new StringWriter();
    //    HtmlTextWriter htmltextwriter = new HtmlTextWriter(stringwriter);


    //    grd_display_career.AllowPaging = false;
    //    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    //    SqlCommand cmd = new SqlCommand();
    //    SqlDataAdapter da;
    //    DataSet ds = new DataSet();
    //    cmd.CommandText = "SELECT * FROM YCI_CAREER ORDER BY(YCI_CAREER_ID)DESC";
    //    cmd.Connection = cn;
    //    da = new SqlDataAdapter(cmd);
    //    da.Fill(ds);
    //    cn.Open();
    //    cmd.ExecuteNonQuery();
    //    grd_display_career.DataSource = ds;
    //    grd_display_career.DataBind();
    //    cn.Close();
    //    cn.Dispose();

    //    grd_display_career.DataBind();

    //    grd_display_career.RenderControl(htmltextwriter);
    //    Response.Write(stringwriter.ToString());
    //    Response.End();

    //}


    protected void btn_export_to_excel_Click(object sender, EventArgs e)
    {

        Response.ClearContent();
        Response.Buffer = true;
        Response.AppendHeader("content-disposition", "attachment; filename=YCI_Job_Applicant_List.xls");
        Response.ContentType = "application//vnd.ms-excel";

        StringWriter stringwriter = new StringWriter();
        HtmlTextWriter htmltextwriter = new HtmlTextWriter(stringwriter);


        grd_display_career.AllowPaging = false;
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        cmd.CommandText = "SELECT * FROM YCI_CAREER ORDER BY(YCI_CAREER_ID)DESC";
        cmd.Connection = cn;
        da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        cn.Open();
        cmd.ExecuteNonQuery();
        grd_display_career.DataSource = ds;
        grd_display_career.DataBind();

        this.grd_display_career.Columns[8].Visible = false;
        this.grd_display_career.Columns[9].Visible = false;

        cn.Close();
        cn.Dispose();

        grd_display_career.DataBind();

        grd_display_career.RenderControl(htmltextwriter);
        Response.Write(stringwriter.ToString());
        Response.End();

    }


    
}
