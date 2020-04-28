<%@ Page Language="C#" MasterPageFile="~/Add_Modules/Visitor/VisitorMaster.master"
    AutoEventWireup="true" CodeFile="9_Visitor_Tracking.aspx.cs" Inherits="Add_Modules_Visitor_Default"
    Title="YCI Tracking Page" %>

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
                <b style="color: #DE0B1C;">T</b>rack & <b style="color: #DE0B1C;">T</b>race
                <br />
            </div>
            <br />
            <div class="service_full_div_part2_content">
                Logistics tracking refers to the methods and systems used for tracking resources
                throughout their movement and storage. With logistics tracking you'll know where
                your products, materials, or other resources are physically located at any time,
                as well as what is scheduled. YCI really undrstands how important it is for a client
                to know about consignment status. Considering the requirement we here provide you
                the needful.
                <br />
            </div>
            <br />
            <br />
            <div class="signup">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <div style="float: left;">
                            <div>
                                <asp:Label ID="lbl_branch_code" runat="server" Text="Branch Code :"></asp:Label>
                            </div>
                            <div>
                                <asp:TextBox ID="txt_branch_code" runat="server" CssClass="txt_style" AutoPostBack="false"
                                    MaxLength="30" placeholder="12121212"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="Required_branch_code" runat="server" ControlToValidate="txt_branch_code"
                                    ErrorMessage="*" ValidationGroup="check_send"></asp:RequiredFieldValidator>
                            </div>
                            <br />
                        </div>
                        <div>
                            <div>
                                <asp:Label ID="lbl_lr_no" runat="server" Text="LR No :"></asp:Label>
                            </div>
                            <div>
                                <asp:TextBox ID="txt_lr_no" runat="server" CssClass="txt_style" placeholder="4848"
                                    MaxLength="10"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="Required_lr_no" runat="server" ControlToValidate="txt_lr_no"
                                    ErrorMessage="*" ValidationGroup="check_send"></asp:RequiredFieldValidator>
                            </div>
                            <br />
                        </div>
                        
                        <div class="ml_140">
                            <asp:Button ID="btn_send" runat="server" Text="Send" OnClick="btn_send_Click" CssClass="btn_style"
                                ValidationGroup="check_send" />
                            <asp:Button ID="btn_clear" runat="server" Text="Clear" CssClass="btn_style" OnClick="btn_clear_Click" />
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
    </div>
    <div style="height: 150px;">
    </div>
    </div>
</asp:Content>
