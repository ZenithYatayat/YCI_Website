<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>YCI Web Default Page</title>
    <link href="App_Themes/Css/Visitor.css" rel="stylesheet" type="text/css" />
    <link rel="icon" type="image/png" href="App_Themes/Image/YCI1.png" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" type="text/css"/">
    <!-- Start WOWSlider.com HEAD section -->
    <link rel="stylesheet" type="text/css" href="Slider/engine1/style.css" />

    <script type="text/javascript" src="Slider/engine1/jquery.js"></script>

    <!-- End WOWSlider.com HEAD section -->
</head>
<body>
    <form id="form1" runat="server">
    <div class="main">
        <div id="navbar">
            <div style="width: 20px; height: 40px; float: left;">
            </div>
            <div>
                <a href="Add_Modules/Visitor/1_Visitor_About.aspx">> About </a><a href="Add_Modules/Visitor/2_Visitor_Services.aspx">
                    > Services</a> <a href="Add_Modules/Visitor/3_Visitor_Why_Us.aspx">> Why Us
                </a><a href="Add_Modules/Visitor/4_Visitor_Strength.aspx">> Strength </a><a href="Add_Modules/Visitor/5_Visitor_Certificate.aspx">
                    > Certificates </a><a href="Add_Modules/Visitor/9_Visitor_Tracking.aspx">> Tracking
                    </a><a href="Add_Modules/Visitor/10_Visitor_Career.aspx">> Career </a><a href="Add_Modules/Visitor/6_Visitor_Contact.aspx">
                        > Contact</a><a href="Add_Modules/Visitor/11_Visitor_More.aspx">More</a>
            </div>
            <div>
                <table style="width: 40px; float: right;">
                    <tr>
                        <td>
                        </td>
                    </tr>
                </table>
                <table style="width: 40px; float: right; padding: 1px;">
                    <tr>
                        <td>
                            <asp:Image ID="Image6" runat="server" ImageUrl="~/App_Themes/Image/gmvd.png" Width="100%" />
                        </td>
                    </tr>
                </table>
                <table style="width: 20px; float: right;">
                    <tr>
                        <td>
                        </td>
                    </tr>
                </table>
                <table style="width: 100px; float: right; padding: 2px;">
                    <tr>
                        <td>
                            <asp:Image ID="Image4" runat="server" ImageUrl="~/App_Themes/Image/fssai.png" Width="100%" />
                        </td>
                    </tr>
                </table>
                <table style="width: 20px; float: right;">
                    <tr>
                        <td>
                        </td>
                    </tr>
                </table>
                <table style="width: 40px; float: right; padding: 2px;">
                    <tr>
                        <td>
                            <asp:Image ID="Image5" runat="server" ImageUrl="~/App_Themes/Image/iso.png" Width="100%" />
                        </td>
                    </tr>
                </table>
                <table style="width: 20px; float: right;">
                    <tr>
                        <td>
                        </td>
                    </tr>
                </table>
                <table style="width: 100px; float: right; padding: 2px;">
                    <tr>
                        <td>
                            <asp:Image ID="Image3" runat="server" ImageUrl="~/App_Themes/Image/iba.png" Width="100%" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="topnav">
            <a href="#" style="background: linear-gradient(110deg, #EDEDED 60%,  #FFF 70%); color: #DE0B1C;">
                YCI</a>
            <div id="myLinks">
                <a href="Add_Modules/Visitor/1_Visitor_About.aspx">> About </a><a href="Add_Modules/Visitor/2_Visitor_Services.aspx">
                    > Services</a><a href="Add_Modules/Visitor/3_Visitor_Why_Us.aspx">> Why Us </a>
                <a href="Add_Modules/Visitor/4_Visitor_Strength.aspx">> Strength </a><a href="Add_Modules/Visitor/5_Visitor_Certificate.aspx">
                    > Certificates </a><a href="Add_Modules/Visitor/9_Visitor_Tracking.aspx">> Tracking
                    </a><a href="Add_Modules/Visitor/10_Visitor_Career.aspx">> Career </a><a href="Add_Modules/Visitor/6_Visitor_Contact.aspx">
                        > Contact</a><a href="Add_Modules/Visitor/11_Visitor_More.aspx">More</a>
            </div>
            <asp:HyperLink ID="HyperLink1" runat="server" onclick="myFunction()" CssClass="icon"
                ImageUrl="~/App_Themes/Image/menu_white.png"></asp:HyperLink>
        </div>
        <div class="space_below_menu">
        </div>
        <div class="string">
        </div>
        <div class="truck_img">
            <div class="string2">
            </div>
            <div class="logo">
                <div class="logo_one">
                    <div class="logo_one_a">
                        <div style="height: 10px;">
                        </div>
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/App_Themes/Image/YCI1.png" Width="80%" />
                    </div>
                    <div class="logo_one_b logo_one_b w3-center w3-animate-left">
                        <div class="" style="width: 60%;">
                            <div style="height: 40px;">
                            </div>
                            &nbsp; <b style="color: #DE0B1C;">Y</b>atayat <b style="color: #DE0B1C;">C</b>orporation
                            <b style="color: #DE0B1C;">O</b>f <b style="color: #DE0B1C;">I</b>ndia
                        </div>
                        <div style="margin-top: -50px; margin-left: 350px; border: 0px; width: 300px; height: auto;
                            text-align: left">
                            <asp:Image ID="Image10" runat="server" ImageUrl="~/App_Themes/Image/st.png" Width="30%"
                                Height="30%" Style="float: left; margin-left: -0px; margin-top: -15px;" />
                        </div>
                    </div>
                </div>
                <div class="logo_two">
                    <div style="height: 20px;">
                        <div style="height: 35px;">
                        </div>
                        <div style="margin-left: 440px;">
                            <asp:Image ID="Image7" runat="server" ImageUrl="~/App_Themes/Image/Email.png" Width="5%" />&nbsp;
                            info@yatayatindia.com
                            <div style="height: 3px; width: 10px;">
                            </div>
                            <asp:Image ID="Image8" runat="server" ImageUrl="~/App_Themes/Image/Call.png" Width="4%" />&nbsp;
                            <b style="font-size: 13px;">079-25453060,25454070</b>
                        </div>
                    </div>
                </div>
            </div>
            <div class="string2">
            </div>
        </div>
        <div style="margin-top: -5px;">
        </div>
        <div class="truck_img_mobile">
            <div style="height: 20px;">
            </div>
            <asp:Image ID="Image2" runat="server" ImageUrl="~/App_Themes/Image/YCI1.png" Width="15%" />
            <div style="height: 20px;">
            </div>
            &nbsp; <b style="color: #DE0B1C;">Y</b>atayat <b style="color: #DE0B1C;">C</b>orporation
            <b style="color: #DE0B1C;">O</b>f <b style="color: #DE0B1C;">I</b>ndia
            <div style="height: 20px;">
            </div>
        </div>
        <div class="string">
        </div>
        <div>
            <!-- Start WOWSlider.com BODY section -->
            <div id="wowslider-container1">
                <div class="ws_images">
                    <ul>
                        <li>
                            <img src="Slider/data1/images/0000.jpg" alt="jquery carousel slider" title="Yatayat Corporation Of India"
                                id="wows1_0" /></li>
                        <li>
                            <img src="Slider/data1/images/0.jpg" alt="Yatayat Corporation Of India" title="Yatayat Corporation Of India"
                                id="wows1_1" /></li>
                    </ul>
                </div>
                <div class="ws_bullets">
                    <div>
                        <a href="#" title="Yatayat Corporation Of India"><span>
                            <img src="Slider/data1/tooltips/0000.jpg" alt="Yatayat Corporation Of India" />1</span></a>
                        <a href="#" title="Yatayat Corporation Of India"><span>
                            <img src="Slider/data1/tooltips/0.jpg" alt="Yatayat Corporation Of India" />2</span></a>
                    </div>
                </div>
                <div class="ws_script" style="position: absolute; left: -99%">
                </div>
                <div class="ws_shadow">
                </div>
            </div>

            <script type="text/javascript" src="Slider/engine1/wowslider.js"></script>

            <script type="text/javascript" src="Slider/engine1/script.js"></script>

            <!-- End WOWSlider.com BODY section -->
        </div>
        <div class="string">
        </div>
        <div class="string2">
        </div>
        <%--<div class="daily_services">
            <div class="daily_services_updown_space">
            </div>
            Daily Service : Kolkata, Benapole, Bangladesh To & Fro
            <div class="daily_services_updown_space">
            </div>
        </div>--%>
        <div class="convenient">
            <div class="daily_services_updown_space">
            </div>
            <div class="w3-center w3-animate-left" style="width: 100%;">
                <b style="color: #DE0B1C">Y</b>CI - <b style="color: #DE0B1C">M</b>aking <b style="color: #DE0B1C">
                    L</b>ogistics <b style="color: #DE0B1C">C</b>onvenient
            </div>
            <div class="daily_services_updown_space">
            </div>
        </div>
        <div class="content_home">
            <div class="content_home_inside_title">
                <br />
                &nbsp; <b style="color: #DE0B1C;">A</b>bout <b style="color: #DE0B1C;">Y</b>CI
                <br />
                <br />
                <div class="content_home_inside">
                    Yatayat Corporation Of India (YCI) is one of the leading organization (IBA Approved)
                    in Road Transport and Logistics along with carrying and forwarding activities. We
                    have an infrastructure of more than 125 branches and 275 outlets spread throughout
                    the country. YCI intricate network ensures smooth flow of operations both within
                    the state and between one state to other ensuring speedy and efficient transpiration
                    of goods. YCI as part of road transport specializes in Truck Trailer, Bulk Cargo,
                    FTL, LCV, ODC Consignment and Project Consignments by open trucks & trailers and
                    Container's movement. YCI provides integrated end to end logistics solutions and
                    services, designed to redefine the customer satisfaction, rationalize the cost and
                    time relationship and bridge the gap between “Domestic requirements and international
                    practices and standards.” To provide skill enhancement to employees, generation
                    of necessary infrastructure and resources needed to support all operation process.
                    <br />
                    <br />
                    YCI continually provides Management Solution And Services in flexible manner, customer
                    oriented with reduction in operational cost by way of adopting KPI's, SLA's and
                    Kaizens to achieve the expectations of the customers. We starive continuously to
                    improve our processes based upon measureable objectives. YCI is developing and empowering
                    of our employees to do what is needed to satisfy and exceed our customers’ expectations.
                    We have warehousing and branch office facilities at prime locations. YCI provides
                    Holiday's contingencies to ensure continual operational support during abnormal
                    workdays.
                </div>
                <br />
                <br />
            </div>
        </div>

        <script type="text/javascript">
            function myFunction() 
            {
                var x = document.getElementById("myLinks");
               
                if (x.style.display === "block") 
                {
                    x.style.display = "none";
                }
              
                else 
                {
                    x.style.display = "block";
                }
                
            }
        </script>

        <div class="space_above_svg_for_boost">
        </div>
        <div class="svg_class">
            <svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 1366 320">
            <path fill="#DE0B1C" fill-opacity="1" d="M0,320L80,293.3C160,267,320,213,480,208C640,203,800,245,960,234.7C1120,224,1280,160,1360,128L1440,96L1440,320L1360,320C1280,320,1120,320,960,320C800,320,640,320,480,320C320,320,160,320,80,320L0,320Z">
            </path>
                <div class="boost">
                <div class="boost_part1">
                    <div class="boost_part1_text">
                <br />        
                To boost your supply chain
                <div class="height_5_space"></div>
                <div class="height_5_space"></div>
                > <a  href="Add_Modules/Visitor/6_Visitor_Contact.aspx" class="boost_part1_contact_link">Contact Us</a>&nbsp;
            </div>
                </div>
                <div class="boost_part2">
                <div class="w3-center w3-animate-bottom" style="width: 100%;">
                    <asp:Image ID="Image9" runat="server" ImageUrl="~/App_Themes/Image/Boost1.png" class="boost_part2_image"></asp:Image>
                    </div>
                </div>
            </div>
            </svg>
        </div>
        <div class="string">
        </div>
        <div class="footer">
            <div class="daily_services_updown_space">
            </div>
            <b style="color: #DE0B1C">C</b>opyright © <b style="color: #DE0B1C">2</b>020 <b style="color: #DE0B1C">
                Y</b>CI - <b style="color: #DE0B1C">A</b>ll <b style="color: #DE0B1C">R</b>ights
            <b style="color: #DE0B1C">R</b>eserved
            <div class="daily_services_updown_space">
            </div>
        </div>
        <div class="string">
        </div>
    </div>
    </form>
</body>
</html>
