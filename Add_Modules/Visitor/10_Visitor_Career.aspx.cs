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
            ddl_position_bind();
            ddl_experience_bind();
            ddl_education_bind();
            ddl_last_job_ctc_bind();

        }
    }
    protected void btn_clear_Click(object sender, EventArgs e)
    {
        txt_fname.Text = "";
        txt_lname.Text = "";
        txt_contact.Text = "";
        txt_email.Text = "";
        txt_education_qualifiacation_name.Text = "";
        txt_experience_year.Text = "";
        txt_designation_name.Text = "";
        txt_last_ctc.Text = "";
        ddl_education.SelectedValue = "0";
        ddl_experience.SelectedValue = "0";
        ddl_position.SelectedValue = "0";
        ddl_last_job_ctc.SelectedValue = "0";
        lbl_msg.Text = "";
    }
    protected void ddl_position_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da;
        DataTable dt = new DataTable();
        cmd.Connection = cn;
        cn.Open();
        cmd.CommandText = "SELECT YCI_DESIGNATION_ID FROM TBL_YCI_DESIGNATION WHERE YCI_DESIGNATION_NAME='" + ddl_position.SelectedValue + "'";
        da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        cmd.ExecuteNonQuery();
        lbl_position_id.Text = "";
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            lbl_position_id.Text = sdr["YCI_DESIGNATION_ID"].ToString();
        }
        cn.Close();
        cn.Dispose();
    }
    public void ddl_position_bind()
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da;
        DataTable dt = new DataTable();
        ddl_position.AutoPostBack = true;
        cmd.CommandText = "SELECT YCI_DESIGNATION_NAME FROM TBL_YCI_DESIGNATION";
        cmd.Connection = cn;
        da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        cn.Open();
        cmd.ExecuteNonQuery();
        ddl_position.DataSource = dt;
        ddl_position.DataBind();
        cn.Close();
        cn.Dispose();
    }

    protected void ddl_experience_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da;
        DataTable dt = new DataTable();
        cmd.Connection = cn;
        cn.Open();
        cmd.CommandText = "SELECT YCI_EXPERIENCE_ID FROM TBL_YCI_EXPERIENCE WHERE YCI_EXPERIENCE_YEARS='" + ddl_experience.SelectedValue + "'";
        da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        cmd.ExecuteNonQuery();
        lbl_experience_id.Text = "";
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            lbl_experience_id.Text = sdr["YCI_EXPERIENCE_ID"].ToString();
        }
        cn.Close();
        cn.Dispose();
    }
    public void ddl_experience_bind()
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da;
        DataTable dt = new DataTable();
        ddl_experience.AutoPostBack = true;
        cmd.CommandText = "SELECT YCI_EXPERIENCE_YEARS FROM TBL_YCI_EXPERIENCE";
        cmd.Connection = cn;
        da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        cn.Open();
        cmd.ExecuteNonQuery();
        ddl_experience.DataSource = dt;
        ddl_experience.DataBind();
        cn.Close();
        cn.Dispose();
    }

    protected void ddl_education_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da;
        DataTable dt = new DataTable();
        cmd.Connection = cn;
        cn.Open();
        cmd.CommandText = "SELECT YCI_EDU_QUALIFICATION_ID FROM TBL_YCI_EDUCATION_QUALIFICATION WHERE YCI_EDU_QUALIFICATION_NAME='" + ddl_education.SelectedValue + "'";
        da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        cmd.ExecuteNonQuery();
        lbl_education_qualifiacation_id.Text = "";
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            lbl_education_qualifiacation_id.Text = sdr["YCI_EDU_QUALIFICATION_ID"].ToString();
        }
        cn.Close();
        cn.Dispose();
    }
    public void ddl_education_bind()
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da;
        DataTable dt = new DataTable();
        ddl_education.AutoPostBack = true;
        cmd.CommandText = "SELECT YCI_EDU_QUALIFICATION_NAME FROM TBL_YCI_EDUCATION_QUALIFICATION";
        cmd.Connection = cn;
        da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        cn.Open();
        cmd.ExecuteNonQuery();
        ddl_education.DataSource = dt;
        ddl_education.DataBind();
        cn.Close();
        cn.Dispose();
    }

    protected void ddl_last_job_ctc_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da;
        DataTable dt = new DataTable();
        cmd.Connection = cn;
        cn.Open();
        cmd.CommandText = "SELECT YCI_LAST_JOB_CTC_ID FROM TBL_YCI_LAST_JOB_CTC WHERE YCI_LAST_JOB_CTC_AMOUNT='" + ddl_last_job_ctc.SelectedValue + "'";
        da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        cmd.ExecuteNonQuery();
        lbl_last_ctc_id.Text = "";
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            lbl_last_ctc_id.Text = sdr["YCI_LAST_JOB_CTC_ID"].ToString();
        }
        cn.Close();
        cn.Dispose();
    }
    public void ddl_last_job_ctc_bind()
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da;
        DataTable dt = new DataTable();
        ddl_last_job_ctc.AutoPostBack = true;
        cmd.CommandText = "SELECT YCI_LAST_JOB_CTC_AMOUNT FROM TBL_YCI_LAST_JOB_CTC";
        cmd.Connection = cn;
        da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        cn.Open();
        cmd.ExecuteNonQuery();
        ddl_last_job_ctc.DataSource = dt;
        ddl_last_job_ctc.DataBind();
        cn.Close();
        cn.Dispose();
    }
    protected void btn_send_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        cn.Open();

        SqlCommand cmd = new SqlCommand("INSERT INTO YCI_CAREER (YCI_CAREER_FNAME,YCI_CAREER_LNAME,YCI_CAREER_CO_NO,YCI_CAREER_EMAIL,YCI_CAREER_EDUCATION,YCI_CAREER_EXPERIENCE,YCI_CAREER_DESIGNATION,YCI_CAREER_LAST_JOB_CTC)VALUES('" + txt_fname.Text + "','" + txt_lname.Text + "','" + txt_contact.Text + "','" + txt_email.Text + "','" + ddl_education.SelectedValue + "','" + ddl_experience.SelectedValue + "','" + ddl_position.SelectedValue + "','" + ddl_last_job_ctc.SelectedValue + "')", cn);
        cmd.ExecuteNonQuery();

        txt_fname.Text = "";
        txt_lname.Text = "";
        txt_contact.Text = "";
        txt_email.Text = "";
        txt_education_qualifiacation_name.Text = "";
        txt_experience_year.Text = "";
        txt_designation_name.Text = "";
        txt_last_ctc.Text = "";
        ddl_education.SelectedValue = "0";
        ddl_experience.SelectedValue = "0";
        ddl_position.SelectedValue = "0";
        ddl_last_job_ctc.SelectedValue = "0";
        lbl_msg.Text = "Your Job Application Sent Successfully";
        cn.Close();
        cn.Dispose();

    }
}
