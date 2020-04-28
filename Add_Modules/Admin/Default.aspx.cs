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
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Text; 

public partial class Add_Modules_Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string to = "nilesh@yatayatindia.com"; //To address    
        string from = "nilesh@yatayatindia.com"; //From address    
        MailMessage message = new MailMessage(from, to);

        string mailbody = "In this article you will learn how to send a email using Asp.Net & C#";
        message.Subject = "Sending Email Using Asp.Net & C#";
        message.Body = mailbody;
        message.BodyEncoding = Encoding.UTF8;
        message.IsBodyHtml = true;
        SmtpClient client = new SmtpClient("smtp.live.com", 587); //Gmail smtp    
        System.Net.NetworkCredential basicCredential1 = new
        System.Net.NetworkCredential("yourmail id", "Password");
        client.EnableSsl = true;
        client.UseDefaultCredentials = false;
        client.Credentials = basicCredential1;
        try
        {
            client.Send(message);
        }

        catch (Exception ex)
        {
            throw ex;
        }  
    }
}
