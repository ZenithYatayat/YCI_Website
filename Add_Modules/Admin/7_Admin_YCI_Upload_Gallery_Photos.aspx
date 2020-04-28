<%@ Page Language="C#" MasterPageFile="~/Add_Modules/Admin/AdminMaster.master" AutoEventWireup="true"
    CodeFile="7_Admin_YCI_Upload_Gallery_Photos.aspx.cs" Inherits="Add_Modules_Admin_Default2"
    Title="YCI Upload Gallery Photos Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="convenient">
        <div class="daily_services_updown_space">
        </div>
        <b style="color: #DE0B1C">Y</b>CI - <b style="color: #DE0B1C">M</b>aking <b style="color: #DE0B1C">
            L</b>ogistics <b style="color: #DE0B1C">C</b>onvenient
        <div class="daily_services_updown_space">
        </div>
    </div>
    <div class="signup_apply" style="margin-left: 10%; background-image: none;">
        <div>
            <h2 style="font-family: Arial Black; font-size: 14px;">
                <u><b style="color: #DE0B1C;">U</b><b style="color: #000000;">pload</b> | <b style="color: #DE0B1C;">
                    P</b><b style="color: #000000;">hoto</b></u></h2>
        </div>
        <br />
        <div id="Tr1" runat="server" visible="false">
            <asp:Label ID="lbl_product_id" runat="server" Text="Product ID"></asp:Label>
            <asp:TextBox ID="txt_product_id" runat="server" CssClass="txt_style"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lbl_product_upload" runat="server" Text="Product Image (Upload):"></asp:Label>
        </div>
        <br />
        <div>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </div>
        <br />
        <div>
            <asp:Label ID="lbl_product_detail" runat="server" Text="Product Detail :"></asp:Label>
        </div>
        <div>
            <asp:TextBox ID="txt_product_detail" runat="server" CssClass="txt_style" TextMode="MultiLine"
                Height="70" Width="192" MaxLength="100"></asp:TextBox>
            <asp:RequiredFieldValidator ID="Req_product_detail" runat="server" ErrorMessage="*"
                ValidationGroup="product_detail" ControlToValidate="txt_product_detail" Font-Bold="True"
                Style="color: #1F232F;"></asp:RequiredFieldValidator>
        </div>
        <br />
        <div>
            <asp:Button ID="btn_product_detail" runat="server" Text="Send" ValidationGroup="product_detail"
                CssClass="btn_style" OnClick="btn_product_detail_Click" />
            <asp:Button ID="btn_clear" runat="server" Text="Clear" CssClass="btn_style" OnClick="btn_clear_Click" />
            <asp:Button ID="btn_list" runat="server" Text="List" CssClass="btn_style" OnClick="btn_list_Click" />
        </div>
        <div>
            <asp:Label ID="lbl_message" runat="server" Text="" Font-Size="Large" Font-Bold="true"></asp:Label>
        </div>
    </div>
    <div style="margin-left:30%; margin-top:-17%;">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/App_Themes/Image/YCI_Texture_RGB.png"
            Width="50%" />
    </div>
    <div style="height: 180px;">
    </div>
</asp:Content>
