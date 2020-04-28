<%@ Page Language="C#" MasterPageFile="~/Add_Modules/Visitor/VisitorMaster.master"
    AutoEventWireup="true" CodeFile="11_Visitor_More.aspx.cs" Inherits="Add_Modules_Visitor_Default"
    Title="YCI Check More" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="service_svg">
        <svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 1366 320">
        <path fill="#DE0B1C" fill-opacity="1" d="M0,320L80,272C160,224,320,128,480,90.7C640,53,800,75,960,85.3C1120,96,1280,96,1360,96L1440,96L1440,0L1360,0C1280,0,1120,0,960,0C800,0,640,0,480,0C320,0,160,0,80,0L0,0Z">
        </path>
        </svg>
        <div class="service_svg_img">
            <div class="w3-center w3-animate-zoom" style="position: absolute; width: 650px; float: left;">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/App_Themes/Image/TruckLogo.png"
                    Width="70%" />
            </div>
        </div>
    </div>
    <div class="service_margin_top_170">
    </div>
    <div style="height: 300px;">
    </div>
    <div class="service_full_div">
        <div class="service_full_div_part1">
            <div class="service_full_div_part1_inside">
            </div>
        </div>
    </div>
    <div class="more">
        <div class="more_left">
        </div>
        <div class="more_right">
            <div class="more_right_part1">
                <div class="more_right_part1_a">
                    <div class="more_common_img">
                        <asp:Image ID="Image6" runat="server" ImageUrl="~/App_Themes/Image/MilestoneLogo.png" />
                        <%--<asp:HyperLink ID="Hyperlink_Milestone" runat="server" ImageUrl="~/App_Themes/Image/MilestoneLogo.png"
                            NavigateUrl="~/Add_Modules/Visitor/11_Visitor_More_1_Milestone.aspx">Milestone</asp:HyperLink>--%>
                    </div>
                    <div class="more_common_text">
                        <a href="11_Visitor_More_1_Milestone.aspx">MileStone</a>
                    </div>
                    <div class="more_common_img">
                        <asp:Image ID="Image14" runat="server" ImageUrl="~/App_Themes/Image/NewsEventSmall.png" />
                    </div>
                    <div class="more_common_text">
                        <a href="11_Visitor_More_5_NewsEvents.aspx">News/Event</a>
                    </div>
                </div>
                <div class="more_right_part1_b">
                    <div class="more_common_img">
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/App_Themes/Image/WarehouseLogo.png" />
                    </div>
                    <div class="more_common_text">
                        <a href="11_Visitor_More_2_WareHouse.aspx">Warehouse</a>
                    </div>
                    <div class="more_common_img">
                        <asp:Image ID="ImgTesti" runat="server" ImageUrl="~/App_Themes/Image/Testimonial.png" />
                    </div>
                    <div class="more_common_text">
                        <a href="11_Visitor_More_6_Testimonial.aspx">Testimonial</a>
                    </div>
                </div>
            </div>
            <div class="more_right_part2">
                <div class="more_right_part2_a">
                    <div class="more_common_img">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/App_Themes/Image/ExportLogo.png" />
                    </div>
                    <div class="more_common_text">
                        <a href="11_Visitor_More_3_Export.aspx">Export</a>
                    </div>
                    <div class="more_common_img">
                        <asp:Image ID="Image4" runat="server" ImageUrl="~/App_Themes/Image/SitemapLogo.png" />
                    </div>
                    <div class="more_common_text">
                        <a href="11_Visitor_More_7_Sitemap.aspx">Sitemap</a>
                    </div>
                </div>
                <div class="more_right_part2_b">
                    <div class="more_common_img">
                        <asp:Image ID="Image7" runat="server" ImageUrl="~/App_Themes/Image/GalleryLogo.png" />
                    </div>
                    <div class="more_common_text">
                        <a href="11_Visitor_More_4_Gallary.aspx">Gallery</a>
                    </div>
                    <div class="more_common_img">
                        <asp:Image ID="Image5" runat="server" ImageUrl="~/App_Themes/Image/LoginLogo.png" />
                    </div>
                    <div class="more_common_text">
                        <a href="8_Visitor_SignIn.aspx">Login</a>
                    </div>
                </div>
            </div>
        </div>
        <div style="height: 150px;">
        </div>
    </div>
    <div class="moremobile">
        <div class="moremobile_common_img">
            <asp:Image ID="Image8" runat="server" ImageUrl="~/App_Themes/Image/MilestoneLogo.png" />
        </div>
        <div class="moremobile_common_text">
            <a href="#">MileStone</a>
        </div>
        <br />
        <div class="moremobile_common_img">
            <asp:Image ID="Image9" runat="server" ImageUrl="~/App_Themes/Image/WarehouseLogo.png" />
        </div>
        <div class="moremobile_common_text">
            <a href="#">Warehouse</a>
        </div>
        <br />
        <div class="moremobile_common_img">
            <asp:Image ID="Image10" runat="server" ImageUrl="~/App_Themes/Image/ExportLogo.png" />
        </div>
        <div class="moremobile_common_text">
            <a href="#">Export</a>
        </div>
        <br />
        <div class="moremobile_common_img">
            <asp:Image ID="Image11" runat="server" ImageUrl="~/App_Themes/Image/GalleryLogo.png" />
        </div>
        <div class="moremobile_common_text">
            <a href="#">Gallery</a>
        </div>
        <br />
        <div class="moremobile_common_img">
            <asp:Image ID="Image15" runat="server" ImageUrl="~/App_Themes/Image/NewsEventSmall.png" />
        </div>
        <div class="moremobile_common_text">
            <a href="11_Visitor_More_5_NewsEvents.aspx">News/Event</a>
        </div>
        <br />
        <div class="moremobile_common_img">
            <asp:Image ID="Image16" runat="server" ImageUrl="~/App_Themes/Image/Testimonial.png" />
        </div>
        <div class="moremobile_common_text">
            <a href="11_Visitor_More_6_Testimonial.aspx">Testimonial</a>
        </div>
        <br />
        <div class="moremobile_common_img">
            <asp:Image ID="Image12" runat="server" ImageUrl="~/App_Themes/Image/SitemapLogo.png" />
        </div>
        <div class="moremobile_common_text">
            <a href="#">Sitemap</a>
        </div>
        <br />
        <div class="moremobile_common_img">
            <asp:Image ID="Image13" runat="server" ImageUrl="~/App_Themes/Image/LoginLogo.png" />
        </div>
        <div class="moremobile_common_text">
            <a href="#">SignIn</a>
        </div>
        <br />
    </div>
</asp:Content>
