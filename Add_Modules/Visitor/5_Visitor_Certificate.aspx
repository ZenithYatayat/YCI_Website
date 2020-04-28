<%@ Page Language="C#" MasterPageFile="~/Add_Modules/Visitor/VisitorMaster.master"
    AutoEventWireup="true" CodeFile="5_Visitor_Certificate.aspx.cs" Inherits="Add_Modules_Visitor_Default"
    Title="YCI Certificate Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="service_svg">
        <svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 1366 320">
        <path fill="#DE0B1C" fill-opacity="1" d="M0,320L80,272C160,224,320,128,480,90.7C640,53,800,75,960,85.3C1120,96,1280,96,1360,96L1440,96L1440,0L1360,0C1280,0,1120,0,960,0C800,0,640,0,480,0C320,0,160,0,80,0L0,0Z">
        </path>
        
        
        </svg>
        <div class="service_svg_img">
            <div class="w3-center w3-animate-zoom" style="position: absolute; width: 650px; float: left;">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/App_Themes/Image/Lo.png" Width="80%" />
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
        <%--<div class="w3-center w3-animate-top" style="width: 100%;">--%>
        <div class="service_full_div_part2">
            <div class="service_full_div_part2_title">
                <br />
                &nbsp; <b style="color: #DE0B1C;">C</b>ertification
                <br />
            </div>
            <br />
            <div class="service_full_div_part2_content">
                YCI believes Certification has found its way into almost every industry for a reason:
                It helps advance the profession. Certification helps employers evaluate potential
                new hires, analyze job performance, evaluate employees, select contractors, market
                services, and motivate employees to enhance their skills and knowledge.
                <br />
                <br />
                <div class="height_5_space">
                </div>
                <div class="vas_title">
                    <b style="color: #DE0B1C">P</b>rofessional <b style="color: #DE0B1C">C</b>ertification<b
                        style="color: #DE0B1C"> H</b>elps <b style="color: #DE0B1C">O</b>ne <b style="color: #DE0B1C">
                            T</b>o
                </div>
                <br />
                <ul>
                    <li>Certificates are achievement for YCI's role towards real-world logistic responsibilities.
                    </li>
                    <li>It makes us realize maximum benefit from a wide range of expertise areas. </li>
                    <li>This helps the clietns to understand YCI's journey leading to upliftment of supply
                        chain</li>
                </ul>
                <br />
                <br />
            </div>
            <br />
            <br />
        </div>
        <%--</div>--%>
        <div class="whole_for_three_parts">
            <div class="whole_for_three_parts_1">
                <div>
                    <a target="_blank" href="../../App_Themes/Image/ISO.jpg">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/App_Themes/Image/ISO.jpg" class="whole_img" />
                    </a>
                </div>
            </div>
            <div class="height_700_for_mobile">
            </div>
            
            <div class="whole_for_three_parts_2">
                <div>
                    <a target="_blank" href="../../App_Themes/Image/IBA.jpg">
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/App_Themes/Image/IBA.jpg" class="whole_img" />
                    </a>
                </div>
            </div>
            <div class="height_700_for_mobile">
            </div>
            <div class="whole_for_three_parts_3">
                <div>
                    <a target="_blank" href="../../App_Themes/Image/PS1.jpg">
                        <asp:Image ID="Image4" runat="server" ImageUrl="~/App_Themes/Image/PS.jpg" class="whole_img" />
                    </a>
                </div>
            </div>
            <div class="height_20_for_mobile">
            </div>
        </div>
        <div class="height_30_space">
        </div>
        
    </div>
</asp:Content>
