<%@ Page Language="C#" MasterPageFile="~/Add_Modules/Visitor/VisitorMaster.master"
    AutoEventWireup="true" CodeFile="8_Visitor_SignIn.aspx.cs" Inherits="Add_Modules_Visitor_Default"
    Title="YCI SignIn Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="convenient">
        <div class="daily_services_updown_space">
        </div>
        <b style="color: #DE0B1C">Y</b>CI - <b style="color: #DE0B1C">M</b>aking <b style="color: #DE0B1C">
            L</b>ogistics <b style="color: #DE0B1C">C</b>onvenient
        <div class="daily_services_updown_space">
        </div>
    </div>
    <div>
        <br />
        <div class="signup_apply" style="margin-left: 10%; background-image: none;">
            <div>
                <h2 style="font-family: Arial Black; font-size: 14px;">
                    <u><b style="color: #DE0B1C;">Y</b><b style="color: #000000;">CI</b> | <b style="color: #DE0B1C;">
                        L</b><b style="color: #000000;">ogin</b></u></h2>
            </div>
            <div>
                <asp:Label ID="lbl_username" runat="server" Text="User Name :" Style="font-family: Arial Black;
                    color: #DE0B1C; font-size: small;"></asp:Label>
            </div>
            <div>
                <asp:TextBox ID="txt_username" runat="server" CssClass="txt_style" MaxLength="30"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                    ControlToValidate="txt_username" Style="color: #1F232F;"></asp:RequiredFieldValidator>
            </div>
            <br />
            <div>
                <asp:Label ID="lbl_pwd" runat="server" Text="Password :" Style="font-family: Arial Black;
                    color: #DE0B1C; font-size: small;"></asp:Label>
            </div>
            <div>
                <asp:TextBox ID="txt_pwd" runat="server" CssClass="txt_style" MaxLength="50" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                    ControlToValidate="txt_pwd" Style="color: #1F232F;"></asp:RequiredFieldValidator>
            </div>
            <div id="tr_admin_id" runat="server" visible="false">
                <asp:Label ID="lbl_admin_id" runat="server" Text="Admin ID :" Font-Size="Large" Font-Bold="true"></asp:Label>
                <asp:TextBox ID="txt_admin_id" runat="server" CssClass="txt_style" MaxLength="20"></asp:TextBox>
            </div>
            <div id="tr_address" runat="server" visible="false">
                <asp:Label ID="lbl_address" runat="server" Text="Address :" Font-Size="Large" Font-Bold="true"></asp:Label>
                <asp:TextBox ID="txt_address" runat="server" CssClass="txt_style"></asp:TextBox>
            </div>
            <div class="height_30_space">
            </div>
            <div>
                <asp:Button ID="btn_login" runat="server" Text="Send" OnClick="btn_login_Click" CssClass="btn_style" />
                <asp:Button ID="btn_clear" runat="server" Text="Clear" CssClass="btn_style" OnClick="btn_clear_Click" />
            </div>
            <br />
            <div align="">
                <asp:Label ID="lbl_message" runat="server" Text="" Style="font-family: Arial Black;
                    color: #DE0B1C; font-size: small;"></asp:Label>
            </div>
        </div>
        <div class="bm">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/App_Themes/Image/BM.png" Style="width: 358px;
                height: 216px;" />
        </div>
    </div>
    <div style="height: 150px;">
    </div>
</asp:Content>
