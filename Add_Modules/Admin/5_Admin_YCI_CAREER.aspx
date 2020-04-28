<%@ Page Language="C#" MasterPageFile="~/Add_Modules/Admin/AdminMaster.master" AutoEventWireup="true"
    CodeFile="5_Admin_YCI_CAREER.aspx.cs" Inherits="Add_Modules_Admin_Default" Title="YCI Admin Aplication Form"
    EnableEventValidation="false" %>

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
    <div class="height_20_space">
    </div>
    <div style="width: 95%; left: 0; right: 0; margin-left: auto; margin-right: auto;"
        align="center">
        <div>
            <div style="text-align: center; color: Black; font-family: Arial Black; font-size: 14px;">
                <b style="color: #DE0B1C">L</b>ist - <b style="color: #DE0B1C">O</b>f <b style="color: #DE0B1C">
                    J</b>ob <b style="color: #DE0B1C">A</b>pplicant
            </div>
        </div>
        <div style="height: 25px;">
        </div>
        <div align="center" style="width: 100%; font-family: Arial; font-size: 12px;">
            <asp:GridView ID="grd_display_career" runat="server" AutoGenerateColumns="false"
                DataKeyNames="YCI_CAREER_ID" Width="100%" AllowPaging="true" PageIndex="0" BorderColor="  #DE0B1C"
                BorderWidth="0px" PageSize="4" OnPageIndexChanging="grd_display_career_PageIndexChanging"
                OnRowDeleting="grd_display_career_RowDeleting" 
                OnRowEditing="grd_display_career_RowEditing">
                <RowStyle BackColor="" Font-Size="12pt" ForeColor="#1F232F" HorizontalAlign="Center"
                    VerticalAlign="Middle" Height="45px" />
                <Columns>
                    <asp:BoundField DataField="YCI_CAREER_FNAME" HeaderText="First Name" />
                    <asp:BoundField DataField="YCI_CAREER_LNAME" HeaderText="Last Name" />
                    <asp:BoundField DataField="YCI_CAREER_CO_NO" HeaderText="Contact No" />
                    <asp:BoundField DataField="YCI_CAREER_EMAIL" HeaderText="Email Address" />
                    <asp:BoundField DataField="YCI_CAREER_EDUCATION" HeaderText="Education" />
                    <asp:BoundField DataField="YCI_CAREER_EXPERIENCE" HeaderText="Experience" />
                    <asp:BoundField DataField="YCI_CAREER_DESIGNATION" HeaderText="Designation" />
                    <asp:BoundField DataField="YCI_CAREER_LAST_JOB_CTC" HeaderText="Last Job CTC" />
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:ImageButton ID="btn_delete" runat="server" CommandName="DELETE" ImageUrl="~/App_Themes/Image/Delete.png"
                                Height="20px" OnClientClick="javascript:return confirm('Are You Sure to Delete This Record?')" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="View">
                        <ItemTemplate>
                            <asp:ImageButton ID="btn_edit" runat="server" CommandName="Edit" ImageUrl="~/App_Themes/Image/view1.png"
                                Height="20px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#101010" Font-Size="12pt" Height="25px" HorizontalAlign="Center"
                    VerticalAlign="Middle" ForeColor="#1F232F" />
                <PagerStyle Font-Size="12pt" ForeColor="#1F232F" HorizontalAlign="Center" VerticalAlign="Middle"
                    Height="50px" />
                <HeaderStyle BackColor="  #DE0B1C" ForeColor="white" Font-Size="12pt" Height="45px" />
                <RowStyle ForeColor="#1F232F" HorizontalAlign="Center" CssClass="grid" />
                <AlternatingRowStyle BackColor="  #DE0B1C" ForeColor="white" CssClass="grid" />
            </asp:GridView>
        </div>
        <center>
            <div>
                <asp:Label ID="lbl_msg" runat="server" Text="" Font-Bold="true" Font-Size="Small"
                    ForeColor="Red"></asp:Label>
            </div>
        </center>
    </div>
    <div align="center">
        <asp:Button ID="btn_export_to_excel" runat="server" Text="Excel" CssClass="btn_style"
            OnClick="btn_export_to_excel_Click" />
       <%-- <asp:Button ID="btn_export_to_pdf" runat="server" Text="PDF" CssClass="btn_style"
            OnClick="btn_export_to_pdf_Click" />--%>
    </div>
    <div style="height: 200px;">
    </div>
</asp:Content>
