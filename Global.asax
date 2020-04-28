<%@ Application Language="C#" %>

<script RunAt="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup
        Application["upload_path"] = "~/Uploaded_Data/";
    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started
        Session["login"] = "";
        Session["User_Name"] = "";
        Session["First_Name"] = "";
        Session["Middle_Name"] = "";
        Session["Last_Name"] = "";
        Session["Gender"] = "";
        Session["Edit"] = "";
        Session["Admin_ID"] = "";
        Session["AD_ADDRESS"] = "";
        Session["FileUpload1"] = "";
        Session["Total"] = "";
        Session["male_or_female"] = "";
        Session["marital_status_total"] = "";
        Session["Leadership_Status"] = "";
        Session["Max"] = "";
        Session["TOTAL_INDIVIDUAL_BLOOD_GROUP"] = "";
    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>

