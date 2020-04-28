<%@ Page Language="C#" MasterPageFile="~/Add_Modules/Visitor/VisitorMaster.master"
    AutoEventWireup="true" CodeFile="11_Visitor_More_4_Gallary.aspx.cs" Inherits="Add_Modules_Visitor_Default"
    Title="YCI Gallary Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="convenient">
        <div class="daily_services_updown_space">
        </div>
        <b style="color: #DE0B1C">Y</b>CI - <b style="color: #DE0B1C">M</b>aking <b style="color: #DE0B1C">
            L</b>ogistics <b style="color: #DE0B1C">C</b>onvenient
        <div class="daily_services_updown_space">
        </div>
    </div>
    <div align="center">
        <h2 style="font-family: Arial Black; font-size: 14px;">
            <u><b style="color: #DE0B1C;">Y</b><b style="color: #000000;">CI </b><b style="color: #DE0B1C;">
                    G</b><b style="color: #000000;">allery</b></u></h2>
    </div>
    <br />
    <div style="height: auto;">
        <asp:ListView ID="ListView_Product" runat="server" DataKeyNames="YCI_GALLERY_ID">
            <ItemTemplate>
                <div style="width: 100%;">
                    <div id="main" runat="server" class="listview_design">
                        <div id="Div1" runat="server">
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"~/uploaded_data/"+Eval("YCI_GALLERY_UPLOAD")%>'
                                Target="_blank">
                                <asp:Image ID="img_book" runat="server" ImageUrl='<%#"~/uploaded_data/"+Eval("YCI_GALLERY_UPLOAD")%>'
                                    Width="300" Height="180" />
                            </asp:HyperLink>
                        </div>
                        
                        <div id="Div2" runat="server">
                            <asp:Label ID="Label5" runat="server" Text="Details :"></asp:Label>
                            <%#Eval("YCI_GALLERY_DETAILS")%>
                        </div>
                       <div class="height_30_space"></div>
                    </div>
                </div>
            </ItemTemplate>
            <LayoutTemplate>
                <div runat="server" id="itemPlaceholder">
                </div>
            </LayoutTemplate>
        </asp:ListView>
    </div>
    <br />
    <div style="height: 180px;">
    </div>
</asp:Content>