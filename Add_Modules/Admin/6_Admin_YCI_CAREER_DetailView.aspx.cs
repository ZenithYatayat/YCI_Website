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

public partial class Add_Modules_Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            select_user_profile();
        }
    }
    protected void select_user_profile()
    {
        txt_job_applicant_id.Text = Session["Edit"].ToString();
        try
        {

            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
            cn.Open();

            SqlCommand cmd = new SqlCommand("SELECT * FROM YCI_CAREER WHERE YCI_CAREER_ID='" + txt_job_applicant_id.Text + "'", cn);

            DetailsView1.DataSource = cmd.ExecuteReader();
            DetailsView1.DataBind();
            cn.Close();
            cn.Dispose();
        }
        catch (NullReferenceException ex)
        {

            Console.WriteLine("Complete Profile Not Ready");
        }
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
    }

    protected void btn_export_to_pdf_Click(object sender, EventArgs e)
    {
        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=YCI_Job_Applicant_Details.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);
        DetailsView1.RenderControl(hw);
        StringReader sr = new StringReader(sw.ToString());
        Document pdfDoc = new Document(PageSize.A4, 5, 5, 5, 5);
        pdfDoc.HtmlStyleClass = "~/App_Themes/Css/Admin.css";
        HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        pdfDoc.Open();
        htmlparser.Parse(sr);
        pdfDoc.Close();
        Response.Write(pdfDoc);
        Response.End();
        //PdfPTable pdfTable = new PdfPTable(DetailsView1.HeaderRow.Cells.Count);


        //FontFactory.RegisterDirectories();
        //Font fontNormal = new Font(FontFactory.GetFont("Arial Black", 8, Font.NORMAL));



        //foreach (TableCell headerCell in DetailsView1.HeaderRow.Cells)
        //{
        //    Font font = new Font();
        //    font.Color = new BaseColor(DetailsView1.HeaderStyle.ForeColor);

        //    PdfPCell pdfCell = new PdfPCell(new Phrase(headerCell.Text, font));


        //    pdfTable.AddCell(pdfCell);

        //}

        //foreach (DetailsViewRow detailsViewRow in DetailsView1.Rows)
        //{
        //    foreach (TableCell tableCell in detailsViewRow.Cells)
        //    {
        //        Font font = new Font();
        //        font.Color = new BaseColor(DetailsView1.RowStyle.ForeColor);

        //        PdfPCell pdfCell = new PdfPCell(new Phrase(tableCell.Text));

        //        pdfTable.AddCell(pdfCell);


        //    }
        //}
        //Document pdfDocument = new Document(PageSize.A4, 10f, 10f, 10f, 10f);
        //PdfWriter.GetInstance(pdfDocument, Response.OutputStream);
        //pdfDocument.Open();
        //pdfDocument.Add(pdfTable);
        //pdfDocument.Close();

        //Response.ContentType = "application/pdf";
        //Response.AppendHeader("content-disposition", "attachment; filename=YCI_Job_Applicant_Details.pdf");
        //Response.Write(pdfDocument);
        //Response.Flush();
        //Response.End();


    }
    protected void btn_export_to_excel_Click(object sender, EventArgs e)
    {

        Response.ClearContent();
        Response.Buffer = true;
        Response.AppendHeader("content-disposition", "attachment; filename=YCI_Job_Applicant_Detail.xls");
        Response.ContentType = "application//vnd.ms-excel";

        StringWriter stringwriter = new StringWriter();
        HtmlTextWriter htmltextwriter = new HtmlTextWriter(stringwriter);


        DetailsView1.AllowPaging = false;
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        cmd.CommandText = "SELECT * FROM YCI_CAREER WHERE YCI_CAREER_ID='" + txt_job_applicant_id.Text + "'";
        cmd.Connection = cn;
        da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        cn.Open();
        cmd.ExecuteNonQuery();
        DetailsView1.DataSource = ds;
        DetailsView1.DataBind();
        cn.Close();
        cn.Dispose();

        DetailsView1.DataBind();

        DetailsView1.RenderControl(htmltextwriter);
        Response.Write(stringwriter.ToString());
        Response.End();

    }
}
