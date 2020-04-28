<%@ Page Language="C#" MasterPageFile="~/Add_Modules/Visitor/VisitorMaster.master"
    AutoEventWireup="true" CodeFile="2_Visitor_Services.aspx.cs" Inherits="Add_Modules_Visitor_Default"
    Title="YCI Services Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="service_svg">
        <svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 1366 320">
        <path fill="#DE0B1C" fill-opacity="1" d="M0,320L80,272C160,224,320,128,480,90.7C640,53,800,75,960,85.3C1120,96,1280,96,1360,96L1440,96L1440,0L1360,0C1280,0,1120,0,960,0C800,0,640,0,480,0C320,0,160,0,80,0L0,0Z">
        </path>
        
        
        </svg>
        <div class="service_svg_img">
            <div class="w3-center w3-animate-zoom" style="position: absolute; width: 650px; float: left;">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/App_Themes/Image/VAS.png" Width="90%" />
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
                &nbsp; <b style="color: #DE0B1C;">S</b>ervices
                <br />
            </div>
            <br />
            <div class="service_full_div_part2_content">
                Our service goes beyond matching the perfect type and amount of storage space you
                need at a desired location. YCI is the one-stop-shop for all your warehouse and
                fulfillment needs. Whether it’s B2B or B2C, we have the Value Added Logistics you
                require. From order picking and packaging to warehouse management, product distribution
                and returns to cross-docking
                <br />
                <%--  <br />
                <ul>
                    <li>Full Truck Loads (Trucks and Trailer Loads) . </li>
                    <li>Container Loads (Both Single and Multi Axle containers) </li>
                    <li>Bulk and ODC Loads. </li>
                    <li>Warehousing Facility. </li>
                    <li>Freight Forwarding Activities. </li>
                    <li>Import and Export Activities. </li>
                    <li>Integrated Supply Chain Activities. </li>
                    <li>Carrying and Forwarding Activities (CFA) etc. </li>
                </ul>
                <br />--%>
                <br />
                <div class="height_5_space">
                </div>
                <div class="vas_title">
                    <b style="color: #DE0B1C">V</b>alue <b style="color: #DE0B1C">A</b>dded <b style="color: #DE0B1C">
                        S</b>ervices
                </div>
                <br />
                <ul>
                    <li>Third Party Logistics (3PL) Services, Export Services, Inventory & Vendor Management</li>
                    <li>Repackaging, Redistribution, Material Insertion, Product Labeling</li>
                    <li>Order Fulfillment, Return Refurbished, Retrun Receipt, Quality Assurance Inspection</li>
                </ul>
                <br />
                <br />
                <div class="height_5_space">
                </div>
                <div class="vas_title">
                    <b style="color: #DE0B1C">2</b>4/7 <b style="color: #DE0B1C">S</b>upports
                </div>
                <br />
                <ul>
                    <li>At YCI our goal is to meet our commitments to you. Our Qualified multilingual experts
                        analyze the incident and issue a diagnosis. </li>
                    <li>We take ownership of our promise and strive each day to achieve everything we have
                        promised you and more</li>
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
                <div class="whole_for_three_top">
                    <div class="height_30_space">
                    </div>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/App_Themes/Image/Cart.png" class="whole_for_three_top_img" />
                    <asp:Image ID="Image8" runat="server" ImageUrl="~/App_Themes/Image/Cart1.png" class="hv" />
                </div>
                <div class="whole_for_three_middle" align="center">
                    <div class="height_10_space">
                    </div>
                    <div class="whole_for_three_middle_content">
                        Order Processing Pick and Pack
                    </div>
                </div>
                <div class="whole_for_three_bottom">
                    <div class="height_20_space">
                    </div>
                    <div class="whole_for_three_bottom_content">
                        Whether it’s B2B Fulfillment or B2C Fulfillment your customer orders are accurately
                        and carefully picked & packed.
                    </div>
                </div>
            </div>
            <div class="height_370_for_mobile">
            </div>
            <div class="whole_for_three_parts_2">
                <div class="whole_for_three_top">
                    <div class="height_30_space">
                    </div>
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/App_Themes/Image/Warehouse.png"
                        class="whole_for_three_top_img" />
                    <asp:Image ID="Image9" runat="server" ImageUrl="~/App_Themes/Image/Warehouse1.png"
                        class="hv" />
                </div>
                <div class="whole_for_three_middle" align="center">
                    <div class="height_10_space">
                    </div>
                    <div class="whole_for_three_middle_content">
                        Warehouse Management
                    </div>
                </div>
                <div class="whole_for_three_bottom">
                    <div class="height_20_space">
                    </div>
                    <div class="whole_for_three_bottom_content">
                        Our advanced warehousing both inventory management system gives not only logistical
                        and financial insights, but also tracks your goods and creates automatic notifications.
                    </div>
                </div>
            </div>
            <div class="height_370_for_mobile">
            </div>
            <div class="whole_for_three_parts_3">
                <div class="whole_for_three_top">
                    <div class="height_30_space">
                    </div>
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/App_Themes/Image/Product_DR.png"
                        class="whole_for_three_top_img" />
                    <asp:Image ID="Image10" runat="server" ImageUrl="~/App_Themes/Image/Product_DR1.png"
                        class="hv" />
                </div>
                <div class="whole_for_three_middle" align="center">
                    <div class="height_10_space">
                    </div>
                    <div class="whole_for_three_middle_content">
                        Product Distribution & Returns
                    </div>
                </div>
                <div class="whole_for_three_bottom">
                    <div class="height_20_space">
                    </div>
                    <div class="whole_for_three_bottom_content">
                        Your business into transport networks that are suitable for your delivery requirements
                        and returns. Without a doubt.
                    </div>
                </div>
            </div>
            <div class="height_20_for_mobile">
            </div>
        </div>
        <div class="height_30_space">
        </div>
        <div class="whole_for_three_parts">
            <div class="whole_for_three_parts_1">
                <div class="whole_for_three_top">
                    <div class="height_30_space">
                    </div>
                    <asp:Image ID="Image5" runat="server" ImageUrl="~/App_Themes/Image/display_labeling.png"
                        class="whole_for_three_top_img" />
                    <asp:Image ID="Image11" runat="server" ImageUrl="~/App_Themes/Image/display_labeling1.png"
                        class="hv" />
                </div>
                <div class="whole_for_three_middle" align="center">
                    <div class="height_10_space">
                    </div>
                    <div class="whole_for_three_middle_content">
                        Display, Labeling & Kitting
                    </div>
                </div>
                <div class="whole_for_three_bottom">
                    <div class="height_20_space">
                    </div>
                    <div class="whole_for_three_bottom_content">
                        Value Added Services that go beyond the basic warehouse and just the standard logistics
                        services. After all, the consumer deserves the best service.
                    </div>
                </div>
            </div>
            <div class="height_370_for_mobile">
            </div>
            <div class="whole_for_three_parts_2">
                <div class="whole_for_three_top">
                    <div class="height_30_space">
                    </div>
                    <asp:Image ID="Image6" runat="server" ImageUrl="~/App_Themes/Image/Quality_Inspection.png"
                        class="whole_for_three_top_img" />
                    <asp:Image ID="Image12" runat="server" ImageUrl="~/App_Themes/Image/Quality_Inspection1.png"
                        class="hv" />
                </div>
                <div class="whole_for_three_middle" align="center">
                    <div class="height_10_space">
                    </div>
                    <div class="whole_for_three_middle_content">
                        Final Assembly & Quality Inspection
                    </div>
                </div>
                <div class="whole_for_three_bottom">
                    <div class="height_20_space">
                    </div>
                    <div class="whole_for_three_bottom_content">
                        This service enables your eCommerce business to reduce logistics costs, shorter
                        lead times and better quality at the same time.
                    </div>
                </div>
            </div>
            <div class="height_370_for_mobile">
            </div>
            <div class="whole_for_three_parts_3">
                <div class="whole_for_three_top">
                    <div class="height_30_space">
                    </div>
                    <asp:Image ID="Image7" runat="server" ImageUrl="~/App_Themes/Image/customer_service.png"
                        class="whole_for_three_top_img" />
                    <asp:Image ID="Image13" runat="server" ImageUrl="~/App_Themes/Image/customer_service1.png"
                        class="hv" />
                </div>
                <div class="whole_for_three_middle" align="center">
                    <div class="height_10_space">
                    </div>
                    <div class="whole_for_three_middle_content">
                        Customer Services Support
                    </div>
                </div>
                <div class="whole_for_three_bottom">
                    <div class="height_20_space">
                    </div>
                    <div class="whole_for_three_bottom_content">
                        If your business is based in a different area or time zone, it is unquestionably
                        hard to guarantee the right quality. Particularly in your distribution. But, you
                        don't have to do it on your own.
                    </div>
                </div>
            </div>
            <div class="height_20_for_mobile">
            </div>
        </div>
    </div>
</asp:Content>
