<%@ Page Language="C#" MasterPageFile="~/Add_Modules/Admin/AdminMaster.master" AutoEventWireup="true"
    CodeFile="6_Admin_YCI_CAREER_DetailView.aspx.cs" Inherits="Add_Modules_Admin_Default"
    Title="YCI Career DetailView" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div align="center">
    </div>
    <div class="convenient">
        <div class="daily_services_updown_space">
        </div>
        <b style="color: #DE0B1C">Y</b>CI - <b style="color: #DE0B1C">M</b>aking <b style="color: #DE0B1C">
            L</b>ogistics <b style="color: #DE0B1C">C</b>onvenient
        <div class="daily_services_updown_space">
        </div>
    </div>
    <div>
        <div class="height_20_space">
        </div>
        <div>
            <table align="center">
                <tr id="tr_job_applicant_id" runat="server" visible="false">
                    <td>
                        <asp:Label ID="lbl_job_applicant_id" runat="server" Text="APPOINTMENT ID"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_job_applicant_id" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
        <div align="center" style="width: 100%; font-family: Arial; font-size: 12px;">
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="false" GridLines="None"
                Width="800" Style="border: none; font-family: Arial; font-size: 12px;">
                <Fields>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <table align="center" class="print_table">
                                <tr>
                                    <td colspan="4">
                                        <div style="text-align: center; color: #DE0B1C; font-family: Arial Black; font-size: 14px;">
                                            <b style="color: #000000">Y</b>CI <b style="color: #000000">J</b>ob <b style="color: #000000">
                                                A</b>pplicant <b style="color: #000000">D</b>etails
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="color: #1b4f72;" align="left">
                                        <asp:Label ID="lbl_fname" runat="server" Text="Full Name :"></asp:Label>
                                    </td>
                                    <td style="color: #FF0064;" colspan="2" align="left">
                                        <%#Eval("YCI_CAREER_FNAME")%>
                                        <%#Eval("YCI_CAREER_LNAME")%>
                                    </td>
                                    <td rowspan="4" style="width: 120px;" align="center">
                                        <%--<asp:Image ID="img_book" runat="server" ImageUrl="~/App_Themes/Image/PassportPhoto.png"
                                            Width="100" Height="140" />--%>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="color: #1b4f72;" align="left">
                                        <asp:Label ID="lbl_contact" runat="server" Text="Mobile No :"></asp:Label>
                                    </td>
                                    <td style="color: #FF0064;" colspan="2" align="left">
                                        <%#Eval("YCI_CAREER_CO_NO")%>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="color: #1b4f72;" align="left">
                                        <asp:Label ID="lbl_email" runat="server" Text="Email :"></asp:Label>
                                    </td>
                                    <td style="color: #FF0064;" colspan="2" align="left">
                                        <%#Eval("YCI_CAREER_EMAIL")%>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="color: #1b4f72;" align="left">
                                        <asp:Label ID="lbl_education" runat="server" Text="Education :"></asp:Label>
                                    </td>
                                    <td style="color: #FF0064;" colspan="2" align="left">
                                        <%#Eval("YCI_CAREER_EDUCATION")%>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="color: #1b4f72;" align="left">
                                        <asp:Label ID="lbl_experience" runat="server" Text="Experience :"></asp:Label>
                                    </td>
                                    <td style="color: #FF0064;" colspan="3" align="left">
                                        <%#Eval("YCI_CAREER_EXPERIENCE")%>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="color: #1b4f72;" align="left">
                                        <div style="float: left;">
                                            <asp:Label ID="lbl_designation" runat="server" Text="Designation :"></asp:Label>
                                        </div>
                                    </td>
                                    <td style="color: #FF0064;" colspan="3" align="left">
                                        <%#Eval("YCI_CAREER_DESIGNATION")%>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="color: #1b4f72;" align="left">
                                        <asp:Label ID="lbl_last_job_ctc" runat="server" Text="Last Job CTC :"></asp:Label>
                                    </td>
                                    <td style="color: #FF0064;" colspan="3" align="left">
                                        <%#Eval("YCI_CAREER_LAST_JOB_CTC")%>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Fields>
            </asp:DetailsView>
        </div>
        <div align="center">
            <a href="5_Admin_YCI_CAREER.aspx" style="color: #DE0B1C; font-family: Arial Black;
                font-size: 14px;">Back</a>
        </div>
        <div class="height_10_space">
        </div>
        <div align="center">
            <asp:Button ID="btn_export_to_excel" runat="server" Text="Excel" CssClass="btn_style"
                OnClick="btn_export_to_excel_Click" />
            <asp:Button ID="btn_export_to_pdf" runat="server" Text="PDF" CssClass="btn_style"
                OnClick="btn_export_to_pdf_Click" />
        </div>
        <div style="height: 200px;">
        </div>
    </div>
</asp:Content>
