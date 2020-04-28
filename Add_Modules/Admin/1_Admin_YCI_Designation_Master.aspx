<%@ Page Language="C#" MasterPageFile="~/Add_Modules/Admin/AdminMaster.master" AutoEventWireup="true"
    CodeFile="1_Admin_YCI_Designation_Master.aspx.cs" Inherits="Add_Modules_Admin_Default"
    Title="YCI Designation Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div align="center">
        <%--<asp:Image ID="Image1" runat="server" ImageUrl="~/App_Themes/Image/0.jpg" Width="100%" />--%>
        <%--<asp:Image ID="Image10" runat="server" ImageUrl="~/App_Themes/Image/YCI_Texture_RGB.png"
            Width="70%" />--%>
    </div>
    <div class="convenient">
        <div class="daily_services_updown_space">
        </div>
        <%--<div class="w3-center w3-animate-left" style="width: 100%;">--%>
            <b style="color: #DE0B1C">Y</b>CI - <b style="color: #DE0B1C">M</b>aking <b style="color: #DE0B1C">
                L</b>ogistics <b style="color: #DE0B1C">C</b>onvenient
        <%--</div>--%>
        <div class="daily_services_updown_space">
        </div>
    </div>
    <div class="content_home">
        <div class="content_home_inside_title">
            <br />
            <%--&nbsp; <b style="color: #DE0B1C;">D</b>esignation <b style="color: #DE0B1C;">M</b>aster
            <br />--%>
            <br />
            <div>
                <div>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <div class="signin_contact1" style="text-align: left;">
                                <div style="text-align: center;">
                                    <b style="color: #DE0B1C">A</b>dd - <b style="color: #DE0B1C">D</b>esignation
                                </div>
                                <div id="Designation_id" runat="server" visible="false">
                                    <br />
                                    <div class="contact_large_div">
                                        <p style="margin-left: 20px; font-size: 13px; margin-top: 20px;">
                                            Designation ID
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_Designation_id"
                                                ValidationGroup="req_Designation_detail" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                                        </p>
                                    </div>
                                    <div class="contact_large_div">
                                        <asp:TextBox ID="txt_Designation_id" runat="server" CssClass="txt_style" Placeholder="Eg. 1"
                                            MaxLength="10"></asp:TextBox>
                                    </div>
                                </div>
                                <div>
                                    <br />
                                    <div class="contact_large_div">
                                        <p style="margin-left: 20px; font-size: 13px; margin-top: 20px;">
                                            Enter Designation
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_Designation_name"
                                                ValidationGroup="req_Designation_detail" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                                        </p>
                                    </div>
                                    <div class="contact_large_div">
                                        <p style="margin-left: 20px; font-size: 13px; margin-top: 7px;">
                                            <asp:TextBox ID="txt_Designation_name" runat="server" CssClass="txt_style" Placeholder=""
                                                MaxLength="100"></asp:TextBox>
                                        </p>
                                    </div>
                                </div>
                                <div class="contact_large_div">
                                    <div style="width: 100%; height: 50px; margin-left: 20px; margin-top: 7px;">
                                        <asp:Button ID="btn_send" runat="server" Text="Send" CssClass="btn_style" ValidationGroup="req_Designation_detail"
                                            OnClick="btn_send_Click" />
                                    </div>
                                    <center>
                                        <div>
                                            <asp:Label ID="lbl_msg" runat="server" Text="" Font-Bold="true" Font-Size="Small"
                                                ForeColor="Red"></asp:Label>
                                        </div>
                                    </center>
                                </div>
                            </div>
                            <div class="signin_contact2" style="background-image: none; border: 0px;">
                                <div class="height_10_space">
                                </div>
                                <div>
                                    <div style="text-align: center; color: Black; font-family: Arial Black; font-size: 14px;">
                                        <b style="color: #DE0B1C">M</b>odify - <b style="color: #DE0B1C">D</b>esignation
                                    </div>
                                </div>
                                <div>
                                    <div>
                                        <div style="height:25px;">
                                        </div>
                                        <div align="center" style="width: 100%;">
                                            <asp:GridView ID="grd_display_Designation" runat="server" AutoGenerateColumns="false"
                                                DataKeyNames="YCI_DESIGNATION_ID" Width="100%" AllowPaging="true" PageIndex="0"
                                                BorderColor="  #DE0B1C" BorderWidth="0px" PageSize="4" OnPageIndexChanging="grd_display_Designation_PageIndexChanging"
                                                OnRowDeleting="grd_display_Designation_RowDeleting" OnRowEditing="grd_display_Designation_RowEditing">
                                                <RowStyle BackColor="" Font-Size="12pt" ForeColor="#1F232F" HorizontalAlign="Center"
                                                    VerticalAlign="Middle" Height="45px" />
                                                <Columns>
                                                    <asp:BoundField DataField="YCI_DESIGNATION_NAME" HeaderText="YCI | Designation Name" />
                                                    <asp:TemplateField HeaderText="Delete">
                                                        <ItemTemplate>
                                                            <asp:ImageButton ID="btn_delete" runat="server" CommandName="DELETE" ImageUrl="~/App_Themes/Image/Delete.png"
                                                                Height="20px" OnClientClick="javascript:return confirm('Are You Sure to Delete This Record?')" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Edit">
                                                        <ItemTemplate>
                                                            <asp:ImageButton ID="btn_Edit" runat="server" CommandName="EDIT" ImageUrl="~/App_Themes/Image/Edit.png"
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
                                    </div>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <br />
        
                </div>
            </div>
            <br />
            <br />
        </div>
        <%-- <div class="string2">
        </div>
        <div class="string">
        </div>--%>
    </div>
</asp:Content>
