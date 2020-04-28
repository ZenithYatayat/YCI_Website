<%@ Page Language="C#" MasterPageFile="~/Add_Modules/Visitor/VisitorMaster.master"
    AutoEventWireup="true" CodeFile="7_Visitor_SignUp.aspx.cs" Inherits="Add_Modules_Visitor_Default"
    Title="YCI SignUp Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="service_svg">
        <svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 1366 320">
        <path fill="#DE0B1C" fill-opacity="1" d="M0,320L80,272C160,224,320,128,480,90.7C640,53,800,75,960,85.3C1120,96,1280,96,1360,96L1440,96L1440,0L1360,0C1280,0,1120,0,960,0C800,0,640,0,480,0C320,0,160,0,80,0L0,0Z">
        </path>
        
        
        </svg>
        <div class="service_svg_img">
            <div class="w3-center w3-animate-zoom" style="position: absolute; width: 650px; float: left;">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/App_Themes/Image/signup.png" Width="70%" />
            </div>
        </div>
    </div>
    <div class="service_margin_top_170">
    </div>
    <div class="service_full_div">
        <div class="service_full_div_part1">
            <div class="service_full_div_part1_inside">
            </div>
        </div>
        <div class="service_full_div_part2">
            <div class="service_full_div_part2_title">
                <br />
                <b style="color: #DE0B1C;">S</b>ign<b style="color: #DE0B1C;">U</b>p
                <br />
            </div>
            <div class="height_30_space">
            </div>
            <div align="center">
                <div id="maximum_data" runat="server" visible="false">
                    <asp:Label ID="lbl_max_id" runat="server" Text="" Font-Size="Medium"></asp:Label>
                </div>
                <asp:Label ID="lbl_cannot_insert" runat="server" Text="" Font-Size="Medium"></asp:Label>
            </div>
            <div class="signup">
            
                <div>
                    <asp:Label ID="lbl_full_name" runat="server" Text="Full Name :"></asp:Label>
                </div>
                <div>
                    <asp:TextBox ID="txt_full_name" runat="server" CssClass="txt_style" AutoPostBack="true"
                        MaxLength="30" OnTextChanged="txt_full_name_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="Required_full_name" runat="server" ControlToValidate="txt_full_name"
                        ErrorMessage="*" ValidationGroup="check_send"></asp:RequiredFieldValidator>
                    <asp:Label ID="lbl_uname_chack" runat="server" Text=""></asp:Label>
                </div>
                <br />
                <div>
                    <asp:Label ID="lbl_whatsapp_no" runat="server" Text="Whatsapp No :"></asp:Label>
                </div>
                <div>
                    <asp:TextBox ID="txt_whatsapp_no" runat="server" CssClass="txt_style" MaxLength="10"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="Required_whatsapp_no" runat="server" ControlToValidate="txt_whatsapp_no"
                        ErrorMessage="*" ValidationGroup="check_send"></asp:RequiredFieldValidator>
                </div>
                <br />
                <div>
                    <asp:Label ID="lbl_email_id" runat="server" Text="Email ID :"></asp:Label>
                </div>
                <div>
                    <asp:TextBox ID="txt_email_id" runat="server" CssClass="txt_style" MaxLength="32"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="Required_Email" runat="server" ControlToValidate="txt_email_id"
                        ErrorMessage="*" ValidationGroup="check_send"></asp:RequiredFieldValidator>
                </div>
                <br />
                <div>
                    <asp:Label ID="lbl_pwd" runat="server" Text="Password :"></asp:Label>
                </div>
                <div>
                    <asp:TextBox ID="txt_pwd" runat="server" CssClass="txt_style" MaxLength="10" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="Required_Password" runat="server" ControlToValidate="txt_pwd"
                        ErrorMessage="*" ValidationGroup="check_send"></asp:RequiredFieldValidator>
                </div>
                <br />
                <div style="margin-left:40px;">
                    <asp:Button ID="btn_send" runat="server" Text="Send" OnClick="btn_send_Click" CssClass="btn_style"  ValidationGroup="check_send"/>
                    <asp:Button ID="btn_clear" runat="server" Text="Clear" CssClass="btn_style" OnClick="btn_clear_Click" />
                </div>
            </div>
        </div>
        <div style="height: 150px;">
        </div>
    </div>
</asp:Content>
